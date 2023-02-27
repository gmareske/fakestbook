

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
% title: St. Thomas
% style: Jazz
% composer: Sonny Rollins
% piece: Latin/Calypso
% copyright: 1963, Prestigve Music
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ef0827e0-f690-11e0-ba56-0019d11e5a41
% structure: AABC
% structureremark: The tune is so short and fast that some see it as just A
% location: jfb:357
% idyoutuberemark1: The classic version from Saxophone Colossus
% idyoutube1: UA2XIWZxMKM
% idyoutuberemark2: Kenny Drew on Piano
% idyoutube2: Ed8UuEH41XQ
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
	      \fontsize #1 \lower #1 \rotate #7 "Latin/Calypso"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "St. Thomas"
	      \fontsize #1 \lower #1  "- Sonny Rollins"
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

  \tocItem \markup "St. Thomas / Sonny Rollins"


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
		c1 | a:7 | d2:m7 g4:7 c~ | c2 g:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c1 | a:7 | d2:m7 g4:7 c~ | c1 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		e1:m7.5- | a:7 | d:m7 | g:7 | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		c:7 | f2 fis:dim7 | c/g g4:7 c~ | c1 | \myEndLine
		\endPart
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
	\tempo "Presto" 4 = 200
	\time 4/4
	\key c \major

	\repeat volta 2 {

	%% part "A"
		r4 g'8 c r b r a | g4 a e f | g c b c | r1 |

	%% part "A"
		r4 g8 c r b r a | g4 a e f | g c b c | r1 |

	%% part "B"
		e2 f4. g8 | r1 | f2 e4. d8 | r1 |

	%% part "C"
		e2 d | c a | g4 c b c | r1 |
	}
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
		\smaller \smaller { "Copyright © 1963, Prestigve Music" }
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

