




% lets emit the definitions

% end verbatim - this comment is a hack to prevent texinfo.tex
% from choking on non-European UTF-8 subsets

% this version tag will keep me compiling only on this version of lilypond.
%=====================================================================

\version "2.23.12"

% lets define a variable to hold the formatted build date (man 3 strftime):
%date=#(strftime "%T %d-%m-%Y" (localtime (current-time)))
%lilypond_version=#(lilypond-version)

% setting instruments for midi generation (bah - this doesn't work...)
%=====================================================================
%\set ChordNames.midiInstrument = #"acoustic grand"
%\set Staff.midiInstrument = #"flute"
%\set PianoStaff.instrumentName = #"acoustic grand"
% do not show chords unless they change...
%\set chordChanges = ##t

% number of staffs per page (this does not work because of my breaks)
%\paper {
%	system-count = #7
%}




\paper {
%% reduce spaces between systems and the bottom (taken from the lilypond
%% documentation and found the relevant variable)
%% the result of this is that I can fit 8 single staffs in one page
%% which is ideal for Jazz (think 32 bar divided into 8 lines of 4 bars each...).
%% I should really only apply this thing for Jazz tunes but that is a TODO item.
%% default is 4\mm - 3 already causes 8 staffs to take 2 pages
	between-system-padding = 2\mm
%% default is 20\mm
%% between-system-space = 16\mm
%% ragged-last-bottom = ##f
%% ragged-bottom = ##f

%% make lilypond increase the distance of the footer from the bottom of the page
%% it seems that if you don't do something like this you're going to have
%% a real problem seeing the footer in postscript printing....
%%bottom-margin = 2.5\cm

%% from /usr/share/lilypond/2.12.3/ly/titling-init.ly
%% to stop lilypond from printing footers...
	oddFooterMarkup = \markup {}

%% prevent lilypond from printing the headers...

	scoreTitleMarkup = \markup {}
	bookTitleMarkup = \markup {}
}
\layout {
%% don't have the first line indented
	indent = 0.0 \cm
%% don't know what this is (taken from Laurent Martelli...)
%%textheight = 1.5\cm

	\context {
		\Score
	%% change the size of the text fonts
		\override LyricText #'font-family = #'typewriter
	%% set the style of the chords to Jazz - I don't see this making any effect
		\override ChordName #'style = #'jazz
	%%\override ChordName #'word-space = #2

	%% set the chord size and font
	%%\override ChordName #'font-series = #'bold
	%%\override ChordName #'font-family = #'roman
	%%\override ChordName #'font-size = #-1

	%% don't show bar numbers (for jazz it makes it too cluttery)
		\remove "Bar_number_engraver"
	}
}
% reduce the font size (taken from the lilypond info documentation, default is 20)
#(set-global-staff-size 17.82)

% There is no need to set the paper size to a4 since it is the default.
% make lilypond use paper of size a4 (Is this the default ?!?)
%#(set-default-paper-size "a4")
%)

% Don't have textedit:// links for every note in the pdf file.
% This reduces the size of the pdf by a lot
\pointAndClickOff

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
\include "predefined-guitar-fretboards.ly"



% from here everything needs to go into a loop

% include anything the user wants before the bookpart starts













% this causes the variables to be defined...

















% now play with the variables that depend on language



% calculate the tag line


% calculate the typesetby










% !!! ACTIVATE JAZZ MODE !!!


\include "lilyjazz.ly"
\include "jazzchords.ly"

\paper {
       #(define fonts
         (set-global-fonts
%	 #:music "lilyjazz"
	 #:roman "LilyJAZZText"
	 #:sans "LilyJAZZText"
	 #:factor (/ staff-height pt 20)))
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

% JAZZY HEADER
\markup {
      \score {
        {
          \override TextScript.extra-offset = #'(0 . -4.5)
          s4
          s^\markup {
            \fill-line {
                \fontsize #3 \lower #1 \rotate #7 "Moderately"
              \fontsize #8
              \override #'(offset . 7)
              \override #'(thickness . 6)
              \underline \sans "How Insensitive"
              \fontsize #1 \lower #1 \line {
	      		   	       "- Vincius De Moraes, Norman Gimbel / Antonio Carlos Jobim"

				     }
            }
          }
          s
        }
        \layout {
          \once \override Staff.Clef.stencil = ##f
          \once \override Staff.TimeSignature.stencil = ##f
          \once \override Staff.KeySignature.stencil = ##f
          ragged-right = ##f
         %%\override TextScript.font-name = #"Pea Missy with a Marker"
	  \override TextScript.font-name = #"LilyJAZZText"
        }
      }
    }


\noPageBreak



% include the preparatory stuff, if there is any

% calculate the vars



% score for printing
\score {
	<<
  \set Score.tempoHideNote = ##t  

\new ChordNames="Chords"
	\with {
		\remove "Bar_engraver"
	}
% # transpose with 'inline' is true!
	\transpose c c {






\chordmode {
	\startChords
	\startSong

	\repeat volta 2 {

		\myMark "A"
		\startPart
		d1*2:m7 | des:dim7 | \myEndLine
		c:m6 | g:7 | \myEndLine
		bes:maj7 | ees:maj7 | \myEndLine
		e1:m7.5- | a:7.9- | d:m7 | des:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c1*2:m7 | b:dim7 | \myEndLine
		bes1:maj7 | e2:m7.5- a:7.9- | d1.:m7 des2:7 | \myEndLine
		c1:m7 | f:7 | b:m7 | e:7.9- | \myEndLine
		g:m6 |
	} \alternative {
		{
			a:7 | d:m7 | e2:m7.5- a:7.9- | \myEndLineVolta
		}
		{
			a1:7 | d2:m d:m6 | d1:m6 | \myEndLineVolta
		}
	}
	\endPart

	\endSong
	\endChords
}



}
% this thing will only engrave voltas. This is required to put the volta under the chords.
% No great harm will happen if you don't put it, only the voltas will be above the chords.
%\new Staff \with {
%	\consists "Volta_engraver"
%}
\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c c { \relative c'
	







{
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key d \minor

	\repeat volta 2 {

	%% part "A"
		a'1~ | a4 bes8 a~ a bes4 a8~ | a1~ | a4 bes8 a~ a bes4 a8~ |
		a2~ a8 gis4 a8 | c b4 bes8~ bes a4 a8~ | a4. g8~ g2~ | g2~ g4. g8~ |
		g1~ | g4 a8 g~ g a4 g8~ | g1~ | g4 a8 g~ g a4 g8~ |
		g2 r8 fis4 g8 | bes a4 gis8~ gis g4 g8~ | g4. f8~ f2~ | f~ f4. f8~ |

	%% part "B"
		f1~ | f4 g8 f~ f g4 f8~ | f1~ | f4 g8 f~ f g4 a8~ |
		a2. f4 | d e8 d~ d e4 f8~ | f2 f~ | f~ f4. f8~ |
		f1~ | f4 g8 f~ f g4 e8~ | e1~ | e4 f8 e~ e f4 e8~ |
		e2 r8 dis e g~ |
	} \alternative {
		{
			g fis4 f8~ f e4 e8~ | e4. d8~ d2~ | d4 r r2 |
		}
		{
			g8\repeatTie fis4 f8~ f e4 e8~ | e4. d8~ d2~ | d2.\fermata r4 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	








% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	How __ In -- sen -- __ si -- tive __ I must __ have seemed __ when she told me that __ she loved __ me. __
	How __ un -- moved __ and cold __ I must __ have seemed __ when she told me so __ sin -- cere -- __ ly. __
	Why, __ she must __ have asked, __ did I __ just turn __ and stare in i -- __ cy si -- lence? __
	What __ was I __ to say? __ What can __ you say __ when a love __ af -- fair __ is o -- __ ver? __

%% part "Volta"
	_ af -- fair __ is o -- __ ver? __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	









\lyricmode {

%% part "B"
	Now, __ she's gone __ a -- way __ and I'm __ a -- lone __ with the mem -- 'ry of __ her last __ look. __
	Vague __ _ drawn __ and sad, __ I see __ it still, __ all her heart- break in __ that last __ look. __
	How, __ she must __ have asked, __ could I __ just turn __ and stare in i -- __ cy si -- lence? __
	What __ was I __ to do? __ What can __ one do __ when a love __
}

}
	>>
	\layout {
%% MODIFIED FOR JAZZFONT BRANCH

%% make only the first clef visible
        \override Score.Clef #'break-visibility = #'#(#f #f #f)

%% make only the first time signature visible
	\override Score.KeySignature #'break-visibility = #'#(#f #f #f)

%% allow single-staff system bars
	\override Score.SystemStartBar #'collapse-height = #1

	}
}
% score for midi
\score {
	\unfoldRepeats
	<<
\new ChordNames="Chords"
	






\chordmode {
	\startChords
	\startSong

	\repeat volta 2 {

		\myMark "A"
		\startPart
		d1*2:m7 | des:dim7 | \myEndLine
		c:m6 | g:7 | \myEndLine
		bes:maj7 | ees:maj7 | \myEndLine
		e1:m7.5- | a:7.9- | d:m7 | des:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c1*2:m7 | b:dim7 | \myEndLine
		bes1:maj7 | e2:m7.5- a:7.9- | d1.:m7 des2:7 | \myEndLine
		c1:m7 | f:7 | b:m7 | e:7.9- | \myEndLine
		g:m6 |
	} \alternative {
		{
			a:7 | d:m7 | e2:m7.5- a:7.9- | \myEndLineVolta
		}
		{
			a1:7 | d2:m d:m6 | d1:m6 | \myEndLineVolta
		}
	}
	\endPart

	\endSong
	\endChords
}




\new Staff="Melody" {
\new Voice="Voice"
	\relative c'
	







{
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key d \minor

	\repeat volta 2 {

	%% part "A"
		a'1~ | a4 bes8 a~ a bes4 a8~ | a1~ | a4 bes8 a~ a bes4 a8~ |
		a2~ a8 gis4 a8 | c b4 bes8~ bes a4 a8~ | a4. g8~ g2~ | g2~ g4. g8~ |
		g1~ | g4 a8 g~ g a4 g8~ | g1~ | g4 a8 g~ g a4 g8~ |
		g2 r8 fis4 g8 | bes a4 gis8~ gis g4 g8~ | g4. f8~ f2~ | f~ f4. f8~ |

	%% part "B"
		f1~ | f4 g8 f~ f g4 f8~ | f1~ | f4 g8 f~ f g4 a8~ |
		a2. f4 | d e8 d~ d e4 f8~ | f2 f~ | f~ f4. f8~ |
		f1~ | f4 g8 f~ f g4 e8~ | e1~ | e4 f8 e~ e f4 e8~ |
		e2 r8 dis e g~ |
	} \alternative {
		{
			g fis4 f8~ f e4 e8~ | e4. d8~ d2~ | d4 r r2 |
		}
		{
			g8\repeatTie fis4 f8~ f e4 e8~ | e4. d8~ d2~ | d2.\fermata r4 |
		}
	}
}



}
	>>
	\midi {
	}
}


\noPageBreak
\markup \column {
%% just a little space
	\null
	\fill-line {
		\smaller \smaller { "Copyright © 1963, 1964 by Antonio Carlos Jobim and Vincius De Moraes, Brazil" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>, Built at 10:31:09 23-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}





