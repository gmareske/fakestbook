

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
% title: One By One
% style: Jazz
% composer: Wayne Shorter
% piece: Shuffle
% copyright: 1963 Miyako Music
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 654dc682-0e83-11e4-8688-1f470b65356e
% structure: AABA
% structureremark: The second half of the B part is the same as the second half of the A part. Didn't see this a lot.
% location: jfb:292
% idyoutuberemark1: Blakey with the kids
% idyoutube1: Hmu57-USSs0
% idyoutuberemark2: Wyntons version (he learned it from Blakey...:)
% idyoutube2: -phKoexy_E0
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
	      \fontsize #1 \lower #1 \rotate #7 "Shuffle"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "One By One"
	      \fontsize #1 \lower #1  "- Wayne Shorter"
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

  \tocItem \markup "One By One / Wayne Shorter"


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
	\repeat volta 2 {
		a4:m7.5- d:7.5+.9+ aes2:7 | g:m7 f4:m7 bes:7 | ees:maj7.9 c:m11 f2:7.9 | bes1:maj7.9 | \myEndLine
		a2:m7.5- aes:7 | g:m7 bes:7/f | e:m7.5- d:7.5+.9+ | g1:m11 | \myEndLine
	}
	\endPart

	\myMark "B"
	\startPart
		e2:7.9+ a:7.5+.9+ | d:m7 b:m7.5- | e:m7.5- a:7.5+.9+ | d1:m7 | \myEndLine
		a2:m7.5- aes:7 | g:m7 bes:7/f | e:m7.5- d:7.5+.9+ | g1:m11 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a4:m7.5- d:7.5+.9+ aes2:7 | g:m7 f4:m7 bes:7 | ees:maj7.9 c:m11 f2:7.9 | bes1:maj7.9 | \myEndLine
	a2:m7.5- aes:7 | g:m7 bes:7/f | e:m7.5- d:7.5+.9+ | g1:m11 | \myEndLine
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
	\tempo "Allegro" 4 = 128
	\time 4/4
	\key g \minor

%% part "A"
	\repeat volta 2 {
		d4 f r8 d4 bes8~ | bes2 d4 f | a f r8 d c d~ | d1 |
		r8 des' c g bes bes c f, | g4 bes8 g bes bes c bes | d4 c8 g bes bes c g~ | g1 |
	}

%% part "B"
	r8 aes' g d f f g d~ | d1~ | d~ | d2. f4 |
	r8 des c g bes bes c f, | g4 bes8 g bes bes c bes | d4 c8 g bes bes c g~ | g1 |

%% part "A"
	d4 f r8 d4 bes8~ | bes2 d4 f | a f r8 d c d~ | d1 |
	r8 des' c g bes bes c f, | g4 bes8 g bes bes c bes | d4 c8 g bes bes c g~ | g1 |
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
		\smaller \smaller { "Copyright © 1963 Miyako Music" }
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

