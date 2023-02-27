

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
% title: Solar
% style: Jazz
% composer: Miles Davis
% piece: Jazz
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 841f9004-4477-11e2-acde-078065be2912
% structure: A
% structureremark: The 12 bars have a kind of blues structure feel to them
% location: rbk1:386
% idyoutuberemark1: Metheny/Holland/Hancock/DeJohnette kickass performance
% idyoutube1: FAYt3a-c_k0
% idyoutuberemark2: Classic miles davis
% idyoutube2: 9GADuMRXMRw
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
	      \underline \sans "Solar"
	      \fontsize #1 \lower #1  "- Miles Davis"
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

  \tocItem \markup "Solar / Miles Davis"


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
		c1*2:m | g1:m7 | c:7 | \myEndLine
		f1*2:maj7 | f1:m7 | bes:7 | \myEndLine
		ees:maj7 | ees2:m7 aes:7 | des1:maj7 | d2:m7.5- g:7.9- | \myEndLine
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
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key c \major

	\repeat volta 2 {
		r8 c'4. b4 d8 c | r g4.~ g a8 | bes4 bes8 bes a4 c8 bes~ | bes1 |
		r8 a4. gis4 bes8 a | r c,4.~ c4 f8 g | aes4 aes8 aes g4 bes8 aes~ | aes2. r8 g~ |
		g4 f8 ees d c4 ges'8~ | ges4 f8 ees des c4 f8~ | f1 | r8 d! ees f g aes b!4 |
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

