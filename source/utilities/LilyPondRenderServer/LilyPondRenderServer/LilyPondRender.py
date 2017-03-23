#! /usr/bin/env python3
import sys
import os
from os import path
from .SongRecord import SongRecord

class LilyPondRenderer:

    def __init__(self):
        pass

    def Initialize(self):
        # Make sure the cache and work folders are there
        os.makedirs(self.workdir, exist_ok=True)
        os.makedirs(self.cachedir, exist_ok=True)
        if not path.isfile(self.templatefile):
            os.makedirs(path.dirname(self.templatefile), exist_ok=True)
            with open(self.templatefile, "w") as tfile:
                tfile.write(r"""\version "2.16.0"

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
""")

    def RenderToCache(self, song):
        try:
            # Load the template file, replace the configurable items and call the
            # LilyPond rendering command to render the files.
            verse = song.verse
            if verse.startswith('V'):
                verse = verse[1:]
            elif verse.startswith('C'):
                verse = 'Refrein'
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
