

% from here everything needs to go into a loop

% include anything the user wants before the bookpart starts







% this sets the default key to middle C if not already defined
#(define transpose-key (if (defined? 'transpose-key) transpose-key (ly:make-pitch 0 0 0)))
%#(define transpose-key (ly:pitch-transpose transpose-key (ly:make-pitch -1 0 0)))

\bookpart {

% this causes the variables to be defined...













% THIS FILE WAS TRANSLATED FROM THE OPENBOOK PROJECT LOCATED AT https://github.com/veltzer/openbook
% dump all the metadata into comments on the file because why not
% METADATA
% title: Bye Bye Blackbird
% style: Jazz
% composer: Ray Henderson
% poet: Mort Dixon
% piece: Moderately
% copyright: 1926 (Renewed) Warner Bros. Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 7b863bbe-f2a2-11e0-9257-0019d11e5a41
% structure: ABCD
% location: rbk2:51,jfb:75
% idyoutube1: HMPHMu7LVhQ
% /METADATA

% now play with the variables that depend on language



% calculate the tag line


% calculate the typesetby






\header {
    title = \markup {
      \score {
	{
	  \override TextScript.extra-offset = #'(0 . -4.5)
	  s4
	  s^\markup {
	    \fill-line {
	      \fontsize #1 \lower #1 \rotate #7 "Moderately"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Bye Bye Blackbird"
	      \fontsize #1 \lower #1  "- Mort Dixon / Ray Henderson"
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

  \tocItem \markup "Bye Bye Blackbird / Ray Henderson, Mort Dixon"


% include the preparatory stuff, if there is any

% calculate the vars



% score for printing
\score {
	<<

\new ChordNames="Chords"
	\with {
		\remove "Bar_engraver"
	}
% # transpose with 'inline' is true!
	\transpose c \transpose-key {


\chordmode {
	\startChords
	\startSong

	\repeat volta 2 {

		\myMark "A"
		\startPart
		f1. d2:7 | g:m7 c:7.9 | f1 | \myEndLine
		f/a | aes:dim7 | g2:m7 c1.:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g2:m ees/g | g:m6 ees/g | g1:m7 | c:7 | \myEndLine
		g:m7 | c:7 | f2:maj7 f1.:6 | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		f1*2:7 | a1:m7.5- | d:7 | \myEndLine
		g1*2:m | g1:m7.5- | c:7 | \myEndLine
		\endPart

		\myMark "D"
		\startPart
		f1*2 | ees1:7 | d:7 | \myEndLine
		g1.:m7 c2:7 |
	} \alternative {
		{
			f d:m7 | g:m7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f bes | bes:m6 f:6 | \myEndLineVoltaLast \endPart
		}
	}

	\endSong
	\endChords
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Moderato" 4 = 116
	\time 4/4
	\key f \major

	\repeat volta 2 {

	%% part "A"
		a'4 a a a | bes a a2 | a4 g g2 | g4 f f2 |
		f1 | g | f2 e2~ | e1 |

	%% part "B"
		bes'4 bes bes bes | c bes bes2 | bes4 a a2 | a4 g g2 |
		g1 | a | g2 f~ | f1 |

	%% part "C"
		f4 c' c c | c bes a g | g1 | fis |
		d4 bes' bes bes | bes a g f | f1 | e |

	%% part "D"
		a4 a a a | bes a a2 | a4 g g2 | g4 fis fis2 |
		g2 bes~ | bes e, |
	} \alternative {
		{
			f2 r | r1 |
		}
		{
			f1~ | f |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Pack up all my care and woe,
	here I go, Sing -- ing low,
	Bye Bye Black -- bird, __

%% part "B"
	Where some -- bod -- y waits for me,
	sug -- ar's sweet, so is she,
	Bye Bye Black -- bird. __

%% part "C"
	No one here can love or un -- der -- stand me,
	oh, what hard luck sto -- ries they all hand me.

%% part "D"
	Make my bed and light the light,
	I'll ar -- rive late to -- night,
	black -- bird __ bye bye.
	bye. __
}

}
	>>
	\layout {
%% make only the first clef visible
        \override Score.Clef #'break-visibility = #'#(#f #f #f)
%% make only the first time signature visible
	\override Score.KeySignature #'break-visibility = #'#(#f #f #f)
%% allow single-staff system bars
	\override Score.SystemStartBar #'collapse-height = #1
	}
}
\noPageBreak


\markup \column {
%% just a little space
	\null
	\fill-line {
		\smaller \smaller { "Copyright © 1926 (Renewed) Warner Bros. Inc." }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

