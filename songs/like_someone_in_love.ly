

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
% title: Like Someone In Love
% style: Jazz
% composer: Johnny Burke, Jimmy Van Heusen
% poet: Johnny Burke, Jimmy Van Heusen
% piece: Moderately
% copyright: 1944 Bourne Co. and Dorsey Bros. Music, Inc. Division of Music Sales Corporation
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: a2084076-da7f-11e3-86db-a7e6565c22fc
% structure: ABAB'
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
	      \underline \sans "Like Someone In Love"
	      \fontsize #1 \lower #1  "- Johnny Burke, Jimmy Van Heusen"
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

  \tocItem \markup "Like Someone In Love / Johnny Burke, Jimmy Van Heusen"


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
		c2:maj7 c/b | c:6/a c/g | d:7/fis g:7/f | e:m7 ees:7 | \myEndLine
		d1:m7 | g2.:7 g4:9.5+ | c1:maj7 | g4:m7 c2:9 c4:9.5+ | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f2.:6 f4:5+ | b2:m7 e:7 | a1:maj7 | a:6 | \myEndLine
		a:m7 | d:7 | d1:7 | g:7.5+ | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2:maj7 c/b | c:6/a c/g | d:7/fis g:7/f | e:m7 ees:7 | \myEndLine
		d1:m7 | g2.:7 g4:9.5+ | c1:maj7 | g4:m7 c2:9 c4:9.5+ | \myEndLine
		\endPart

		\myMark "B'"
		\startPart
		f2.:6 f4:5+ | b2:m7 e:7 | a1:maj7 | d2.:9 dis4:dim | \myEndLine
		e2:m7 a:7 | d:m7 g:7.9- |
	} \alternative {
		{
			c a:m7 | d:9 g:7 | \myEndLineVoltaNotLast
		}
		{
			c f:m6 | c1 | \myEndLineVoltaLast
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
	\key c \major

	\repeat volta 2 {

	%% part "A"
		e4 e2 e4 | e4 a g e | d d2 b'4 | g1 |
		f4 f2 c'4 | b2. a4 | g4 g2 e'4 | d1 |

	%% part "B"
		d4 d2 cis4 | e d cis b | e,2 e~ | e1 |
		c'4 c2 b4 | d c b a | d,1 | dis |

	%% part "A"
		e4 e2 e4 | e a g e | d d2 b'4 | g1 |
		f4 f2 c'4 | b2. a4 | g4 g2 e'4 | d1 |

	%% part "B"
		d4 d2 cis4 | e d cis b | e, e2 e4 | fis2. fis4 |
		g4 g2 g4 | f d'2 b4 |
	} \alternative {
		{
			c1 | R |
		}
		{
			c1~ | c |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Late -- ly I find my -- self out gaz -- ing at stars,
	hear -- ing gui -- tars Like Some -- one In Love.

%% part "B"
	Some -- times the things I do a -- stound me,
	__ most -- ly when -- ev -- er you're a -- round me.

%% part "A"
	Late -- ly I seem to walk as though I had wings,
	bump in -- to things Like Some -- one In Love.

%% part "B"
	Each time I look at you I'm linmp as a glove
	and feel -- ing Like Some -- one In Love.

%% part "Volta"
	Love. __
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
		\smaller \smaller { "Copyright © 1944 Bourne Co. and Dorsey Bros. Music, Inc. Division of Music Sales Corporation" }
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

