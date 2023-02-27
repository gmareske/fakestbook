

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
% title: Now's The Time
% style: Jazz
% composer: Charlie Parker
% piece: Fast Blues
% copyright: 1945, Atlantic Music Corp.
% copyrightextra: Renewed and assigned 1973, Atlantic Music Corp.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: cd56a8d8-da1d-11e3-a6ca-c3a55777c28e
% structure: Blues
% location: jfb:279
% idyoutuberemark1: The great Charlie Parker
% idyoutube1: ryNtmkfeJk4
% idyoutuberemark2: A much more modern version by Blakey and the Messengers
% idyoutube2: qq7xDN1G3Bc
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
	      \fontsize #1 \lower #1 \rotate #7 "Fast Blues"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Now's The Time"
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

  \tocItem \markup "Now's The Time / Charlie Parker"


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

	\partial 8 s8 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f1*4:7 | \myEndLine
		bes1:7 | bes2:7 b:dim7 | f1*2:7 | \myEndLine
		g1:m7 | c:7 | f:7 | g2:m7 c:7 | \myEndLine
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
	\tempo "Presto" 4 = 190
	\time 4/4
	\key f \major

	\partial 8 c8 |

	\repeat volta 2 {
		f f g c, f4 r8 c | f f g c, f4 r8 c | f f g c, f f g c, | f f g c, f4 r8 c |
		f f g c, f bes,4. | f'8 f g c, f b,!4. | f'8 f g c, f f g c, | f f g c, f4 r8 aes~ |
		\tuplet 3/2 { aes16 bes aes } f8 d b! d4 r | r8 g4. f8 g f ees | r c r c4 r8 r4 | r1 |
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
		\smaller \smaller { "Copyright © 1945, Atlantic Music Corp." }
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

