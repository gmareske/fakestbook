

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
% title: Watermelon Man
% style: Jazz
% composer: Herbie Hancock
% piece: 16-Bar Blues
% copyright: 1962, 1963 & 1965 By Hancock Music Co., New York, NY
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 359f7428-a26f-11df-ad8c-0019d11e5a41
% structure: 16 bar Blues
% location: rbk3:334
% idyoutube1: 4z8Rt4nvd-I
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
	      \fontsize #1 \lower #1 \rotate #7 "16-Bar Blues"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Watermelon Man"
	      \fontsize #1 \lower #1  "- Herbie Hancock"
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

  \tocItem \markup "Watermelon Man / Herbie Hancock"


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
	f1*4:7 | \myEndLine
	bes1*2:7 | f:7 | \myEndLine
	c1:7 | bes:7 | c:7 | bes:7 | \myEndLine
	c:7 | bes:7 | f1*2:7 | \myEndLine
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
	ees'1\p\<~ | ees4\! f,8 f <aes c> ( <bes d>4-. ) f8~ | f1~ | f2 r |
	f'1\p\<~ | f4\! f,8 f <aes c> ( <bes d>4-. ) f8~ | f1~ | f2 r |
	r4 c'8 ( c g'4 a | aes8 g f d f4 g-. ) |
	r c,8 ( c g'4 a | aes8 g f d c4 d-. ) |
	r c8 ( c g'4 aes | \mark \markup { \italic { break } } f-. ) f,8 f <aes c> ( <bes d>4-. ) f8~ | f1 | r |
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
		\smaller \smaller { "Copyright © 1962, 1963 & 1965 By Hancock Music Co., New York, NY" }
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

