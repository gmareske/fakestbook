

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
% title: I'm Sitting On Top Of The World
% style: Jazz
% composer: Ray Handerson
% poet: Sam M. Lewis and Joel Young
% piece: Moderately
% copyright: 1925 Leo Feist, INC.
% copyrightextra: Renewed 1953 Warock Corp.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 8c31fdb4-da7f-11e3-ad9a-d3417ee0a02e
% structure: AABA
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
	      \underline \sans "I'm Sitting On Top Of The World"
	      \fontsize #1 \lower #1  "- Sam M. Lewis and Joel Young / Ray Handerson"
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

  \tocItem \markup "I'm Sitting On Top Of The World / Ray Handerson, Sam M. Lewis and Joel Young"


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

	\partial 4 s4 |

	\repeat volta 2 {

		\myMark "A"
		\startPart
		f2 f4:maj7 f:7 | bes1 | f | f | \myEndLine
		g:7 | c:7 | f2 g4:m f/a | g2:m7 c:7.5+ | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f f4:maj7 f:7 | bes1 | f | f | \myEndLine
		g:7 | c:7 | f | f:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		bes | e:7 | f | f | \myEndLine
		d2:m d:m7+ | d:m7 d:m6 | g1:7 | c2.:7 c4:7.5+ | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 f4:maj7 f:7 | bes1 | f2 c:9.5+ | f1 | \myEndLine
		g2:7 g:7.5-/des | c1:7 |
	} \alternative {
		{
			f2 des:7 | g:7 c:7.5+ | \myEndLineVoltaNotLast
		}
		{
			f bes | f1 | \myEndLineVoltaLast
		}
	}
	\endPart

	\endSong
	\endChords
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Allegro" 4 = 130
	\time 2/2
	\key f \major

	\partial 4 c'4 |

%% part "A"
	\repeat volta 2 {
		c a r c | d bes r d | c1~ | c4 c,8 c~ c d f4 | g1~ | g4 g8 g~ g a g4 | f1~ |
		f2. c'4 |

		c a r c | d bes r d | c1~ | c4 c,8 c~ c d f4 | g1~ | g4 g8 g~ g a g4 | f1~ |
		f4 f8 g a bes c cis | d4 bes d4. bes8 | d4 e2 d4 | c c8 c~ c b c4 | a1 | a4 f a f | a d2. |
		r4 a8 a~ a d a4 | g2. c4 |

		c a r c | d bes r d | c1~ | c4 c,8 c~ c d f4 | g1~ | g4 c8 c~ c g a4 |
	} \alternative {
		{
			f1~ | f2. c'4 |
		}
		{
			f,1~ | f2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	I'm Sit -- ting On Top Of The World, __ just roll -- ing a -- long, __ just roll -- ing a -- long. __

	I'm quit -- ing the blues of the world, __ just sing -- ing a song, __ just sing -- ing a song. __

	"\"Glor" -- y Hal -- el -- lu -- "jah,\"" I just phoned the Par -- son, "\"Hey," Par get read -- y to "call.\"" Just like Hump -- ty Dump -- ty,
	I'm go -- ing to fall, I'm Sit -- ting On Top Of The World, __ just roll -- ing a long, __
	just roll -- ing a long. __ I'm
	long. __
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
		\smaller \smaller { "Copyright © 1925 Leo Feist, INC." }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

