

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
% title: Bessies's Blues
% style: Jazz
% composer: John Coltrane
% piece: Blues
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 46708476-aa13-11e4-bb67-3860779cb560
% structure: Blues
% location: rbk1:42
% idyoutuberemark1: John Coltrane in the classic version
% idyoutube1: XMC2bvHk0Bo
% idyoutuberemark2: Chick Corea in a modern take
% idyoutube2: XyR4MrpkRjY
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
	      \underline \sans "Bessies's Blues"
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

  \tocItem \markup "Bessies's Blues / John Coltrane"


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
	ees1:7 | aes:7 | ees1*2:7 | \myEndLine
	aes:7 | ees:7 | \myEndLine
	bes1:7 | aes:7 | ees:7 | bes:7 | \myEndLine
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
	\tempo "Presto" 4 = 200
	\time 4/4
	\key c \major

%% part "A"
	g'4 ees8 des~ des2 | c'4 aes8 ges~ ges4. ees8 | g ees g4 g8 ees!4 g8~ | g ees d des~ des2 |
	r8 c'4 bes8 c aes r4 | c4. aes8 r ges4 ees8 | g ees g4 g8 g4 g8~ | g ees d des r g4 ges8 |
	f4 d bes d8 f | ees c aes4 c8 ees!4. | r8 f ees c r2 | r f8 g aes bes |
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

