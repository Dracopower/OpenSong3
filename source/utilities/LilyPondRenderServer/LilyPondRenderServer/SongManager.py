#! /usr/bin/env python3
import time
import os
from threading import Thread
from threading import Lock
from queue import Queue
from .LilyPondRender import LilyPondRenderer
from .SongRecord import SongRecord

def worker(manager):
    while not manager._terminating:
        job = manager._jobs.get()
        if job is None:
            break
        job.run()

class RenderJob:
    def __init__(self, song, manager):
        self.song = song
        self.manager = manager
    
    def run(self):
        # It might already be rendered by someone else.
        if self.song.SafeSwitchStatus(SongRecord.STATUS_SCHEDULED, SongRecord.STATUS_RENDERING):
            self.manager._Render(self.song)

class SongManager:
    ''' Processes jobs in parallel.
    '''
    def __init__(self, renderer, threadcount):
        self.renderer = renderer
        self._jobs = Queue()
        self._workers = []
        self._terminating = False
        self._songs = {}
        self._songslock = Lock()

        # Kick the worker threads into the air.
        for i in range(threadcount):
            thread = Thread(target=worker, args=(self,))
            thread.start()
            self._workers.append(thread)

    def TerminateNicely(self):
        self._terminating = True
        for worker in self._workers:
            self._jobs.put(None)
        for worker in self._workers:
            worker.join()

    def _Register(self, song):
        with self._songslock:
            if song.md5 in self._songs:
                return self._songs[song.md5]
            else:
                self._songs[song.md5] = song
                return song

    def _Unregister(self, md5):
        with self._songslock:
            if md5 in self._songs:
                del self._songs[md5]

    def _Render(self, song):
        # remove old versions from the cache, prior to generating a new one.
        songfolder = song.GetSongFolder(self.renderer.cachedir)
        songprefix = song.MakeFileName()
        prefixlen = len(songprefix)
        for filename in os.listdir(songfolder):
            if filename.startswith(songprefix):
                os.remove(os.path.join(songfolder, filename))
                filemd5 = filename[prefixlen:prefixlen+32]
                self._Unregister(filemd5)

        success = self.renderer.RenderToCache(song)
        if success:
            song.SafeSwitchStatus(SongRecord.STATUS_RENDERING, SongRecord.STATUS_AVAILABLE)
        else:
            song.SafeSwitchStatus(SongRecord.STATUS_RENDERING, SongRecord.STATUS_ERROR)
        return success

    def GetOrSchedule(self, song):
        ''' Try to get a song. If it's available, it return true and you can use the requested song.
        If it's not available, the rendering will be scheduled.
        Returns a boolean that indicates if the song is readily available and the song record.
        '''
        song = self._Register(song)
        if not song.IsAvailable(self.renderer.cachedir):
            if song.SafeSwitchStatus(song.STATUS_NOTAVAILABLE, song.STATUS_SCHEDULED):
                self._jobs.put(RenderJob(song, self))
            return False, song
        else:
            return True, song

    def GetOrRender(self, song, timeout=5):
        ''' Get a song. If it's available, it returns immediately.
        If it's not available, the rendering will be performed immedetely in this thread.
        Returns a boolean that indicates if the song is readily available and the song record.
        '''
        song = self._Register(song)
        if not song.IsAvailable(self.renderer.cachedir):
            # We need it now, but it's not there yet. Render it here and now!
            if song.SafeSwitchStatus(song.STATUS_NOTAVAILABLE, song.STATUS_RENDERING) \
            or song.SafeSwitchStatus(song.STATUS_SCHEDULED, song.STATUS_RENDERING):
                success = self._Render(song)
                return success, song
            else:
                # A worker is already rendering the item. Go busy-waiting for the result (sorry...)
                timeout = timeout * 4 + 1
                while song.IsRendering():
                    timeout -= 1
                    if timeout == 0:
                        return False, song
                    time.sleep(0.25)
                return not song.IsError(), song
        return True, song

if __name__ == "__main__":

    song1 = SongRecord("B38", "B38 1", "B38 1 Hoe zal ik U ontvangen", "1",
    r'''
    \relative c
    {
        \time 4/4
        \key g \minor
        \partial 4 bes' f' f 
        | % 2
        g a bes2
        | % 3
        bes4 d c bes 
        | % 4
        bes a bes2. bes,4 f' f 
        | % 6
        g a bes2
        | % 7
        bes4 d c bes 
        | % 8
        bes a bes2. bes4 d d 
        | % 10
        c bes a (g) 
        | % 11
        f f bes a 
        | % 12
        g g f2. f4 d f 
        | % 14
        g f f (ees) 
        | % 15
        d d ees d 
        | % 16
        c c bes2 
        \bar "|."
    }
    ''',
    r'''
    Hoe zal ik U ont -- van -- gen,
    hoe wilt Gij zijn ont -- moet,
    der we -- reld hoogst ver -- lan -- gen,
    des har -- ten hei -- ligst goed?
    Wil zelf uw fak -- kel dra -- gen
    in on -- ze duis -- ter -- nis,
    op -- dat wat U be -- ha -- ge
    ons klaar en ze -- ker is.
    ''',
    "Pietje Puk", "© ooit: iemand")

    song2 = SongRecord("B38", "B38 2", "B38 1 Hoe zal ik U ontvangen", "2",
    r'''
    \relative c
    {
        \time 4/4
        \key g \minor
        \partial 4 bes' f' f 
        | % 2
        g a bes2
        | % 3
        bes4 d c bes 
        | % 4
        bes a bes2. bes,4 f' f 
        | % 6
        g a bes2
        | % 7
        bes4 d c bes 
        | % 8
        bes a bes2. bes4 d d 
        | % 10
        c bes a (g) 
        | % 11
        f f bes a 
        | % 12
        g g f2. f4 d f 
        | % 14
        g f f (ees) 
        | % 15
        d d ees d 
        | % 16
        c c bes2 
        \bar "|."
    }
    ''',
    r'''
    Twee zal ik U ont -- van -- gen,
    hoe wilt Gij zijn ont -- moet,
    der we -- reld hoogst ver -- lan -- gen,
    des har -- ten hei -- ligst goed?
    Wil zelf uw fak -- kel dra -- gen
    in on -- ze duis -- ter -- nis,
    op -- dat wat U be -- ha -- ge
    ons klaar en ze -- ker is.
    ''',
    "Pietje Puk", "© ooit: iemand")

    song3 = SongRecord("B38", "B38 3", "B38 1 Hoe zal ik U ontvangen", "3",
    r'''
    \relative c
    {
        \time 4/4
        \key g \minor
        \partial 4 bes' f' f 
        | % 2
        g a bes2
        | % 3
        bes4 d c bes 
        | % 4
        bes a bes2. bes,4 f' f 
        | % 6
        g a bes2
        | % 7
        bes4 d c bes 
        | % 8
        bes a bes2. bes4 d d 
        | % 10
        c bes a (g) 
        | % 11
        f f bes a 
        | % 12
        g g f2. f4 d f 
        | % 14
        g f f (ees) 
        | % 15
        d d ees d 
        | % 16
        c c bes2 
        \bar "|."
    }
    ''',
    r'''
    Drie zal ik U ont -- van -- gen,
    hoe wilt Gij zijn ont -- moet,
    der we -- reld hoogst ver -- lan -- gen,
    des har -- ten hei -- ligst goed?
    Wil zelf uw fak -- kel dra -- gen
    in on -- ze duis -- ter -- nis,
    op -- dat wat U be -- ha -- ge
    ons klaar en ze -- ker is.
    ''',
    "Pietje Puk", "© ooit: iemand")

    song4 = SongRecord("B38", "B38 2", "B38 1 Hoe zal ik U ontvangen", "2",
    r'''
    \relative c
    {
        \time 4/4
        \key g \minor
        \partial 4 bes' f' f 
        | % 2
        g a bes2
        | % 3
        bes4 d c bes 
        | % 4
        bes a bes2. bes,4 f' f 
        | % 6
        g a bes2
        | % 7
        bes4 d c bes 
        | % 8
        bes a bes2. bes4 d d 
        | % 10
        c bes a (g) 
        | % 11
        f f bes a 
        | % 12
        g g f2. f4 d f 
        | % 14
        g f f (ees) 
        | % 15
        d d ees d 
        | % 16
        c c bes2 
        \bar "|."
    }
    ''',
    r'''
    Twee zal ik U ont -- van -- gen,
    hoe wilt Gij zijn ont -- moet,
    der we -- reld hoogst ver -- lan -- gen,
    des har -- ten hei -- ligst goed?
    Wil zelf uw fak -- kel dra -- gen
    in on -- ze duis -- ter -- nis,
    op -- dat wat U be -- ha -- ge
    ons klaar en ze -- ker is.
    ''',
    "Pietje Puk", "© ooit: iemand")

    renderer = LilyPondRenderer()        
    manager = SongManager(renderer, 4)
    print("***", manager.GetOrSchedule(song1))
    print("***", manager.GetOrSchedule(song2))
    print("***", manager.GetOrSchedule(song3))
    print("***", manager.GetOrSchedule(song4))
    print("***", "Waiting")
    time.sleep(1)
    print("***", "Finished waiting")
    print("*** 1", manager.GetOrRender(song1))
    print("*** 2", manager.GetOrRender(song2))
    print("*** 3", manager.GetOrRender(song3))
    print("*** 4", manager.GetOrRender(song4))
    manager.TerminateNicely()
