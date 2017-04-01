#! /usr/bin/env python3
import pyphen
import sys
import re
import os
from threading import Lock
from os import path
from .SongRecord import SongRecord

class LilyPondRenderer:

    def __init__(self):
        pass

    def Initialize(self):
        # Make sure the cache and work folders are there
        os.makedirs(self.workdir, exist_ok=True)
        os.makedirs(self.cachedir, exist_ok=True)
        self._pyphens = {}
        self._lock = Lock()

    def RenderToCache(self, song):
        try:
            # Replace the configurable items and call the LilyPond rendering command to render the files.
            verse = song.verse
            if verse.startswith('V'):
                verse = verse[1:]
            elif verse.startswith('C'):
                verse = 'Refrein'
            
            # Optionally auto-hyphenate the lyrics. Disable auto-hyphen if already hyphened.
            hyphenlanguage = self.autohyphen or song.hyphen
            if hyphenlanguage and song.lyrics.find(' -- ') < 0:
                lyrics = self.HyphenLyrics(song.lyrics, hyphenlanguage)
            else:
                lyrics = song.lyrics

            # Create a lilypond file by replacing the special items in the template.
            template = self.template
            for source, destenation in [
                ("$(osrtitle)", song.title), ("$(osrcopyright)" , song.copyright), ("$(osrauthor)", song.composer),
                ("$(osrnotes)", song.notes), ("$(osrverse)",      verse),          ("$(osrlyrics)", lyrics)
            ]:
                template = template.replace(source, destenation)
            lilypondfile = path.join(self.workdir, song.md5 + ".ly")
            with open(lilypondfile, 'w') as file:
                file.write(template)

            # Run LilyPond to render the pages.
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
                    # remove the original filename + the .png extension and the optional '-page' part.
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

            # Done. Mark the song as being available.
            song.status = SongRecord.STATUS_AVAILABLE
            return True

        except Exception as ex:
            print("LilyPond rendering failed:", ex, file=sys.stderr)
            return False

    def LoadHyphen(self, language):
        ''' Load a hyphen language or file. Since the same renderer is used by multiple threads
            and we don't want to load a renderer dictionary for every thread, we must protect the loading.  '''
        with self._lock:
            mypyphen = self._pyphens.get(language)
            if not mypyphen:
                if language in pyphen.LANGUAGES:
                    mypyphen = pyphen.Pyphen(lang=language)
                else:
                    mypyphen = pyphen.Pyphen(file=language)
                self._pyphens[language] = mypyphen
        return mypyphen

    def _hyphenwords(self, words, language):
        ''' This hyphens a collection of words. It could be the 'single' statement on method below, but
            I needed one special case: When the custom hyphen ends with '_' (underscore), it must
            be joined with the next word, so we remove the next delimiter.
            Oh, and casing for a custom hyphenation became a second special case...'''
        mypyphen = self.LoadHyphen(language)
        removenext = False
        for word in words:
            if word.isalpha():
                custom = self.customhyphen.get(word.lower())
                if custom:
                    removenext = custom.endswith('_')
                    if word[0].isupper():   # Simple first-letter-case support. Needs to be extended.
                        custom = custom[0].upper() + custom[1:]
                    yield custom
                else:
                    yield mypyphen.inserted(word, hyphen=' -- ')
            else:
                if removenext:
                    removenext = False
                else:
                    yield word

    def HyphenLyrics(self, lyrics, language):
        # return ''.join([self.customhyphen.get(word) or self.defaultpyphen.inserted(word, hyphen=' -- ') if word.isalpha() 
        #                 else word for word in re.findall(r'[^\w]+|\w+', lyrics)])
        return ''.join(self._hyphenwords(re.findall(r'[^\w]+|\w+', lyrics), language))
