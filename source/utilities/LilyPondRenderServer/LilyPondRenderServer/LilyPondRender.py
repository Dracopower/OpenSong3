#! /usr/bin/env python3
import sys
import os
from os import path
from .SongRecord import SongRecord

class LilyPondRenderer:

    def __init__(self):
        # self.keeplyfile = False
        # self.workdir = "/home/patrick/Dropbox/Python/OSLilyPondRenderServer/workdir"
        # self.cachedir = "/home/patrick/Dropbox/Python/OSLilyPondRenderServer/cache"
        # self.templatefile = "/home/patrick/Dropbox/Python/OSLilyPondRenderServer/Template.ly"
        # self.rendercommand = './renderlilypond "{workdir}" "{lilypondfile}"'
        pass

    def RenderToCache(self, song):
        try:
            # Load the template file, replace the configurable items and call the
            # LilyPond rendering command to render the files.
            verse = song.verse
            if verse.startswith('V'):
                verse = verse[1:] + '.'
            elif verse == 'C':
                verse = 'Refrein:'
            with open(self.templatefile) as file:
                template = file.read()
            for source, destenation in [
                ("$(osrtitle)", song.title), ("$(osrcopyright)" , song.copyright), ("$(osrauthor)", song.composer),
                ("$(osrnotes)", song.notes), ("$(osrverse)",      verse),          ("$(osrlyrics)", song.lyrics)
            ]:
                template = template.replace(source, destenation)
            lilypondfile = path.join(self.workdir, song.md5 + ".ly")
            with open(lilypondfile, 'w') as file:
                template = file.write(template)
            command = self.rendercommand.replace("{lilypondfile}", lilypondfile)
            command = command.replace("{workdir}", self.workdir)
            result = os.system(command)
            if not self.keeplyfile:
                os.remove(lilypondfile)
            if result != 0:
                print("LilyPond rendering command failed:", command, file=sys.stderr)
                return False

            # The rendering succeeded. Now pickup the files and rename and move them to desired name / location
            filenames = {}
            songfolder = song.GetSongFolder(self.cachedir)
            for pngfile in os.listdir(self.workdir):
                if pngfile.startswith(song.md5) and pngfile.endswith(".png"):
                    # remove the original file name + the .png extension and the optional '-page' part.
                    basename = pngfile[len(song.md5):-4]
                    if basename.startswith("-page"):
                        basename = basename[5:]
                    if len(basename) > 0:
                        filenames[int(basename)] = pngfile
                    else:
                        filenames[1] = pngfile
            for index in sorted(filenames.keys()):
                filename = filenames[index]
                newname = song.MakeFileName(index)
                os.rename( path.join(self.workdir, filename), path.join(songfolder, newname) )
                song.files.append(newname)

            song.status = SongRecord.STATUS_AVAILABLE
            return True

        except Exception as ex:
            print("LilyPond rendering failed:", ex, file=sys.stderr)
            return False
