#! /usr/bin/env python3
import pyphen
import sys
import re
import os
from string import Template
from threading import Lock
from os import path
from .SongRecord import SongRecord

class HyphenSet:

    def __init__(self, language, customfolder):
        self.language = language
        self.customhyphens = {}
        self.custommtime = None
        self.hyphenator = None

        try:        
            if language in pyphen.LANGUAGES:
                self.hyphenator = pyphen.Pyphen(lang=language)
                self.customfile = path.join(customfolder, "custom-hyphen-" + language + ".txt")
            else:
                self.hyphenator = pyphen.Pyphen(file=language)
                pathpart, extension = path.splitext(language)
                self.customfile = path.join(pathpart, "-custom" + extension)
            if path.isfile(self.customfile):
                self.LoadCustomHyphen()
            else:
                print("Custom hyphens not found:", self.customfile)
        except Exception as ex:
            print("Failed initializing hyphenation for", language, ":", ex)

    def LoadCustomHyphen(self):
        try:
            self.customhyphens = {}
            self.custommtime = os.stat(self.customfile).st_mtime
            with open(self.customfile) as file:
                for line in file.read().splitlines():
                    # Can be commented with a ;
                    if not line.startswith(";"):
                        parts = line.split(maxsplit=1)
                        if len(parts) >= 2:
                            self.customhyphens[parts[0]] = parts[1]
            print("Loaded custom hyphens:", self.customfile)
        except Exception as ex:
            print("Failed loading custom hyphens", self.customfile, ":", ex)

    def UpdateCustomHyphen(self):
        if self.custommtime:
            newmtime = os.stat(self.customfile).st_mtime
            if newmtime != self.custommtime:
                self.custommtime = newmtime
                self.LoadCustomHyphen()

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
            hyphenlanguage = song.hyphen or self.defaulthyphenlanguage
            if hyphenlanguage and song.lyrics.find(' -- ') < 0:
                lyrics = self.HyphenLyrics(song.lyrics, hyphenlanguage)
            else:
                lyrics = song.lyrics

            # Create a lilypond file by replacing the special items in the template.
            lycontent = Template(self.template).safe_substitute(
                osrtitle=song.title, osrcopyright=song.copyright, osrauthor=song.composer,
                osrnotes=song.notes, osrverse=verse,              osrlyrics=lyrics)
            lilypondfile = path.join(self.workdir, song.md5 + ".ly")
            with open(lilypondfile, 'w') as file:
                file.write(lycontent)

            # Run LilyPond to render the pages.
            command = self.rendercommand.format(lilypondfile=lilypondfile, workdir=self.workdir)
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
            result = self._pyphens.get(language)
            if not result:
                result = HyphenSet(language, self.customhyphenfolder)
                self._pyphens[language] = result
            else:
                result.UpdateCustomHyphen()
        return result

    def _hyphenwords(self, words, language):
        ''' This hyphens a collection of words. Words with a ' in them are treated special. '''
        mypyphen = self.LoadHyphen(language)
        stripnext = False
        for word in words:
            if stripnext:
                word = word.lstrip()
                stripnext = False
            if word:
                if word[0].isalpha() or word.find("'") >= 0:
                    custom = mypyphen.customhyphens.get(word.lower())
                    if custom:
                        stripnext = custom.endswith("_")
                        # Simple first-letter-case support. Needs to be extended.
                        if word[0].isupper():
                            custom = custom[0].upper() + custom[1:]
                        yield custom
                    else:
                        # Not custom hyphened, split on the ' character that we left in to be able to custom-hyphen.
                        # We usually want the parts to be on separate notes, so we add a space between the parts.
                        # But when the part before or after the ' is only 1 character, we probably want to combine them,
                        # so we do NOT add a space in that case.
                        addspace = False
                        addapp   = False
                        for ncword in word.split("'"):
                            addspace = addspace and len(ncword) > 1
                            if addspace:
                                yield " "
                            if addapp:
                                yield "'"
                            else:
                                addapp = True
                            addspace = len(ncword) > 1
                            if mypyphen.hyphenator:
                                yield mypyphen.hyphenator.inserted(ncword, hyphen=' -- ')
                            else:
                                yield word
                else:
                    yield word

    def HyphenLyrics(self, lyrics, language):
        # return ''.join([self.customhyphen.get(word) or self.defaultpyphen.inserted(word, hyphen=' -- ') if word.isalpha() 
        #                 else word for word in re.findall(r'[^\w]+|\w+', lyrics)])
        # We do keep the ' character as part of the words, to allow them to be custom-hyphened.
        return ''.join(self._hyphenwords(re.findall(r"[^\w']+|[\w']+", lyrics), language))
