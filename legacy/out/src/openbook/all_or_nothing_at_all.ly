




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
              \underline \sans "All Or Nothing At All"
              \fontsize #1 \lower #1 \line {
	      		   	       "- Jack Lawrence / Arthur Altman"

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

	\myMark "A"
	\startPart
	a1*2:m | a1:m7 | a:m6 | \myEndLine
	a2:m a:m6 | a1:m | bes2:9 bes:6 | bes:aug bes:7 | \myEndLine
	g1:m | e2:m7.5- a:7.9- | d1*2:m | \myEndLine
	g1:7 | g2.:7 g4:7.5+ | c1:maj7 | b2:m7.5- e:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1*2:m | a1:m7 | a2:m6 a:m | \myEndLine
	a:m a:m6 | a1:m | bes2:9 bes:6 | bes:aug bes:7 | \myEndLine
	g1:m | e2:m7.5- a:7.9- | d1*2:m | \myEndLine
	g1:7 | g2.:7 g4:7.5+ | c1:maj7 | bes2:m7 ees:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	aes aes:aug | aes:6 aes:aug | aes aes:aug | aes:6 aes4:aug ees:7 | \myEndLine
	aes2 aes:aug | des aes | ees1:9 | ees2:aug ees:7 | \myEndLine
	bes:m7 ees:7 | bes:m7 ees:7 | bes:m7 ees:7 | g:m7.5- c:7 | \myEndLine
	f1:m | des:7 | c:7 | e:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1*2:m | a1:m7 | a:m6 | \myEndLine
	a1*2:m | bes2:9 bes:6 | bes:aug bes:7 | \myEndLine
	g1:m | e2:m7.5- a:7.9- | d1:m | b2:m7.5- e:7 | \myEndLine
	a1:m | d2:m7.5- g:7.11 | c1 | c:6 | \myEndLine
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
	\tempo "Allegro" 4 = 168
	\time 4/4
	\key c \major

%% part "A"
	e1~ | e4 e \tuplet 3/2 { e f c } | e1~ | e2. r4 |
	e2 e | e \tuplet 3/2 { e4 g c, } | d4. d8 d2~ | d2. r4 |
	d2 d | d \tuplet 3/2 { e4 cis d } | a'4. a8 a2~ | a b4 a |
	g g2 g4 | g g2 g4 | g1 | r |

%% part "A"
	e~ | e4 e \tuplet 3/2 { e f c } | e1~ | e2. r4 |
	e2 e | e \tuplet 3/2 { e4 g c, } | d4. d8 d2~ | d2. r4 |
	d4. d8 d4. d8 | d4. d8 \tuplet 3/2 { e4 cis d } | a'4. a8 a2~ | a b4 a |
	g g2 g4 | g g2 g4 | g1~ | g4 r r ees |

%% part "B"
	c' c c c | c4. c8 \tuplet 3/2 { c4 des aes } | c1~ | c2. ees,4 |
	c'4. c8 c4. c8 | des2 \tuplet 3/2 { c4 bes aes } | g1~ | g2. ees4 |
	\tuplet 3/2 { bes' bes bes } bes4. bes8 | \tuplet 3/2 { bes4 bes bes } \tuplet 3/2 { bes c g } | bes1~ | bes2 c4 bes |
	aes2 aes4 aes | aes aes2 aes4 | g1 | r4 d c b |

%% part "A"
	e1 | \tuplet 3/2 { e4 f c } \tuplet 3/2 { e f c } | e1~ | e2. r4 |
	e2 e | e \tuplet 3/2 { e4 g c, } | d4. d8 d2~ | d2. r4 |
	d2 d | d4. d8 \tuplet 3/2 { e4 cis d } | a'1 | b |
	c1~ | c4 c \tuplet 3/2 { c c c } | c1~ | c2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	All, __ Or Noth -- ing At All. __
	Half a love nev -- er ap -- pealed to me. __
	If your heart nev -- er could yield to me, __
	then I'd rath -- er have noth -- ing at all!

%% part "A"
	All __ Or Noth -- ing At All! __
	If it's love, there is no in -- be -- tween. __
	Why be -- gin, then cry for some -- thing that might have been. __
	No, I'd rath -- er have noth -- ing at all. __

%% part "B"
	But, please, don't bring your lips so close to my cheek. __
	Don't smile or I'll be lost be -- yond re -- call. __
	The kiss in your eyes, the touch of your hand makes me weak, __
	And my heart may grow diz -- zy and fall.

%% part "A"
	And if I fell un -- der the spell of your call. __
	I would be caught in the un -- der -- tow. __
	So, you see, I've got to say: No! No!
	All __ Or Noth -- ing At All! __
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

	\myMark "A"
	\startPart
	a1*2:m | a1:m7 | a:m6 | \myEndLine
	a2:m a:m6 | a1:m | bes2:9 bes:6 | bes:aug bes:7 | \myEndLine
	g1:m | e2:m7.5- a:7.9- | d1*2:m | \myEndLine
	g1:7 | g2.:7 g4:7.5+ | c1:maj7 | b2:m7.5- e:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1*2:m | a1:m7 | a2:m6 a:m | \myEndLine
	a:m a:m6 | a1:m | bes2:9 bes:6 | bes:aug bes:7 | \myEndLine
	g1:m | e2:m7.5- a:7.9- | d1*2:m | \myEndLine
	g1:7 | g2.:7 g4:7.5+ | c1:maj7 | bes2:m7 ees:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	aes aes:aug | aes:6 aes:aug | aes aes:aug | aes:6 aes4:aug ees:7 | \myEndLine
	aes2 aes:aug | des aes | ees1:9 | ees2:aug ees:7 | \myEndLine
	bes:m7 ees:7 | bes:m7 ees:7 | bes:m7 ees:7 | g:m7.5- c:7 | \myEndLine
	f1:m | des:7 | c:7 | e:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1*2:m | a1:m7 | a:m6 | \myEndLine
	a1*2:m | bes2:9 bes:6 | bes:aug bes:7 | \myEndLine
	g1:m | e2:m7.5- a:7.9- | d1:m | b2:m7.5- e:7 | \myEndLine
	a1:m | d2:m7.5- g:7.11 | c1 | c:6 | \myEndLine
	\endPart

	\endSong
	\endChords
}



\new Staff="Melody" {
\new Voice="Voice"
	\relative c'
	



{
	\tempo "Allegro" 4 = 168
	\time 4/4
	\key c \major

%% part "A"
	e1~ | e4 e \tuplet 3/2 { e f c } | e1~ | e2. r4 |
	e2 e | e \tuplet 3/2 { e4 g c, } | d4. d8 d2~ | d2. r4 |
	d2 d | d \tuplet 3/2 { e4 cis d } | a'4. a8 a2~ | a b4 a |
	g g2 g4 | g g2 g4 | g1 | r |

%% part "A"
	e~ | e4 e \tuplet 3/2 { e f c } | e1~ | e2. r4 |
	e2 e | e \tuplet 3/2 { e4 g c, } | d4. d8 d2~ | d2. r4 |
	d4. d8 d4. d8 | d4. d8 \tuplet 3/2 { e4 cis d } | a'4. a8 a2~ | a b4 a |
	g g2 g4 | g g2 g4 | g1~ | g4 r r ees |

%% part "B"
	c' c c c | c4. c8 \tuplet 3/2 { c4 des aes } | c1~ | c2. ees,4 |
	c'4. c8 c4. c8 | des2 \tuplet 3/2 { c4 bes aes } | g1~ | g2. ees4 |
	\tuplet 3/2 { bes' bes bes } bes4. bes8 | \tuplet 3/2 { bes4 bes bes } \tuplet 3/2 { bes c g } | bes1~ | bes2 c4 bes |
	aes2 aes4 aes | aes aes2 aes4 | g1 | r4 d c b |

%% part "A"
	e1 | \tuplet 3/2 { e4 f c } \tuplet 3/2 { e f c } | e1~ | e2. r4 |
	e2 e | e \tuplet 3/2 { e4 g c, } | d4. d8 d2~ | d2. r4 |
	d2 d | d4. d8 \tuplet 3/2 { e4 cis d } | a'1 | b |
	c1~ | c4 c \tuplet 3/2 { c c c } | c1~ | c2. r4 |
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
		\smaller \smaller { "Copyright © 1930, 1940 by MCA MUSIC PUBLISHING, A Division of MCA Inc. Copyright Renewed" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>, Built at 10:30:58 23-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}





