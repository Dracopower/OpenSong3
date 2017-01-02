\version "2.16.0"

% Met 300 dpi geeft dit afbeeldingen van 1920 x 1080 = Full HD.
%#(set! paper-alist (cons '("Full-HD" . (cons (* 6.4 in) (* 3.6 in))) paper-alist))
%\paper { #(set-paper-size "Full-HD") print-page-number = ##f }

% Met 400 dpi geeft dit afbeeldingen van 1920 x 1080 = Full HD met grotere letters / noten.
% = 400dpi * 4.8" x 400dpi * 2.7" = 1920 x 1080
#(set! paper-alist (cons '("Full-HD" . (cons (* 4.8 in) (* 2.7 in))) paper-alist))
\paper { #(set-paper-size "Full-HD") print-page-number = ##f }

% Zet dit aan om de sheet niet vertikaal uit te vullen
\paper { ragged-bottom = ##t }

% Gebruik hier je favoriete fonts / huisstijl.
\paper { #(define fonts
    (make-pango-font-tree "Ubuntu Medium"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))
}

% Zet dit aan om de sheet niet horizontaal uit te vullen.
%\paper { ragged-right = ##t }

% Gebruik een positief getal om de lied tekst groter te maken, negatief voor kleiner.
kerkfontsize = #0

%definieer dit wanneer elke regel geforceerd moet eindigen. Gebruik anders de lege daaronder.
regeleinde = { \bar "" \break }
%regeleinde = {}

\header {
  title = "$(osrtitle)"
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
      \set fontSize = \kerkfontsize
      \set stanza = "$(osrverse)"
      $(osrlyrics)
    } 
  >> 
}
