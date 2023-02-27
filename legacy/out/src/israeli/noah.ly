




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
                \fontsize #3 \lower #1 \rotate #7 "סמבה"
              \fontsize #8
              \override #'(offset . 7)
              \override #'(thickness . 6)
              \underline \sans "נח"
              \fontsize #1 \lower #1 \line {
	      		   	       "- יורם טהרלב / מתי כספי"

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

	\myWordMark "Intro"
	\startPart
	f1:m | bes:m | f:m | c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f:m | bes:m | f:m | c:7 | \myEndLine
	f:m | bes:m | f:m | c:7 | \myEndLine
	f:7 | bes:7 | c:7 | f | \myEndLine
	f:7 | bes:7 | c:7 | f:7 | \myEndLine
	bes | ees | ees:m7 | c:7 | \myEndLine
	f:m | bes:m | f:m | c:7 | \myEndLine
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
	\tempo "Allegro" 4 = 160
	\time 4/4
	\key f \minor

%% part "Intro"
	f8 aes bes b c f, c' b | bes f ees' d f, d' des f, | des' c f, c' b f bes aes | c, e g bes c4 c' |

%% part "A"
	f,,8 aes8~ aes2. | f'4 des8 bes4 g4 c8~ | c4 aes8 f4 c4 bes'8~ | bes4 g8 e4 c4. |
	f8 aes8~ aes2. | f'4 des8 bes4 g4 c8~ | c4 aes8 f4 c4 bes'8~ | bes4 g8 e4 c4. |
	g'4 f8 f4 c g'8~ | g f4 f2~ f8 | g4 f8 f4 c g'8~ | g f4 f c4. |
	g'4 f8 f4 c g'8~ | g f4 f bes,4. | g'4 f8 f4 c g'8~ | g f4 c'8~ c2 |
	c4 bes8 bes4 f c'8~ | c bes4 bes ees,4. | c'4 bes8 bes4 ges4 c8~ | c8 bes4 bes aes8 g aes~ |
	aes1 | f'4 des8 bes4 g f8~ | f c' bes aes bes aes f aes | c, e g bes c2 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "Intro"
	_ _ _ _ _ _ _ _
	_ _ _ _ _ _ _ _
	_ _ _ _ _ _ _ _
	_ _ _ _ _ _

%% part "A"
	נ -- ח- __ לא ש -- כ -- חנו איך __ ב -- ג -- שם ו -- __ ב -- ס -- ער
	נ -- ח- __ ל -- תי -- בה א -- ספ -- __ ת את ח -- יות __ ה -- י -- ער.
	שת -- יים, שת -- יים מ -- __ כל מין __
	ה -- אר -- יה ו -- ה -- __ מ -- מו -- תה, ה -- ג -- מל ו -- ה -- __ שי -- בו -- טה
	ו -- גם ה -- הי -- פו -- __ פו -- טם. __
	איך פ -- תח -- ת את __ ה -- צו -- הר
	ו -- מ -- תוך ה -- תכ -- __ לת ה -- ל -- ב -- נה __
	ב -- אה ה -- יו -- נה. __
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

	\myWordMark "Intro"
	\startPart
	f1:m | bes:m | f:m | c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f:m | bes:m | f:m | c:7 | \myEndLine
	f:m | bes:m | f:m | c:7 | \myEndLine
	f:7 | bes:7 | c:7 | f | \myEndLine
	f:7 | bes:7 | c:7 | f:7 | \myEndLine
	bes | ees | ees:m7 | c:7 | \myEndLine
	f:m | bes:m | f:m | c:7 | \myEndLine
	\endPart

	\endSong
	\endChords
}




\new Staff="Melody" {
\new Voice="Voice"
	\relative c'
	



{
	\tempo "Allegro" 4 = 160
	\time 4/4
	\key f \minor

%% part "Intro"
	f8 aes bes b c f, c' b | bes f ees' d f, d' des f, | des' c f, c' b f bes aes | c, e g bes c4 c' |

%% part "A"
	f,,8 aes8~ aes2. | f'4 des8 bes4 g4 c8~ | c4 aes8 f4 c4 bes'8~ | bes4 g8 e4 c4. |
	f8 aes8~ aes2. | f'4 des8 bes4 g4 c8~ | c4 aes8 f4 c4 bes'8~ | bes4 g8 e4 c4. |
	g'4 f8 f4 c g'8~ | g f4 f2~ f8 | g4 f8 f4 c g'8~ | g f4 f c4. |
	g'4 f8 f4 c g'8~ | g f4 f bes,4. | g'4 f8 f4 c g'8~ | g f4 c'8~ c2 |
	c4 bes8 bes4 f c'8~ | c bes4 bes ees,4. | c'4 bes8 bes4 ges4 c8~ | c8 bes4 bes aes8 g aes~ |
	aes1 | f'4 des8 bes4 g f8~ | f c' bes aes bes aes f aes | c, e g bes c2 |
}



}
	>>
	\midi {
	}
}







% Lyrics
\verticalSpace
\verticalSpace
\markup {
	\small {
		\fill-line {
			\hspace #0
			\concat {
				\right-column {

					\box "A"
					"נח - היונה כבר שבה עם עלה של זית"
					"נח - תן לנו לצאת ולחזור לבית"
					"כי כבר נמאסנו זה על זה"
					"האריה על הממותה, הגמל על השיבוטה"
					"וגם ההיפופוטם."
					"פתח לרגע את הצוהר"
					"ונעוף לתכלת הלבנה"
					"כך עם היונה."
				}
				\hspace #3
				\right-column {

					\box "A"
					"נח - כמה זמן נמשיך לשוט על פני המים?"
					"נח - כל החלונות סגורים כמעט חודשיים."
					"וכבר אין לנו אויר"
					"לאריה ולממותה לגמל ולשיבוטה"
					"וגם להיפופוטם."
					"פתח לרגע את הצוהר"
					"ואל תוך התכלת הלבנה"
					"שלח את היונה."
					\vspace #0.3

					\box "A"
					"נח - מה אתה דואג, הן כבר חדל הגשם"
					"נח - פתח את החלון, אולי הופיעה קשת"
					"ויראו אותה כולם"
					"האריה והממותה, הגמל והשיבוטה"
					"וגם ההיפופוטם."
					"פתח לרגע את הצוהר"
					"ואל תוך התכלת הלבנה"
					"שלח את היונה."
				}
			}
		}
	}
}


\noPageBreak
\markup \column {
%% just a little space
	\null
	\fill-line {
		\smaller \smaller { "-- עיזרו לי למלא את שורת זכויות היוצרים הזו --" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by מרק ולצר <mark.veltzer@gmail.com>, Built at 10:30:56 23-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}





