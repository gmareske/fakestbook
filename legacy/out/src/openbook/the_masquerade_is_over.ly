




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
              \underline \sans "(I'm Afraid) The Masquerade Is Over"
              \fontsize #1 \lower #1 \line {
	      		   	       "- Herb Magidson / Allie Wrubel"

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

	\partial 4 s4 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		ees1 | g2:7/d g:7 | c2.:m c4:m7 | bes2:m7 ees:7 | \myEndLine
		aes1 | c2:7/g c:7 | f1:7 | f2:m7.5-/bes bes:7 | \myEndLine
		ees1 | ees:7 | aes | aes:m6 | \myEndLine
	} \alternative {
		{
			ees:maj7 | c:7.9- | f:m7 | bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees | f2:m7 bes:7.9- | ees1 | ees | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f2:m7 bes:7 | ees4:maj9 ees2.:6 | f2:m7 bes:7 | ees2:maj9 ees:6 | \myEndLine
	a:m7 d:7 | g:maj7 g:6 | f1:m7 | b2:7.5- bes4:7 bes:7.5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1 | g2:7/d g:7 | c2.:m c4:m7 | bes2:m7 ees:7 | \myEndLine
	aes1 | c2:7/g c:7 | f1:7 | f2:m7.5-/bes bes:7 | \myEndLine
	ees1 | ees2.:7 ees4:7.5+ | aes1 | aes | \myEndLine
	f:9 | f2.:m7 f4:m7.5-/bes | ees1*2:6 | \myEndLine
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
	\tempo "Presto" 4 = 196
	\time 4/4
	\key ees \major

	\partial 4 bes4 |

%% part "A"
	\repeat volta 2 {
		g'2. g4 | g2~ \tuplet 3/2 { g4 bes aes } | g2. g4 | f2 r4 d8 ees |
		c'2. c4 | bes2~ \tuplet 3/2 { bes4 c bes } | a2. f4 | aes2 r4 g8 aes |
		bes2~ bes8 g f ees | ees'2. c4 | bes2 aes | r4 ees4 f ees |
	} \alternative {
		{
			bes'1~ | bes4 g c4. g8 | bes1~ | bes2 r4 aes |
		}
		{
			bes1~ | bes4 ees, g g | ees1~ | ees2 r4 ees |
		}
	}

%% part "B"
	f8 f f g aes4 g | bes bes2 ees,4 | f8 f f g aes4 g | bes2 r4 g |
	a4 b c b8 a | d4 d2 d4 | f2~ \tuplet 3/2 { f4 ees c } | f,2 r4 <bes, \parenthesize fis'> |

%% part "A"
	g'2. g4 | g2~ \tuplet 3/2 { g4 bes aes } | g2. g4 | f2 r4 d8 ees |
	c'2. c4 | bes2~ \tuplet 3/2 { bes4 c bes } | a2. f4 | aes?2 r4 g8 aes |
	bes2~ bes8 g f ees | ees'2. ees4 | ees2 f, | r4 f g aes |
	c1~ | c4 aes c ees | ees1~ | ees\fermata |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Your eyes don't shine __ like they used to shine. And the thrill is
	gone __ when your lips meet mine. I'm A -- fraid __ The Mas -- que -- rade Is
	O -- ver And so is love, __ and so is love. __
	Your love, __ and so is love. __ I
	guess I'll have to play Pag -- liac -- ci and get my self a clown's dis -- guise, and
	learn to laugh like Pag -- liac -- ci with tears __ in my eyes. You look the
	same, __ you're a lot the same, but my heart says, "\"No," __ no, you're
	not the "same.\"" I'm A -- fraid __ The Mas -- que -- rade Is O -- ver
	and so is love, __ and so is love. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	_ words don't mean __ what they used to mean. They were once in --
	spired, __ now they're juse rou -- tine.
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

	\partial 4 s4 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		ees1 | g2:7/d g:7 | c2.:m c4:m7 | bes2:m7 ees:7 | \myEndLine
		aes1 | c2:7/g c:7 | f1:7 | f2:m7.5-/bes bes:7 | \myEndLine
		ees1 | ees:7 | aes | aes:m6 | \myEndLine
	} \alternative {
		{
			ees:maj7 | c:7.9- | f:m7 | bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees | f2:m7 bes:7.9- | ees1 | ees | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f2:m7 bes:7 | ees4:maj9 ees2.:6 | f2:m7 bes:7 | ees2:maj9 ees:6 | \myEndLine
	a:m7 d:7 | g:maj7 g:6 | f1:m7 | b2:7.5- bes4:7 bes:7.5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1 | g2:7/d g:7 | c2.:m c4:m7 | bes2:m7 ees:7 | \myEndLine
	aes1 | c2:7/g c:7 | f1:7 | f2:m7.5-/bes bes:7 | \myEndLine
	ees1 | ees2.:7 ees4:7.5+ | aes1 | aes | \myEndLine
	f:9 | f2.:m7 f4:m7.5-/bes | ees1*2:6 | \myEndLine
	\endPart

	\endSong
	\endChords
}




\new Staff="Melody" {
\new Voice="Voice"
	\relative c'
	



{
	\tempo "Presto" 4 = 196
	\time 4/4
	\key ees \major

	\partial 4 bes4 |

%% part "A"
	\repeat volta 2 {
		g'2. g4 | g2~ \tuplet 3/2 { g4 bes aes } | g2. g4 | f2 r4 d8 ees |
		c'2. c4 | bes2~ \tuplet 3/2 { bes4 c bes } | a2. f4 | aes2 r4 g8 aes |
		bes2~ bes8 g f ees | ees'2. c4 | bes2 aes | r4 ees4 f ees |
	} \alternative {
		{
			bes'1~ | bes4 g c4. g8 | bes1~ | bes2 r4 aes |
		}
		{
			bes1~ | bes4 ees, g g | ees1~ | ees2 r4 ees |
		}
	}

%% part "B"
	f8 f f g aes4 g | bes bes2 ees,4 | f8 f f g aes4 g | bes2 r4 g |
	a4 b c b8 a | d4 d2 d4 | f2~ \tuplet 3/2 { f4 ees c } | f,2 r4 <bes, \parenthesize fis'> |

%% part "A"
	g'2. g4 | g2~ \tuplet 3/2 { g4 bes aes } | g2. g4 | f2 r4 d8 ees |
	c'2. c4 | bes2~ \tuplet 3/2 { bes4 c bes } | a2. f4 | aes?2 r4 g8 aes |
	bes2~ bes8 g f ees | ees'2. ees4 | ees2 f, | r4 f g aes |
	c1~ | c4 aes c ees | ees1~ | ees\fermata |
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>, Built at 10:31:22 23-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}




