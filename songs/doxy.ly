

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
% title: Doxy
% style: Jazz
% composer: Sonny Rollins
% piece: Medium Groove
% copyright: 1963 Prestige Music Co, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: c921579e-a26e-11df-9a5c-0019d11e5a41
% structure: AABA
% location: rbk2:79,jfb:105
% idyoutuberemark1: Miles Davis!
% idyoutube1: ZcPxCQhJ2n4
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium Groove"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Doxy"
	      \fontsize #1 \lower #1  "- Sonny Rollins"
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

  \tocItem \markup "Doxy / Sonny Rollins"


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
		bes2:7 aes:7 | aes:7 g:7 |
	} \alternative {
		{
			c:7 f:7 | bes1:7 | \myEndLineVoltaNotLast
		}
		{
			c:7 | f:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	bes1*2:7 | ees1:7 | e:dim7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	bes2 aes:7 | aes:7 g:7 | c:7 f:7 | bes1 | \myEndLine
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

	\partial 8 f8 |

%% part "A"
	\repeat volta 2 {
		bes8 d bes f bes4 r8 f | bes8 f bes des r g,4 f8 |
	} \alternative {
		{
			e8 g bes des \tuplet 3/2 { c8 des c } g8 bes | r2 r4 r8 f |
		}
		{
			e8 g bes des \tuplet 3/2 { c8 des c } g8 a | r1 |
		}
	}

%% part "B"
	g'4 r8 f~ f r des4~ | des4. g,8 r c4 g8 | des'4 des8 des g,4 c | r2 r4 r8 f, |

%% part "A"
	bes d bes f bes4 r8 f | bes f bes des r g,4 f8 | e g bes des \tuplet 3/2 { c8 des c } g8 bes | r1 |
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
		\smaller \smaller { "Copyright © 1963 Prestige Music Co, Inc." }
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

