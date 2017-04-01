#! /usr/bin/env python3

# Application environment
import pyphen
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
import re

# Some global configuration data
myappname='LilyPondRenderer'
myappauthor='OpenSong'

# We have a global renderer and song manager.
renderer = LilyPondRenderer()        
manager = None

class LilyPondRenderServer(ExternalRenderer):

    defaultport = 8083
    defaulthost = 'localhost'
    defaultcommand = 'cd "{workdir}" ; lilypond -ddelete-intermediate-files --png -dresolution=400 "{lilypondfile}"'

    def __init__(self, socket):
        ExternalRenderer.__init__(self, socket)
        self.idreplacements = {}
        self.sheetcount = 0

    def _GenerateSongSheets(self, slidesnode, songpath, name, lyrics, versestorender):
        ''' Adds slides to the 'slidenodes' collection for every verse in 'versestorender'. '''
        verses = {}
        customhyphen = None

        # Split the lyrics in verses (notes verses and lyric verses)
        lines = lyrics.splitlines()
        verseid = ''
        for line in lines:
            if line.startswith(';!hyphen '):                    # This song has it's own hyphen language
                customhyphen = line[9:]
            elif line.startswith('[') and line.find(']') > 0:   # Start of a new verse
                verseid = line[1:line.find(']')]
                verses[verseid] = ''
            elif verseid and line.startswith(' ') and not line.startswith(' ||'):
                    verses[verseid] = verses[verseid] + line + '\n'

        # Create the songs and song sheets for each selected verse.
        for verseid in versestorender:
            if verseid in verses:
                # Lookup a notes verse to this lyric verse and create a song record for verse.
                notes = verses.get('N' + verseid) or verses.get('N') or ''
                song = SongRecord(songpath, name, name, verseid, notes, verses[verseid])
                song.hyphen = customhyphen
                available, song = manager.GetOrSchedule(song)
                if available:
                    # Song already rendered, create slides for each image. In this case, the
                    # 'externalrenderid' points directly to the file.
                    index = 1
                    for filename in song.files:
                        songslide = ET.SubElement(slidesnode, 'slide', {'id':verseid, 'PresentationIndex':str(index), 
                            'externalrenderid':'file:' + path.join(renderer.cachedir, song.osfolder, filename) })
                        ET.SubElement(songslide, 'body')
                        index += 1
                else:
                    # Not rendered yet: create a stub-slide. In this case, the 'externalrenderid' contains
                    # a reference to the song, so we can look it up when we need to present the verse.
                    # The song will be rendered in the background (scheduled by 'manager.GetOrSchedule(song)')
                    songslide = ET.SubElement(slidesnode, 'slide', {'id':verseid, 'PresentationIndex':'1',
                        'externalrenderid':'song{0}:{1}'.format(self.sheetcount, song.md5) })
                    ET.SubElement(songslide, 'body')
                    self.sheetcount += 1
                    
    def DoPrepare(self, width, height, xmltext):
        ''' This is a call from OpenSong to prepare ourself when the presentation starts.
            We get the full presentation (xmltext) and the size in pixels of the screen to render
            on. In this case, we ignore the size because our template should already match this size.
            You can return any size image: OpenSong will scale it to fit the screen. But an exact
            match will give the best result.
            We see which songs contain notes and replace the slides in that group with our own and
            mark them for the external renderer (= add an 'externalrenderid').
        '''
        # Handy when debugging / building:
        # with open('presentation-opensong.xml', 'w') as presentationfile:
        #     print(xmltext, file=presentationfile)

        # Analyse the presentation, see which sheets we want to render and replace / mark these.
        tree = ET.XML(xmltext)  # From xml text to a nice tree.
        for slidegroup in tree.iterfind('slide_groups/slide_group[@type="song"]'):
            # We try to find the relative path of the song to mimic the same structure in the cache.
            songpath = ''
            pathnode = slidegroup.find('path')
            if pathnode is not None:
                songpath = pathnode.text or ''
                if songpath == '/' or songpath == '\\':
                    songpath = ''
            lyricsnode = slidegroup.find('lyrics')
            if lyricsnode is not None:
                lyrics = lyricsnode.text or ''
                if re.search(r'^\[N', lyrics, re.MULTILINE):    # Do we have notes in this song?
                    slidesnode = slidegroup.find('slides')
                    if slidesnode is not None:
                        # Get a list of all verses we need to present for this song.
                        verses = []
                        lastpresentationindex = None
                        for slide in slidesnode.iter():
                            presentationindex = slide.get('PresentationIndex')  # Each presentation index is one selected verse.
                            verse = slide.get('id')
                            if presentationindex != lastpresentationindex and verse:
                                verses.append(verse)
                                lastpresentationindex = presentationindex
                        # Throw away al existing sheets for the song and generate our own.
                        slidesnode.clear()
                        self._GenerateSongSheets(slidesnode, songpath, slidegroup.get('name',''), lyrics, verses)

        # Return the modified xml tree as xml text.
        return ET.tostring(tree, 'UTF-8')

    def DoRender(self, xmltext):
        ''' This is a call from OpenSong to render this specific sheet. The sheet is in the 'xmltext'. '''

        # The defaults of what we're going to return.
        command = self.CMD_RENDER_RESULT_XML
        extrasheets = b''
        imagefile = ''

        # Turn the xml into a nice tree and see what we've got...
        slide = ET.XML(xmltext)
        if slide is not None and slide.tag == 'slide':
            renderid = slide.get('externalrenderid', '')
            verseid = slide.get('id', '')
            renderid = self.idreplacements.get(renderid, renderid)  # See furtheron in this method...
            # When the renderid starts with 'song', it was not available when the presentation started. Get it now.
            if renderid.startswith('song'):
                available, song = manager.GetOrRender(SongRecord(songid=renderid.split(':')[1]))
                if available:
                    extraslidesnode = ET.Element('slides')
                    index = 1
                    for filename in song.files:
                        fullname = path.join(renderer.cachedir, song.osfolder, filename)
                        if index == 1:
                            # We cannot change the externalrenderid field to 'file' because we return an image and
                            # not the XML. We keep an internal list of replacements, in case we need to render
                            # this sheet again. See above.
                            self.idreplacements[renderid] = 'file:' + fullname
                            imagefile = fullname # Return the first image.
                        else:
                            # We need more than one slide for the song. We couldn't know when the presentation
                            # was prepared. We use the option to return some extra slides to OpenSong and return
                            # the same slides we would have created during preparation.
                            songslide = ET.SubElement(extraslidesnode, 'slide', {'id':verseid, 'PresentationIndex':str(index), 
                                'externalrenderid':'file:' + fullname })
                            ET.SubElement(songslide, 'body')
                        index += 1
                    extrasheets = ET.tostring(extraslidesnode, 'UTF-8')
                # else PANIC! Somehow the renderer was not able to provide us with the song. We'll just
                # return an empty sheet (or add a creative '404' page here :-) )
            
            # For ids starting with 'file', we already had it when starting the presentation
            # and can immediately load and return the file.
            elif renderid.startswith('file:'):
                imagefile = renderid[5:]

        # Normally, we should have an image file here for this renderer. Alternatively, we could have
        # modified the xml (which is not done in this renderer) and return the modified xml.
        # For this renderer, when we failed, we just return the xml (=sheet) we got.
        if imagefile:
            command = self.CMD_RENDER_RESULT_IMG
            with  open(imagefile, "rb") as file:
                result = file.read()
        else:
            result = xmltext.encode()
        return command, result, extrasheets

def DefaultCacheDir():
    ''' OS dependent cache folder to store the rendered songs. '''
    return appdirs.user_cache_dir(appname=myappname, appauthor=myappauthor)

def DefaultWorkDir():
    ''' OS dependent cache folder to store the temporary LilyPond files. '''
    return path.join(DefaultCacheDir(), 'workdir')

def DefaultThreadCount():
    ''' The default amount of threads to use for background rendering. We leave one for OpenSong. '''
    defaultthreadcount = multiprocessing.cpu_count() - 1
    if defaultthreadcount < 1:
        defaultthreadcount = 1
    return defaultthreadcount

def LoadTemplate(templatefile):
    ''' Pre-load the LilyPond template file. If there is no template file with that name yet,
        create one with some handy default content.
    '''
    if not path.isfile(templatefile):
        template = r"""\version "2.16.0"

% With 300 dpi, this will result in a 1920 x 1080 = Full HD image.
%#(set! paper-alist (cons '("Full-HD" . (cons (* 6.4 in) (* 3.6 in))) paper-alist))
%\paper { #(set-paper-size "Full-HD") print-page-number = ##f }

% With 400 dpi, this will result in a 1920 x 1080 = Full HD image with bigger scores.
% = 400dpi * 4.8" x 400dpi * 2.7" = 1920 x 1080
#(set! paper-alist (cons '("Full-HD" . (cons (* 4.8 in) (* 2.7 in))) paper-alist))
\paper { #(set-paper-size "Full-HD") print-page-number = ##f }

\header {
  title = \markup \fontsize #-3 "$(osrtitle): $(osrverse)"
  copyright = "$(osrcopyright)"
  composer = "$(osrauthor)"
  tagline = ""
}

\score 
{
  <<
    \new Staff \new Voice = "verse" 
    $(osrnotes)
    \new Lyrics \lyricsto "verse" 
    \lyricmode 
    { 
      $(osrlyrics)
    } 
  >> 
}
"""
        os.makedirs(path.dirname(templatefile), exist_ok=True)
        with open(templatefile, "w") as tfile:
            tfile.write(template)
    else:
        with open(templatefile) as file:
            template = file.read()
    return template

def ListAutoHyphenLanguages():
    for language in pyphen.LANGUAGES:
        print(language)

def LoadCustomHyphen(customhyphen):
    hyphens = {}
    if customhyphen:
        with open(customhyphen) as file:
            for line in file.read().splitlines():
                parts = line.split(maxsplit=1)
                if len(parts) >= 2:
                    hyphens[parts[0]] = parts[1]
    return hyphens

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
    defaulttemplate = path.join(appdirs.user_config_dir(appname=myappname, appauthor=myappauthor), 'Template.ly')

    parser = argparse.ArgumentParser(formatter_class=argparse.ArgumentDefaultsHelpFormatter,
        description='External renderer for OpenSong using LilyPond to render songs with notes.')
    parser.add_argument('-p', '--port', type=int, default=LilyPondRenderServer.defaultport, help='The port to use to listen to for OpenSong render commands')
    parser.add_argument('--host', default=LilyPondRenderServer.defaulthost, help='The host to use when listening')
    parser.add_argument('-t', '--lilypondtemplate', default=defaulttemplate, 
        help='The LilyPond template file used to create a .ly file for rendering with LilyPond. '
        'Available substitutes within the file are: $(osrtitle), $(osrcopyright), $(osrauthor), $(osrnotes), $(osrverse), $(osrlyrics)')
    parser.add_argument('-c', '--lilypondcommand', default=LilyPondRenderServer.defaultcommand, 
        help='The lilypond shell command to execute for rendering. Use {workdir} and {lilypondfile} to be substituted with the respective values.')
    parser.add_argument('-w', '--workdir', default=DefaultWorkDir(), help='Folder used as temporary work directory for LilyPond')
    parser.add_argument('-s', '--cachedir', default=DefaultCacheDir(), help='Folder used as cache to store the generated images')
    parser.add_argument('--keeply', action='store_true', default=False, help='Do not delete the .ly files from the workdir')
    parser.add_argument('--threads', type=int, default=DefaultThreadCount(), help='The amount or parallel worker threads for rendering.')
    parser.add_argument('--autohyphen', help='Specify the language to use to automatically hyphenate the songs.')
    parser.add_argument('--customhyphen', help='A file with words with customized hyphenations per line. E.g.: overvloed o-ver-vloed')
    parser.add_argument('--autohyphenlanguages', action='store_true', default=False, help='Do not start the server but give a list of available languages for autohyphen')
    args = parser.parse_args()

    if args.autohyphenlanguages:
        ListAutoHyphenLanguages()
    else:
        # The global ones!
        global renderer
        global manager
        renderer.keeplyfile     = args.keeply
        renderer.template       = LoadTemplate(args.lilypondtemplate)
        renderer.rendercommand  = args.lilypondcommand
        renderer.workdir        = args.workdir
        renderer.cachedir       = args.cachedir
        renderer.autohyphen     = args.autohyphen
        renderer.customhyphen   = LoadCustomHyphen(args.customhyphen)
        renderer.Initialize()
        manager = SongManager(renderer, args.threads)

        # Create the server
        server = socketserver.TCPServer((args.host, args.port), LilyPondRendererHandler)

        # Activate the server; this will keep running until you
        # interrupt the program with Ctrl-C
        server.serve_forever()

if __name__ == "__main__":
    runserver()