




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
                \fontsize #3 \lower #1 \rotate #7 "Moderately Slow"
              \fontsize #8
              \override #'(offset . 7)
              \override #'(thickness . 6)
              \underline \sans "It Never Entered My Mind"
              \fontsize #1 \lower #1 \line {
	      		   	       "- Lorenz Hart / Richard Rodgers"

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
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | f a:m | g1:m7 | g2:m ees4:7/g c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | f a:m | g1:m7 | a2:m c:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f2 f4:6 g:m7 | g2.:m7 c4:7 | f2:maj7 f4:6 g:m7 | g2.:m7 c4:7 | \myEndLine
		f2:6 c:7 | f b:dim7 | c:7 bes4 a:m7 | bes2 a4:m c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | a:m7.5- d:7 | g:m7 c4:7.11 c:7 | f4 f2.:maj7 | \myEndLine
		g2.:m7 c4:7 |
		\endPart

	} \alternative {
		{
			f2:6 g4:7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f1:6 | \myEndLineVoltaLast
		}
	}

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
	\tempo "Andante" 4 = 76
	\time 4/4
	\key f \major

	\repeat volta 2 {

	%% part "A"
		a'4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | f e8 c~ c2 | r8. d16[ f8. g16] a8 f a g~ | g2. r4 |

	%% part "A"
		a4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | f e8 c~ c2 | r8. d16[ f8. g16] a8 f a c~ | c2. r4 |

	%% part "B"
		d2 f,4 f~ | f2. e4 | g2 f4 f~ | f2 r4 e |
		a8 a4. bes8 bes4. | c8 c4. d8 d4. | e2 c4 c~ | c2. r4 |

	%% part "A"
		a4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | c'4 bes8 a~ a2 | r8. bes16[ a8. g16] f4 e | a e8 e~ e2 |
		r8. d16[ f8. g16] a8 f g f~ |
	} \alternative {
		{
			f2 r |
		}
		{
			f2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Once I laughed when
	I heard you say -- ing
	that I'd be play -- ing
	sol -- i -- taire, __
	un -- eas -- y in my
	eas -- y chair, __
	It Nev -- er En -- tered My Mind. __

%% part "A"
	Once you told me
	I was mis -- tak -- en
	that I'd a -- wak -- en
	with the sun __
	and or -- der or -- ange juice for one, __
	It Nev -- er En -- tered My Mind. __

%% part "B"
	You have what __
	I lack my -- self, __
	and now I e -- ven have to scratch
	my back my -- self. __

%% part "A"
	Once you warned me
	that if you scorned me
	I'd sing the maid -- en's
	pray'r a -- gain, __
	and with that you were there a -- gain __
	to get in -- to my hair a -- gain __
	It Nev -- er En -- tered My Mind. __
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
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | f a:m | g1:m7 | g2:m ees4:7/g c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | f a:m | g1:m7 | a2:m c:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f2 f4:6 g:m7 | g2.:m7 c4:7 | f2:maj7 f4:6 g:m7 | g2.:m7 c4:7 | \myEndLine
		f2:6 c:7 | f b:dim7 | c:7 bes4 a:m7 | bes2 a4:m c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | a:m7.5- d:7 | g:m7 c4:7.11 c:7 | f4 f2.:maj7 | \myEndLine
		g2.:m7 c4:7 |
		\endPart

	} \alternative {
		{
			f2:6 g4:7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f1:6 | \myEndLineVoltaLast
		}
	}

	\endSong
	\endChords
}



\new Staff="Melody" {
\new Voice="Voice"
	\relative c'
	



{
	\tempo "Andante" 4 = 76
	\time 4/4
	\key f \major

	\repeat volta 2 {

	%% part "A"
		a'4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | f e8 c~ c2 | r8. d16[ f8. g16] a8 f a g~ | g2. r4 |

	%% part "A"
		a4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | f e8 c~ c2 | r8. d16[ f8. g16] a8 f a c~ | c2. r4 |

	%% part "B"
		d2 f,4 f~ | f2. e4 | g2 f4 f~ | f2 r4 e |
		a8 a4. bes8 bes4. | c8 c4. d8 d4. | e2 c4 c~ | c2. r4 |

	%% part "A"
		a4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | c'4 bes8 a~ a2 | r8. bes16[ a8. g16] f4 e | a e8 e~ e2 |
		r8. d16[ f8. g16] a8 f g f~ |
	} \alternative {
		{
			f2 r |
		}
		{
			f2. r4 |
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
		\smaller \smaller { "Copyright © 1940 by Chappell & Co., Inc. Copyright Renewed" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>, Built at 10:31:12 23-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}





