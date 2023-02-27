% \paper {
%   %% reduce spaces between systems and the bottom (taken from the lilypond
%   %% documentation and found the relevant variable)
%   %% the result of this is that I can fit 8 single staffs in one page
%   %% which is ideal for Jazz (think 32 bar divided into 8 lines of 4 bars each...).
%   %% I should really only apply this thing for Jazz tunes but that is a TODO item.
%   %% default is 4\mm - 3 already causes 8 staffs to take 2 pages
%   between-system-padding = 2\mm
%   %% default is 20\mm
%   %% between-system-space = 16\mm
%   %% ragged-last-bottom = ##f
%   %% ragged-bottom = ##f

%   %% make lilypond increase the distance of the footer from the bottom of the page
%   %% it seems that if you don't do something like this you're going to have
%   %% a real problem seeing the footer in postscript printing....
%   %%bottom-margin = 2.5\cm

%   %% from /usr/share/lilypond/2.12.3/ly/titling-init.ly
%   %% to stop lilypond from printing footers...
%   oddFooterMarkup = \markup {}

%   %% prevent lilypond from printing the headers...

%   scoreTitleMarkup = \markup {}
%   bookTitleMarkup = \markup {}
% }
				% reduce the font size (taken from the lilypond info documentation, default is 20)


				% JAZZY HEADER
\tocItem \markup "All of Me / Seymour Simons, Gerald Marks"

\markup {
  \score {
    {
      \override TextScript.extra-offset = #'(0 . -4.5)
      s4
      s^\markup {
	\fill-line {
	  \fontsize #3 \lower #1 \rotate #7 "Mod. Swing"
	  \fontsize #8
	  \override #'(offset . 7)
	  \override #'(thickness . 6)
	  \underline \sans "All Of Me"
	  \fontsize #1 \lower #1 \line {
	    "- Seymour Simons, Gerald Marks"

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
      \override TextScript.font-name = #"LilyJAZZText"
    }
  }
}


\noPageBreak

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
	c1*2:maj7 | e:7 | \myEndLine
	a:7 | d:m | \myEndLine
	e:7 | a:m | \myEndLine
	d:7 | d1:m7 | g:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1*2:maj7 | e:7 | \myEndLine
	a:7 | d:m | \myEndLine
	f1 | f:m | c2:maj7 e:m7 | a1:7 | \myEndLine
	d:m7 | g:7 | c2:6 \LPC ees:dim | d:m7 \RPC g:7 | \myEndLine
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
			 c'4 g8 e~ e2~ | e \tuplet 3/2 { c'4 d c } | b gis8 e~ e2~ | e1 |
			 a4. g8 e2~ | e4 dis \tuplet 3/2 { e bes' a } | g2 f~ | f1 |
			 e4. ees8 d2~ | d \tuplet 3/2 { e4 gis b } | d2 c~ | c1 |
			 b4. bes8 a2~ | a \tuplet 3/2 { a4 d b } | a1 | b |

			 %% part "B"
			 c4 g8 e~ e2~ | e \tuplet 3/2 { c'4 d c } | b gis8 e~ e2~ | e1 |
			 a4. g8 e2~ | e4 dis \tuplet 3/2 { e bes' a } | g2 f~ | f1 |
			 d'2 c4 b | d2. c4 | b2 e,4 g | b2. a4 |
			 c2 a4 c | e2 e | c1~ | c |
		       }

		     }
    }
    \new Lyrics="Lyrics" \lyricsto "Voice" {
      




      \lyricmode {

	%% part "A"
	All of me __
	why not take all of me __
	Can't you see __
	I'm no good with -- out you __

	Take my lips __
	I want to lose them __
	Take my arms __
	I'll ne -- ver use them __

	%% part "B"
	Your good -- bye __
	left me with eyes that cry __
	How can I __
	get a -- long with -- out you __

	You took the part
	that once was my heart
	So why not
	take all of me __
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
      c1*2:maj7 | e:7 | \myEndLine
      a:7 | d:m | \myEndLine
      e:7 | a:m | \myEndLine
      d:7 | d1:m7 | g:7 | \myEndLine
      \endPart

      \myMark "B"
      \startPart
      c1*2:maj7 | e:7 | \myEndLine
      a:7 | d:m | \myEndLine
      f1 | f:m | c2:maj7 e:m7 | a1:7 | \myEndLine
      d:m7 | g:7 | c2:6 \LPC ees:dim | d:m7 \RPC g:7 | \myEndLine
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
	c'4 g8 e~ e2~ | e \tuplet 3/2 { c'4 d c } | b gis8 e~ e2~ | e1 |
	a4. g8 e2~ | e4 dis \tuplet 3/2 { e bes' a } | g2 f~ | f1 |
	e4. ees8 d2~ | d \tuplet 3/2 { e4 gis b } | d2 c~ | c1 |
	b4. bes8 a2~ | a \tuplet 3/2 { a4 d b } | a1 | b |

	%% part "B"
	c4 g8 e~ e2~ | e \tuplet 3/2 { c'4 d c } | b gis8 e~ e2~ | e1 |
	a4. g8 e2~ | e4 dis \tuplet 3/2 { e bes' a } | g2 f~ | f1 |
	d'2 c4 b | d2. c4 | b2 e,4 g | b2. a4 |
	c2 a4 c | e2 e | c1~ | c |
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
    \smaller \smaller { "Copyright © 1931 Bourne Co. Copyright Renewed" }
  }
  \fill-line {
    \smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>, Built at 10:30:58 23-02-2023, Engraved by lilypond 2.23.12" }
  }
  \fill-line {
    \smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
  }
}





