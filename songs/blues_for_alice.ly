

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
% title: Blues For Alice
% style: Jazz
% composer: Charlie Parker
% piece: Jazz
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 9bd9980c-9628-11e4-80e9-3860779cb560
% structure: Blues
% location: rbk1:57
% idyoutuberemark1: The Charlie Parker original
% idyoutube1: 4s5FZBisaf8
% idyoutuberemark2: Roland Kirk in a good be-bop version
% idyoutube2: d2yQAfOqTf4
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
	      \fontsize #1 \lower #1 \rotate #7 "Jazz"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blues For Alice"
	      \fontsize #1 \lower #1  "- Charlie Parker"
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

  \tocItem \markup "Blues For Alice / Charlie Parker"


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
	f1:maj7 | e2:m7.5- a:7.9- | d:m7 g:7 | c:m7 f:7 | \myEndLine
	bes1:7 | bes2:m7 ees:7 | a:m7 d:7 | aes:m7 des:7 | \myEndLine
	g1:m7 | c:7 | f2 d:m7 | g:m7 c:7 | \myEndLine
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
	\key f \major

%% part "A"
	f'4 c8 a e'4 c8 a | d e b c cis bes g gis | a4 f8 d g a f e | \tuplet 3/2 { ees g bes } d des r f, \tuplet 3/2 { f g f } |
	c'4 bes8 f aes bes, r g' | ees' des aes f c' f, g a~ | a4 e8 c d4 r8 des'~ | des4 ces8 ges bes4 r8 aes |
	\tuplet 3/2 { g4 f' f } f8 d bes g | a g c bes ees4 r8 c~ | c4 a8 f g4 r8 d'~ | d4 bes8 f a4 r |
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

