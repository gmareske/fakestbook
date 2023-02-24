\version "2.23.12"

%\include "ob-macros.ly"
% this sets the default key to C if not already defined
#(define transpose-key (if (defined? 'transpose-key) transpose-key (ly:make-pitch 0 0 0)))
% uncomment the below line to lower the transposition by one octave
%#(define transpose-key (ly:pitch-transpose transpose-key (ly:make-pitch -1 0 0)))

\bookpart {

  \header {
    title = \markup {
      \score {
	{
	  \override TextScript.extra-offset = #'(0 . -4.5)
	  s4
	  s^\markup {
	    \fill-line {
	      \fontsize #1 \lower #1 \rotate #7 #"TIME"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans #"TITLE"
	      \fontsize #1 \lower #1 \concat { "- " #"COMPOSER" }
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
  }
  \noPageBreak

  % this text goes in the table of contents
  \tocItem \markup "TITLE / COMPOSER"
  %% THE ACTUAL MUSIC
  \score {
    <<

      \new ChordNames="Chords"
      \transpose c \transpose-key {
	\chordmode {
	  %% CHORDS GO HERE  
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

    \new Staff="Melody" {
      \new Voice="Voice"
      
      \transpose c \transpose-key {
	\relative c' {
				%\tempo "Allegro" 4 = 168
	  % MELODY GOES HERE
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
	%% LYRICS GO HERE
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
      %% make only the first clef visible
      \override Score.Clef.break-visibility = #'#(#f #f #f)

      %% make only the first time signature visible
      \override Score.KeySignature.break-visibility = #'#(#f #f #f)

      %% allow single-staff system bars
      \override Score.SystemStartBar.collapse-height = #1
    }
  }
  \noPageBreak
  \markup \column {
    %% just a little space
    \null
    \fill-line {
      \smaller \smaller { "COPYRIGHT" }
    }
    \fill-line {
      \smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>, Built at 10:30:58 23-02-2023, Engraved by lilypond 2.23.12" }
    }
    \fill-line {
      \smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
    }
  }
}