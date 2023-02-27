

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
% title: Afternoon in Paris
% style: Jazz
% composer: John Lewis
% piece: Swing
% copyright: 1955 and Renewal of Copyright 1983 by MJQ Music, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 8f0a1ea6-a26e-11df-8edc-0019d11e5a41
% structure: AABA
% location: rbk1:10,jfb:35
% idyoutuberemark1: Chet Baker in a cool jazz version
% idyoutube1: o3KtgcvYkig
% idyoutuberemark2: Milt Jackson in a cool jazz version
% idyoutube2: FFj03f2Zr5Y
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
	      \fontsize #1 \lower #1 \rotate #7 "Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Afternoon in Paris"
	      \fontsize #1 \lower #1  "- John Lewis"
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

  \tocItem \markup "Afternoon in Paris / John Lewis"


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

	\partial 4 s4 |

	\myMark "A"
	\startPart
	c1:6 | c2:m7 f:7 | bes1:6 | bes2:m7 ees:7 | \myEndLine
	aes1:maj7 | d2:m7.5- g:7 | c:maj7 a:m7 | d:m7 g:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c1:6 | c2:m7 f:7 | bes1:6 | bes2:m7 ees:7 | \myEndLine
	aes1:maj7 | d2:m7.5- g:7 | c1 | a:m7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	d1:m7 | g:7.9- | c:6 | a:m7 | \myEndLine
	d:m7 | g:7.9- | cis2:m7.5- fis:7 | d:m7 g:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c1:6 | c2:m7 f:7 | bes1:6 | bes2:m7 ees:7 | \myEndLine
	aes1 | d2:m7.5- g:7 | c1*2 | \myEndLine
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

	\partial 4 e'4 |

%% part "A"
	g8 d r c b c d e | ees g, bes d c4 d | f8 c r bes a bes c d | des f, aes c bes4 c |
	ees8 c aes ees g bes aes4 | f2 \tuplet 3/2 { g4 f g } | e8 g b d a b c e | f a, c e d4 e |

%% part "A"
	g8 d r c b c d e | ees g, bes d c4 d | f8 c r bes a bes c d | des f, aes c bes4 c |
	ees8 c aes ees g bes aes4 | aes2 \tuplet 3/2 { g4 f g } | e1~ | e2 a4 b |

%% part "B"
	c2. d4 | e2. d4 | c2. e4 | a,2. b4 |
	c2. d4 | e2. d4 | e1 | f2. e4 |

%% part "A"
	g8 d r c b c d e | ees g, bes d c4 d | f8 c r bes a bes c d | des f, aes c bes4 c |
	ees8 c aes ees g bes aes4 | f2 \tuplet 3/2 { g4 f g } | e1~ | e2. r4 |
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
		\smaller \smaller { "Copyright © 1955 and Renewal of Copyright 1983 by MJQ Music, Inc." }
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

