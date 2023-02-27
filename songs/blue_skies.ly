

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
% title: Blue Skies
% style: Jazz
% composer: Irving Berlin
% poet: Irving Berlin
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: fe14b29a-da80-11e3-a178-07c25bb937a6
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
	      \fontsize #1 \lower #1 \rotate #7 ""
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blue Skies"
	      \fontsize #1 \lower #1  "- Irving Berlin"
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

  \tocItem \markup "Blue Skies / Irving Berlin"


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
	\startSong
	\startChords

	\myMark "A"
	\startPart
	a1:m | e1:5+/gis | c1/g | d2.:9/fis f4:m | \myEndLine
	c1/g | f2:9 g:5+ | c1 | c1 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1:m | e1:5+/gis | c1/g | d2.:9/fis f4:m | \myEndLine
	c1/g | f2:9 g:5+ | c1 | c1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1 | f2:m c | f2:m c | f2:m c | \myEndLine
	c1 | f2:m c | f2:m c | g:7 c4 e:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1:m | e1:5+/gis | c1/g | d2.:9/fis f4:m | \myEndLine
	c1/g | f2:9 g:5+ | c1 | c1 | \myEndLine
	\endPart

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante" 4 = 88
	\time 4/4
	\key a \minor

%% part "A"
	a2 e' | r d8 c d4 | e1 | r2 d8 c d4 |
	e2 g, | r g8 a4. | c1~ | c |

%% part "A"
	a2 e' | r d8 c d4 | e1 | r2 d8 c d4 |
	e2 g, | r g8 a4. | c1~ | c |

%% part "B"
	c8 d e f g2 | aes8 g f4 g2 | f8 e d4 e2 | d8 c b4 c2 |
	c8 d e f g2 | aes8 g f4 g2 | f8 e d4 e2 | \tuplet 3/2 { d4 c b } c4 b |

%% part "A"
	a2 e' | r d8 c d4 | e1 | r2 d8 c d4 |
	e2 g, | r g4 a4 | c1~ | c |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Blue Skies smil -- ing at me, noth -- ing but blue skies do I see.

%% part "A"
	Blue -- birds sing -- ing a song, noth -- ing but blue -- birds all day long.

%% part "B"
	Nev -- er saw the sun shin -- ing so bright, nev -- er saw things go -- ing so right.
	Not -- ic -- ing the days hur -- ry -- ing by, when you're in love, my how they fly by.

%% part "A"
	Blue days all of them gone, noth -- ing but blue skies from now on.
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

