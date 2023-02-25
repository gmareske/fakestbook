\version "2.23.12"

#(begin
  
  (newline) ; for clean output
  (use-modules (ice-9 ftw))

  ;; which directory should we look for source files in?
  (define songs-source-directory "songs")
  ;; rules to exclude a given filename
  (define (include-this-file? filename)
   (not (or (string=? filename ".")
	 (string=? filename "..")
	 (char=? #\~ (string-ref filename (- (string-length filename) 1))))))
  ;; list of lilypond source files
  (define ly-source-files
   (map (lambda (fn) (string-concatenate (list songs-source-directory "/" fn)))
    (scandir (string-append  "/home/griff/Documents/openbook/testing/" songs-source-directory) include-this-file?)))
  (display "Building openbook out of source files: ")
  (display ly-source-files)
  (newline)
)

% Tranposition
\include "transpose.ly"
\include "build-info.ly"		    

%% Set the number of songs in the build info
#(hashq-set! fb:build-info 'song-count (number->string (length ly-source-files)))


#(set-global-staff-size 17.82)

				% There is no need to set the paper size to a4 since it is the default.
				% make lilypond use paper of size a4 (Is this the default ?!?)
				%#(set-default-paper-size "qa4")
				%)

				% Don't have textedit:// links for every note in the pdf file.
				% This reduces the size of the pdf by a lot
\pointAndClickOff

%% MY INCLUDES
%\include "ob-macros.ly"
\include "lilyjazz.ly"
\include "jazzchords.ly"

				% chord related matters
myChordDefinitions={
  <c ees ges bes des' fes' aes'>-\markup \super {7alt}
  <c e g bes f'>-\markup \super {7sus}
  <c e g bes d f'>-\markup \super {9sus}
  <c e g f'>-\markup \super {sus}
  <c ees ges bes>-\markup { "m" \super { "7 " \flat "5" } }
  <c ees ges beses>-\markup { "dim" \super { "7" } }
  <c ees ges>-\markup { "dim" }
  %%<c e g b>-\markup { "maj7" }
  <c e gis bes d'>-\markup { \super { "9 " \sharp "5" } }
  <c e g bes d' a'>-\markup \super {13}
  <c e g bes d' fis'>-\markup { \super { "9 " \sharp "11" } }
}
myChordExceptions=#(append
		    (sequential-music-to-chord-exceptions myChordDefinitions #t)
		    ignatzekExceptions
		  )

				% some macros to be reused all over
				% =====================================================================
myBreak=\break
				% do line breaks really matter?
myEndLine=\break
				%myEndLine={}
myEndLineVoltaNotLast={}
myEndLineVoltaLast=\break
myEndLineVolta=\break
partBar=\bar "||"
endBar=\bar "|."
startBar=\bar ".|"
startRepeat=\bar "|:"
endRepeat=\bar ":|"
startTune={}
endTune=\bar "|."
myFakeEndLine={}
mySegno=\mark \markup { \musicglyph #"scripts.segno" }
myCoda=\mark \markup { \musicglyph #"scripts.coda" }

				% some functions to be reused all over
				% =====================================================================
				% A wrapper for section markers that allows us to control their formatting

				% You can have a circle instead of a box using:
				% \mark \markup { \circle #mark }
myMark =
#(define-music-function
  (parser location mark)
  (markup?)
  #{
  \mark \markup { \box #mark }
  #})
myWordMark =
#(define-music-function
  (parser location mark)
  (markup?)
  #{
  \mark \markup { \box #mark }
  #})
				% grace that does appoggiatura
				%\grace $notes
myGrace = #(define-music-function (parser location notes) (ly:music?) #{ \appoggiatura $notes #})
				% grace that does nothing
				%myGrace = #(define-music-function (parser location notes) (ly:music?) #{ #})

				% this is a macro that * really * breaks lines. You don't really need this since a regular \break will work
				% AS LONG AS you have the '\remove Bar_engraver' enabled...
hardBreak={ \bar "" \break }
				% a macro to make vertical space
verticalSpace=\markup { \null }

				% macros to help in parenthesizing chords
				% see the playground area for openbook and http://lilypond.1069038.n5.nabble.com/Parenthesizing-chord-names-td44370.html
#(define (left-parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context))))
#(define (right-parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ((ignatzek-chord-names in-pitches bass inversion context) ")")))
#(define (parenthesis-ignatzek-chord-names in-pitches bass inversion context) (markup #:line ("(" (ignatzek-chord-names in-pitches bass inversion context) ")")))
LPC = { \once \set chordNameFunction = #left-parenthesis-ignatzek-chord-names }
RPC = { \once \set chordNameFunction = #right-parenthesis-ignatzek-chord-names }
OPC = { \once \set chordNameFunction = #parenthesis-ignatzek-chord-names }

				% some macros for marking parts of jazz tunes
				% =====================================================================
startSong={}
				% If we want endings of parts to be denoted by anything we need
				% to find a smarter function that this since this will tend
				% to make other things disapper (repeat markings etc)
				%endSong=\bar "|."
endSong={}
startPart={}
				% If we want endings of parts to be denoted by anything we need
				% to find a smarter function that this since this will tend
				% to make other things disapper (repeat markings etc)
				% endPart=\bar "||"
endPart={}
startChords={
  %% this causes chords that do not change to disappear...
  \set chordChanges = ##t
  %% use my own chord exceptions
  \set chordNameExceptions = #myChordExceptions
}
endChords={}
				% lets always include guitar definitions
%\include "predefined-guitar-fretboards.ly"
  \layout {
    indent = 0.0\cm
    \context {
      \Score
      \override LyricText #'font-family = #'typewriter
      \override ChordName #'style = #'jazz
      \remove "Bar_number_engraver"
    }
  }

  \paper {
    #(set-paper-size "letter")
    indent = 0\mm
    between-system-space = 2.5\cm
    %%set to ##t if your score is less than one page
    ragged-last-bottom = ##f
    ragged-bottom = ##f
    markup-system-spacing = #'((basic-distance . 15)
			       (minimum-distance . 8)
			       (padding . 1))
  }

\book{


  \include "title-page.ly"

  \markuplist \table-of-contents
  \pageBreak


				% the magic happens here
  #@(map (lambda (filename) (begin (ly:parser-include-string (ly:gulp-file filename)) (ly:parser-include-string "\\pageBreak"))) ly-source-files)

}