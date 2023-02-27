

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
% title: Blue Trane
% style: Jazz
% composer: John Coltrane
% piece: Fiercly
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b303b0a6-95e4-11e4-acdf-3860779cb560
% structure: Minor Blues
% location: rbk1:58
% idyoutuberemark1: John Coltrane in the original tune
% idyoutube1: S1GrP6thz-k
% idyoutuberemark2: Bireli Lagrene & John McLaughlin Blue Train
% idyoutube2: xe2jVU4WixY
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
	      \fontsize #1 \lower #1 \rotate #7 "Fiercly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blue Trane"
	      \fontsize #1 \lower #1  "- John Coltrane"
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

  \tocItem \markup "Blue Trane / John Coltrane"


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

	\partial 8*5 s8 bes2:7 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		c1:m | f2:m7 bes:7 | c1:m | bes2:m7 ees:7 | \myEndLine
		f1:m | f2:m7 bes:7 | c1:m | a2:m7 d:7 | \myEndLine
		g1:m | f2:m7 bes:7 |
	} \alternative {
		{
			c1:m | f2:m7 bes:7 | \myEndLineVoltaNotLast
		}
		{
			c1:m7.5- | c1:m | \myEndLineVoltaLast
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
	\time 4/4
	\key c \minor

	\partial 8*5 g'8 bes d bes c~ |

%% part "A"
	\repeat volta 2 {
		c1~ | c4-^ r8 g bes d bes c~ | c1~ | c4-^ r8 c ees g ees f~ |
		f1~ | f4-^ r8 g, bes d bes c~ | c1~ | c4-^ r8 g c d c bes~ |
		bes1~ | bes4-^ r8 g bes d bes c~ |
	} \alternative {
		{
			c1~ | c4-^ r8 g bes d bes c~ |
		}
		{
			c1~ | c4-^_\markup { \italic { Fine } } r4 r2 |
		}
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

