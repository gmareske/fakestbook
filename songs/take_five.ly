

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
% title: Take Five
% style: Jazz
% composer: Paul Desmond
% piece: Moderately
% copyright: 1960 (Renewed) Desmond Music Company (U.S.A.) and Derry Music Company (Canada)
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 86e17438-da80-11e3-9f6f-832caca8efee
% structure: ABA
% location: rbk1:420
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
	      \underline \sans "Take Five"
	      \fontsize #1 \lower #1  "- Paul Desmond"
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

  \tocItem \markup "Take Five / Paul Desmond"


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

	\partial 2 s2 |

	\myMark "A"
	\startPart
	d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | \myEndLine
	d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	bes2. c2:7 | a2.:m7 d2:m | g2.:m7 c2:7 | f2. f2:7 | \myEndLine
	bes2. c2:7 | a2.:m7 d2:m | g2.:m7 c2:7 | e2.:m7 a2:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | \myEndLine
	d2.:m a2:m7 | d2.:m a2:m7 | d2.:m a2:m7 | d2.:m d2:m | \myEndLine
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
	\tempo "Andante Moderato" 4 = 88
	\time 5/4
	\key d \minor

	\partial 2 a8 d f g |

%% part "A"
	gis a gis g f4 a, c | d2. \tuplet 3/2 { e16 f e } d8 c4 | d2. \tuplet 3/2 { c16 d c } a8 g4 | a2.~ a8 d f g |
	gis a gis g f4 a, c | d2. \tuplet 3/2 { e16 f e } d8 c4 | d2. \tuplet 3/2 { c16 d c } a8 g4 | a2.~ a2 |

%% part "B"
	d'8 f4 d8 bes4 g8 a bes b | c e4 c8 a4 f8 g gis a | bes8 d4 bes8 g4 e8 f g gis | a gis a bes c4 c8 b c cis |
	d8 f4 d8 bes4 g8 a bes b | c e4 c8 a4 f8 g gis a | bes8 d4 bes8 g4 e8 g c bes | a2. a,8 d f g |

%% part "A"
	gis a gis g f4 a, c | d2. \tuplet 3/2 { e16 f e } d8 c4 | d2. \tuplet 3/2 { c16 d c } a8 g4 | a2.~ a8 d f g |
	gis a gis g f4 a, c | d2. \tuplet 3/2 { c16 d c } a8 g4 | a2. \tuplet 3/2 { e'16 f e } d8 c4 | d2.~ d2 |
}
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
		\smaller \smaller { "Copyright © 1960 (Renewed) Desmond Music Company (U.S.A.) and Derry Music Company (Canada)" }
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

