

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
% title: A Night In Tunisia
% style: Jazz
% composer: John 'Dizzy' Gillespie, Frank Paparelli
% piece: Bright Swing
% copyright: 1944 by MCA Music Publishing, A division of MCA Inc, New York, NY
% copyrightextra: Copyright Renewed
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: ea02cd50-da80-11e3-999d-eb3f2153c941
% structure: ABA
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
	      \fontsize #1 \lower #1 \rotate #7 "Bright Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "A Night In Tunisia"
	      \fontsize #1 \lower #1  "- John 'Dizzy' Gillespie, Frank Paparelli"
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

  \tocItem \markup "A Night In Tunisia / John 'Dizzy' Gillespie, Frank Paparelli"


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
		ees1:7 | d:m6 | ees:7 | d:m6 | \myEndLine
		ees:7 | d:m6 | ees2:m7.5- a4.:7.5-.9- d8:m6 |
	} \alternative {
		{
			d1:m6 | \myEndLineVoltaNotLast
		}
		{
			d1:m6 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	a:m7.5- | d:7.9- | g2:m6 d:7.9- | g1:m6 | \myEndLine
	g1:m7.5- | c:7.9- | f:maj | e2:m7.5- a:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1:7 | d:m6 | ees:7 | d:m6 | \myEndLine
	ees:7 | d:m6 | e2:m7.5- a:7.5- | d1:m7+ | \myEndLine
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
	\partial 8 a8 |

	\repeat volta 2 {
		\tuplet 3/2 { bes des f } c'2 bes8 f | gis a4. r4 r8 a, | \tuplet 3/2 { bes des f } c' c~ c4 bes8 f | a2. r8 a, | \tuplet 3/2 { bes des f } c'2 bes8 f | gis a4. r2 |
		a8 bes \tuplet 3/2 { a16 bes a } g8 ees4 cis8 d~ |
	} \alternative {
		{
			d4 r r r8 a |
		}
		{
			d4\repeatTie r r r8 a' |
		}
	}

%% part "B"
	c4. a8~ a4. g8 | ges4 ees'8 cis d c4 a8 |
	bes g4 fis8~ fis4 a8 fis | g a e4 r r8 \grace a8 bes8~ | bes \grace a8 bes4 r8 r4 \tuplet 3/2 { g16 aes g } f8 | e4 \tuplet 3/2 { des'16 ees des } b8 c bes4 gis8 | a4. f8 \tuplet 3/2 { g?16 aes g } f8 \tuplet 3/2 { g16 aes g } f8 |
	e2. r8 a, |

%% part "A"
	\tuplet 3/2 { bes des f } c'2 bes8 f | gis a4. r4 r8 a, | \tuplet 3/2 { bes des f } c' c~ c4 bes8 f | a2. r8 a, | \tuplet 3/2 { bes des f } c'2 bes8 f | gis a4. r2 | a8 bes \tuplet 3/2 { a16 bes a } g8 ees4 cis8 d~ | d4 r r2 |
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
		\smaller \smaller { "Copyright © 1944 by MCA Music Publishing, A division of MCA Inc, New York, NY" }
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

