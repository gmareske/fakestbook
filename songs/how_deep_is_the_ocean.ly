

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
% title: How Deep Is the Ocean
% style: Jazz
% subtitle: How High Is the Sky
% composer: Irving Berlin
% poet: Irving Berlin
% piece: Slowly
% copyright: 1932 Irving Berling (Renewed)
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 1f41adf6-da81-11e3-a9b9-277d2c72c477
% structure: ABAC
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "How Deep Is the Ocean"
	      \fontsize #1 \lower #1  "- Irving Berlin"
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

  \tocItem \markup "How Deep Is the Ocean / Irving Berlin"


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

	\myMark "A"
	\startPart
	c1:m7 | d2:m7.5- g:7 | c1:m7 | a2:m7.5- d:7 | \myEndLine
	g1:m7 | a2:m7.5- d:7 | g:m7 c:7 | f:m7 bes:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	ees1:maj7 | bes2:m7 ees:7 | aes1:7 | aes:7 | \myEndLine
	c:m7.5- | f:7 | bes:7 | d2:m7.5- g:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c1:m7 | d2:m7.5- g:7 | c1:m7 | a2:m7.5- d:7 | \myEndLine
	g1:m7 | a2:m7.5- d:7 | g:m7 c:7 | f:m7 bes:7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	ees1:7 | g2:m7.5- c:7 | f1:m7 | aes2:m7 des:7 | \myEndLine
	ees1:maj7 | f:7 | f2:m7 bes:7 | ees1:maj7 | \myEndLine
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
	\key ees \major

%% part "A"
	r4 ees \tuplet 3/2 { ees d ees } | g4 g2. | r4 ees \tuplet 3/2 { ees d ees } | g2. r4 |
	r4 bes \tuplet 3/2 { bes a bes } | c4 c2. | r4 bes \tuplet 3/2 { bes a bes } | c1 |

%% part "B"
	r4 ees ees ees | ees8 bes4 bes8~ bes4 bes4 | bes ges ges ges~ | ges1 |
	ges4 ees ees ees~ | ees d2 ees4 | ges f f f~ | f2 r |

%% part "A"
	r4 ees \tuplet 3/2 { ees d ees } | g4 g2. | r4 ees \tuplet 3/2 { ees d ees } | g2. r4 |
	r4 bes \tuplet 3/2 { bes a bes } | c4 c2. | r4 bes \tuplet 3/2 { bes a bes } | c1 |

%% part "C"
	r4 ees ees des | des c c bes | r aes \tuplet 3/2 { aes g f } | aes1 |
	r4 g \tuplet 3/2 { g f ees } | g4 g2. | r4 f \tuplet 3/2 { f ees d } | ees2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	How much do I love you? I'll tell you no lie.
	How Deep Is The O -- cean, how high is the sky?

%% part "B"
	How man -- y times a day __ do I think of you? __
	How man -- y ros -- es are sprink -- led with dew? __

%% part "A"
	How far would I trav -- el to be whre you are?
	How far is the jour -- ney for here to a star?

%% part "C"
	And if I ev -- er lost you, how much would I cry?
	How Deep Is The O -- cean, how high is the sky?
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
		\smaller \smaller { "Copyright © 1932 Irving Berling (Renewed)" }
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

