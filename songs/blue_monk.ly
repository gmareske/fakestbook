

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
% title: Blue Monk
% style: Jazz
% composer: Thelonius Monk
% piece: Blues
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 4cc04ec0-e8b6-11e3-a334-5bb66fd360f0
% structure: A
% location: rbk1:54
% idyoutuberemark1: Classic Monk...
% idyoutube1: FRUWtrgTpcs
% idyoutuberemark2: Bobby McFerrin and Chick Corea
% idyoutube2: u0LDlgOsp_k
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
	      \fontsize #1 \lower #1 \rotate #7 "Blues"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blue Monk"
	      \fontsize #1 \lower #1  "- Thelonius Monk"
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

  \tocItem \markup "Blue Monk / Thelonius Monk"


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

	\myMark "A"
	\startPart
	bes1 | ees:7 | bes2 f:7 | bes bes:7 | \myEndLine
	ees1 | e:dim7 | bes2 f:7 | bes1 | \myEndLine
	f1*2:7 | bes1. \OPC f2:7 | \myEndLine
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
	\key bes \major

%% part "A"
	d8 ees e f~ f2 | g8 gis a bes~ bes2 | f8 g! f e! ees f, cis' d~ | d des4 c8~ c2 |
	g'8 gis a bes~ bes2 | bes8 b c des~ des2 | f,8 g f e! ees f, cis' d~ | d2. \tuplet 3/2 { f8 f f } |
	f f,4.~ f2 | f'8 g f e ees f, cis' d~ | d4 f8 g f e ees f, | cis' d4.~ d2 |
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

