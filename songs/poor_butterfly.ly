

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
% title: Poor Butterfly
% style: Jazz
% composer: Raymond Hubbell
% poet: John L. Golden
% piece: Moderately Slow
% copyright: 1998 Hal Leonard Corporation
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 2db00c66-da81-11e3-9d15-47dd58c4ba8d
% structure: ABAC
% location: rbk3:242
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately Slow"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Poor Butterfly"
	      \fontsize #1 \lower #1  "- John L. Golden / Raymond Hubbell"
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

  \tocItem \markup "Poor Butterfly / Raymond Hubbell, John L. Golden"


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
	\startSong
	\startChords

	\partial 2. s2. |

	\myMark "A"
	\startPart
	bes1:m7 | ees:7 | aes1*2:maj7 | \myEndLine
	c:7.5+ | f:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	bes1:m7 | ees:7 | g2:m7.5- c:7.5+ | f1:m7 | \myEndLine
	bes1*2:7 | bes1:m7 | ees:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	bes1:m7 | ees:7 | aes1*2:maj7 | \myEndLine
	c:7.5+ | f:7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	bes1:m7 | des2:m7 ges:7 | aes1:maj7 | c2:m7 f:7 | \myEndLine
	bes1:m7 | ees:7 | aes1*2 | \myEndLine
	\endPart

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante" 4 = 88
	\time 4/4
	\key aes \major

	\partial 2. ees4 e f |

%% part "A"
	des'1~ | des4 c8 bes des4 c | bes2 bes~ | bes4 aes b, c |
	aes'1~ | aes4 b,8 c aes'4 g | g1~ | g4 f b, c |

%% part "B"
	g' f8 g f2~ | f4 ees d ees | bes' aes8 bes aes2~ | aes4 f g aes |
	c bes8 c bes2~ | bes4 aes e f | bes1~ | bes4 ees,4 e f |

%% part "A"
	des'1~ | des4 c8 bes des4 c | bes2 bes~ | bes4 aes b, c |
	aes'1~ | aes4 b,8 c aes'4 g | g1~ | g2 f4 c |

%% part "C"
	des ees8 f ees'2~ | ees4 des8 c ees4 des | des b8 c g2~ | g4 aes c, g' |
	f1~ | f4 d8 ees des'?4 c | aes1~ | aes4 r r2 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Poor But -- ter -- fly, __ 'neath the blos -- soms wait -- int, __ Poor But -- ter --
	fly __ for she loved him so. __ The mo -- ments pass in -- to hour, __ the hours _
	pass in -- to years, __ and as she smiles through her tears, __ she mur -- murs low, __
	"\"The" moon and I __ know that he'll be faith -- ful. __ I'm sure he'll come __
	to me by and bye. __ But if he don't come back, __ then I'll nev -- er
	sigh or _ cry, __ I just mus' "die.\"" Poor _ But -- ter -- fly. __
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
		\smaller \smaller { "Copyright © 1998 Hal Leonard Corporation" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

