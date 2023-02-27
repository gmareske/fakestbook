




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
              \fontsize #8
              \override #'(offset . 7)
              \override #'(thickness . 6)
              \underline \sans "Ave Maria"
              \fontsize #1 \lower #1 \line {
	      		   	       "- Charles Gounod"

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

	\startPart
	f1 |
	g:m/f |
	c:7/e |
	f |
	d:m/f | %% 5
	g/f |
	c/e |
	f/e |
	d:m7 |
	g:7 | %% 10
	c |
	c:dim7 |
	g:m/bes |
	bes:dim7 |
	f/a | %% 15
	bes/a |
	g:m7 |
	c:7 |
	f |
	f:7 | %% 20
	bes:maj7 |
	b:dim7 |
	f:m/c |
	bes:m6/des |
	c:7 |
	f/c |
	c:7sus4 |
	c:7 |
	f:dim7/c |
	f/c |
	c:7sus4 |
	c:7 |
	f:7 |
	bes/f |
	g:m7/f |
	c1:7sus4/f |
	f |
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
	\tempo "Reverently" %%4 = 130
	\time 4/4
	\key c \major

%% part "A"
	a'1 |
	bes2. bes4 |
	c2.( g4) |
	a1 |
	d2( d8 d,8) e8 f8 |
	g4.( a8) g2 |
	c2(c8 c,8) d8 e8 |
	f4.( g8) f2 |
%% Second System
	f'2( f8 f,8) g8( a8) |
	b4.( a8 g4) d4 |
	e2 r4 g4 |
	a2( a8) a8( bes8 c8) |
	d4. d,8 d2 |
	g2( g8) g8 a8( bes8) |
	c4.( c,8) c2 |
%% Third System
	f2( f8) f8( g8 a8) |
	bes2( bes8) bes8( c8 d8) |
	e4. d8 c4( g4) |
	a2. r4 |
	c2 a4( a8.) a16 |
	d2 d,4 r4 |
	d'2 f,4( d'8.) d16 |
%% Fourth System
	f2 aes,4~ aes8. f'16 |
	f2 g,4 r4 |
	g2~ g8 g8( f8) e8 |
	c'4.( a8) f2 |
	bes2( bes8) bes8 a8 g8 |
	g'4. e8 c4 r |
	d2( d8) d8 e8( f8) |
%% Fifth System
	a2( a8 f8) c8 a8 |
	g2( g8 d'8) e8( d8) |
	c8( g'8) e8( c8) bes8( g8) e8( c8) |
	f1 |
	f2 r |
	c'1 |
	c1 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	A -- ve, Ma -- ri -- a! Gra -- ti -- a ple -- na. Do -- mi -- nus Te -- cum
	be -- ne -- dic -- ta tu in mu -- li -- e -- ri -- bus et be -- ne dic -- tus
	fruc -- tus ven tris tu -- i Je -- sus. Sanc -- ta Ma -- ri -- a. Sanc -- ta Ma --
	ri -- a Ma -- ri -- a, O -- ra -- pro no -- bis no -- bis pec -- ca -- to -- ri -- bus nuc et in
	Ho -- ra, in ho -- ra mor -- tis nos -- trae. A -- men. A -- men.
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

	\startPart
	f1 |
	g:m/f |
	c:7/e |
	f |
	d:m/f | %% 5
	g/f |
	c/e |
	f/e |
	d:m7 |
	g:7 | %% 10
	c |
	c:dim7 |
	g:m/bes |
	bes:dim7 |
	f/a | %% 15
	bes/a |
	g:m7 |
	c:7 |
	f |
	f:7 | %% 20
	bes:maj7 |
	b:dim7 |
	f:m/c |
	bes:m6/des |
	c:7 |
	f/c |
	c:7sus4 |
	c:7 |
	f:dim7/c |
	f/c |
	c:7sus4 |
	c:7 |
	f:7 |
	bes/f |
	g:m7/f |
	c1:7sus4/f |
	f |
	\endPart

	\endSong
	\endChords
}



\new Staff="Melody" {
\new Voice="Voice"
	\relative c'
	



{
	\tempo "Reverently" %%4 = 130
	\time 4/4
	\key c \major

%% part "A"
	a'1 |
	bes2. bes4 |
	c2.( g4) |
	a1 |
	d2( d8 d,8) e8 f8 |
	g4.( a8) g2 |
	c2(c8 c,8) d8 e8 |
	f4.( g8) f2 |
%% Second System
	f'2( f8 f,8) g8( a8) |
	b4.( a8 g4) d4 |
	e2 r4 g4 |
	a2( a8) a8( bes8 c8) |
	d4. d,8 d2 |
	g2( g8) g8 a8( bes8) |
	c4.( c,8) c2 |
%% Third System
	f2( f8) f8( g8 a8) |
	bes2( bes8) bes8( c8 d8) |
	e4. d8 c4( g4) |
	a2. r4 |
	c2 a4( a8.) a16 |
	d2 d,4 r4 |
	d'2 f,4( d'8.) d16 |
%% Fourth System
	f2 aes,4~ aes8. f'16 |
	f2 g,4 r4 |
	g2~ g8 g8( f8) e8 |
	c'4.( a8) f2 |
	bes2( bes8) bes8 a8 g8 |
	g'4. e8 c4 r |
	d2( d8) d8 e8( f8) |
%% Fifth System
	a2( a8 f8) c8 a8 |
	g2( g8 d'8) e8( d8) |
	c8( g'8) e8( c8) bes8( g8) e8( c8) |
	f1 |
	f2 r |
	c'1 |
	c1 |
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
		\smaller \smaller { "Copyright © Public Domain" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>, Built at 10:30:53 23-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}





