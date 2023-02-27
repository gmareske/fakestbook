

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
% title: Blue In Green
% style: Jazz
% composer: Miles Davis, Bill Evans
% piece: Slowly
% copyright: 1959 JAZZ HORN MUSIC CORP. & WARNER-TAMERLANE PUBLISHING CORP.
% copyrightextra: WARNER-TAMERLANE PUBLISHING CORP. administers on behalf of itself and JAZZ HORN MUSIC CORP.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: c73decf2-e30c-11e3-b12b-dbe41a94d84d
% structure: A
% location: jfb:64
% idyoutuberemark1: Original from Kind of Blue
% idyoutube1: PoPL7BExSQU
% idyoutuberemark2: Bill Evans in a piano version
% idyoutube2: mW_7gRH7ASE
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blue In Green"
	      \fontsize #1 \lower #1  "- Miles Davis, Bill Evans"
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

  \tocItem \markup "Blue In Green / Miles Davis, Bill Evans"


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
	bes1:maj7.11+ | a:7.9+ | d2.:m9 des4:7 | c2:m9 f:7.9- |
	bes1:maj7 | a:7.5+.9+ | \myEndLine
	d:m6.9 | e:7.5+.9+ | a:m9 | d:m9 |
	bes:maj7.11+ | a2.:7.9+ a4:7.9- | d1:m6.9 | \myEndLine
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
	\key c \major

%% part "A"
	e'2. d4 | c2. bes4 | a2. g4 | f d'2. |
	e,4. d8 cis d f a | c2. a4 |
	g2. f4 | c'2. gis4 | b2. a4 | f'2. cis4 |
	e2. d4 | c2. bes4 | a1\fermata |
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
		\smaller \smaller { "Copyright © 1959 JAZZ HORN MUSIC CORP. & WARNER-TAMERLANE PUBLISHING CORP." }
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

