#! /usr/bin/env python3

# Application environment
import appdirs
import argparse
 
# Song render
from .LilyPondRender import LilyPondRenderer
from .SongManager import SongManager
from .SongRecord import SongRecord
from .RenderServer import ExternalRenderer

# Misc
import multiprocessing
import socketserver
import xml.etree.ElementTree as ET
from os import path
import os

# We have a global renderer and song manager.
renderer = LilyPondRenderer()        
manager = None

class LilyPondRenderServer(ExternalRenderer):

    def __init__(self, socket):
        ExternalRenderer.__init__(self, socket)
        self.idreplacements = {}
        self.sheetcount = 0

    def GenerateSongSheets(self, slidesnode, songpath, name, lyrics, versestorender):
        verses = {}
        lines = lyrics.splitlines()
        verseid = ''
        for line in lines:
            if line.startswith('[') and line.find(']') > 0:
                verseid = line[1:line.find(']')]
                verses[verseid] = ''
            else:
                if verseid:
                    verses[verseid] = verses[verseid] + line + '\n'
        notes = ''
        if 'N' in verses:
            notes = verses['N']
        for verseid in versestorender:
            if verseid in verses:
                song = SongRecord(songpath, name, name, verseid, notes, verses[verseid])
                available, song = manager.GetOrSchedule(song)
                if available:
                    index = 1
                    for filename in song.files:
                        fullname = path.join(renderer.cachedir, song.osfolder, filename)
                        songslide = ET.SubElement(slidesnode, 'slide', {'id':verseid, 'PresentationIndex':str(index), 
                            'externalrenderid':'file:' + fullname })
                        ET.SubElement(songslide, 'body')
                        index += 1
                else:
                    songslide = ET.SubElement(slidesnode, 'slide', {'id':verseid, 'PresentationIndex':'1',
                        'externalrenderid':'song{0}:{1}'.format(self.sheetcount, song.md5) })
                    ET.SubElement(songslide, 'body')
                    self.sheetcount += 1
                    
    def DoPrepare(self, width, height, xmltext):
        # with open('presentation-opensong.xml', 'w') as presentationfile:
        #     print(xmltext, file=presentationfile)
        # print('------------ Prepare --------------')
        # print(self.width, 'x', self.height)
        # print(xmltext)
        # print('-----------------------------------')

        # Modify sheets and see which sheets we want to render and mark these.
        tree = ET.XML(xmltext)
        for slidegroup in tree.iterfind('slide_groups/slide_group[@type="song"]'):
            songpath = ''
            pathnode = slidegroup.find('path')
            if pathnode is not None:
                songpath = pathnode.text or ''
                if songpath == '/' or songpath == '\\':
                    songpath = ''
            lyricsnode = slidegroup.find('lyrics')
            if lyricsnode is not None:
                lyrics = lyricsnode.text
                # Skip the test if the [N is at the start of a line for now...
                if lyrics and lyrics.find('[N') >= 0:
                    slidesnode = slidegroup.find('slides')
                    if slidesnode is not None:
                        verses = []
                        lastverse = ''
                        for slide in slidesnode.iter():
                            verse = slide.get('id', '')
                            if lastverse != verse:
                                verses.append(verse)
                        slidesnode.clear()
                        self.GenerateSongSheets(slidesnode, songpath, slidegroup.get('name',''), lyrics, verses)

        return ET.tostring(tree, 'UTF-8')

    def DoRender(self, xmltext):

        # The defaults of what we're going to return.
        command = self.CMD_RENDER_RESULT_XML
        extrasheets = b''
        imagefile = ''

        # Get the song images.
        slide = ET.XML(xmltext)
        if slide is not None and slide.tag == 'slide':
            renderid = slide.get('externalrenderid', '')
            verseid = slide.get('id', '')
            renderid = self.idreplacements.get(renderid, renderid)
            # When 'song', it was not available when the presentation started. So we might have
            # to extend the amount of sheets needed an even still have to render...
            if renderid.startswith('song'):
                available, song = manager.GetOrRender(SongRecord(songid=renderid.split(':')[1]))
                if available:
                    slidesnode = ET.Element('slides')
                    index = 1
                    for filename in song.files:
                        fullname = path.join(renderer.cachedir, song.osfolder, filename)
                        if index == 1:
                            # Since we cannot change the externalrenderid field because we return an image and
                            # not the XML, we keep an internal list of replacements.
                            self.idreplacements[renderid] = 'file:' + fullname
                            imagefile = fullname
                        else:
                            songslide = ET.SubElement(slidesnode, 'slide', {'id':verseid, 'PresentationIndex':str(index), 
                                'externalrenderid':'file:' + fullname })
                            ET.SubElement(songslide, 'body')
                        index += 1
                    extrasheets = ET.tostring(slidesnode, 'UTF-8')
                # else PANIC!
            # For 'file', we already had it when starting the presentation and can immediately
            # load and return the file.
            if renderid.startswith('file:'):
                imagefile = renderid[5:]

        if imagefile:
            command = self.CMD_RENDER_RESULT_IMG
            with  open(imagefile, "rb") as file:
                result = file.read()
        else:
            result = xmltext.encode()
        return command, result, extrasheets

class LilyPondRendererHandler(socketserver.BaseRequestHandler):
    """
    The RequestHandler class for our server.

    It is instantiated once per connection to the server, and must
    override the handle() method to implement communication to the
    client.
    """

    def handle(self):
        print("I: Session started")
        renderer = LilyPondRenderServer(self.request)
        # fork here!
        renderer.Process()
        print("I: Session ended")

def runserver():
    cachedir = appdirs.user_cache_dir(appname='OpenSongLilyPondRenderer', appauthor='OpenSong')
    defaultcachedir = path.join(cachedir, 'cache')
    defaultworkdir = path.join(cachedir, 'workdir')
    defaultthreadcount = multiprocessing.cpu_count() - 1
    if defaultthreadcount < 1:
        defaultthreadcount = 1

    parser = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter,
        description='External renderer for OpenSong using LilyPond to render songs with notes.')
    parser.add_argument('-p', '--port', type=int, default=8083, help='The port to use to listen to for OpenSong render commands')
    parser.add_argument('--host', default='localhost', help='The host to use when listening')
    parser.add_argument('-t', '--lilypondtemplate', default='Template.ly', 
        help='The LilyPond template file used to create a .ly file for rendering with LilyPond. '
        'Available substitutes within the file are: $(osrtitle), $(osrcopyright), $(osrauthor), $(osrnotes), $(osrverse), $(osrlyrics)')
    parser.add_argument('-c', '--lilypondcommand', default='cd "{workdir}" ; lilypond -ddelete-intermediate-files $include --png -dresolution=400 "{lilypondfile}"', 
        help='The lilypond shell command to execute for rendering. Use {workdir} and {lilypondfile} to be substituted with the respective values.')
    parser.add_argument('-w', '--workdir', default=defaultworkdir, help='Folder used as temporary work directory for LilyPond')
    parser.add_argument('-s', '--cachedir', default=defaultcachedir, help='Folder used as cache to store the generated images')
    parser.add_argument('--keeply', action='store_true', default=False, help='Do not delete the .ly files from the workdir')
    parser.add_argument('--threads', type=int, default=defaultthreadcount, help='The amount or parallel worker threads for rendering.')
    args = parser.parse_args()

    # Make sure the cache and work folders are there
    os.makedirs(args.workdir, exist_ok=True)
    os.makedirs(args.cachedir, exist_ok=True)

    # The global ones!
    global renderer
    global manager
    renderer.keeplyfile = args.keeply
    renderer.templatefile = args.lilypondtemplate
    renderer.rendercommand = args.lilypondcommand
    renderer.workdir = args.workdir
    renderer.cachedir = args.cachedir
    manager = SongManager(renderer, args.threads)

    # Create the server
    server = socketserver.TCPServer((args.host, args.port), LilyPondRendererHandler)

    # Activate the server; this will keep running until you
    # interrupt the program with Ctrl-C
    server.serve_forever()

if __name__ == "__main__":
    runserver()