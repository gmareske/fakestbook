

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
% title: Serenade To A Cuckoo
% style: Jazz
% composer: Roland Kirk
% piece: Med
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 7f78edea-47a9-11e2-8d61-0f0bb7c14483
% structure: AB
% location: rbk1:377
% idyoutuberemark1: Jethro Tull doing it ?!?
% idyoutube1: Zh4GZJlQCfY
% idyoutuberemark2: Another one from Jethro
% idyoutube2: wHw4N_lZl10
% idyoutuberemark3: The original Roland Kirk!
% idyoutube3: _q8Ye58uL5o
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
	      \fontsize #1 \lower #1 \rotate #7 "Med"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Serenade To A Cuckoo"
	      \fontsize #1 \lower #1  "- Roland Kirk"
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

  \tocItem \markup "Serenade To A Cuckoo / Roland Kirk"


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
		f2:m f:m/ees | f:m/des f:m/c | f2:m f:m/ees | f:m/des f:m/c | \myEndLine
		f2:m f:m/ees | f:m/des f:m/c | f2:m f:m/ees | f:m/des f:m/c | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		bes:m7 ees:7 | aes:maj7 des:maj7 | g:m7.5- c:7 | f:m f:7 | \myEndLine
		bes:m7 ees:7 | aes:maj7 des:maj7 | g:m7.5- c:7 | f1:m | \myEndLine
		\endPart
	}

	\myMark "End"
	\startPart
	g2:m7.5- c:7 | f1:m | \myEndLine
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
	\key f \minor

	\repeat volta 2 {

	%% part "A"
		r8 c'4 f,8 c'4. f,8 | c' c bes bes aes f4 ees8 | f4 f8 f aes aes4 c8~ | c1 |
		r8 c4 f,8 c'4. f,8 | c' c bes bes aes f4 ees8 | f4 f8 f aes f ees f~ | f1 |

	%% part "B"
		r8 f'4-^ r8 bes,2 | r8 ees4-^ r8 aes,2 | r8 des4-^ r8 g,2 | g8 aes bes c~ c2 |
		r8 f4-^ r8 bes,2 | r8 ees4-^ r8 aes,2 | r8 des4-^ r8 g,2 | g8 aes g f~ f2 |
	}

%% part "Ending"
	c'8 c c ees-^ r des4.-> | c4-> r r2 |
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

