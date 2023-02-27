

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
% title: Cry Me A River
% style: Jazz
% composer: Arthur Hamilton
% poet: Arthur Hamilton
% piece: Slowly and Rhythmically
% copyright: 1953, 1955 by Saunders Publications, Inc.
% copyrightextra: Copyright renewed, assigned to Arthur Hamilton and Chappell & Co., Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: d7e89780-da80-11e3-b56b-2bd125289f76
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly and Rhythmically"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Cry Me A River"
	      \fontsize #1 \lower #1  "- Arthur Hamilton"
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

  \tocItem \markup "Cry Me A River / Arthur Hamilton"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		c2:m c:m5+ | c:m6 c:m7 | f:m7 bes4:7 bes:7.5+ | ees2:maj7 d4:m7 g:7 | \myEndLine
		g2:m7 c:7.5+ | f1:9 | f2:m7 f:m7/bes | ees:6 d4:7.9- g:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2:m c:m5+ | c:m6 c:m7 | f:m7 bes4:7 bes:7.5+ | ees2:maj7 d4:m7 g:7 | \myEndLine
		g2:m7 c:7.5+ | f1:9 | f2:m7 f:m7/bes | ees:6 a4:m7.5- d:7.9- | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g1:m | c2:m6 d:7 | g:m e:m7.5- | c:m6/ees d:7 | \myEndLine
		g1:m | c2:m6/ees d4:sus4.7 d:7 | g1 | d2:m7 g:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c:m c:m5+ | c:m6 c:m7 | f:m7 bes4:7 bes:7.5+ | ees2:maj7 d4:m7 g:7 | \myEndLine
		g2:m7 c:7.5+ | f1:9 | f2:m7 f:m7/bes |
	} \alternative {
		{
			ees:6 g:7.5+.9- | \myEndLineVoltaNotLast
		}
		{
			ees1:6 | \myEndLineVoltaLast
		}
	}
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
	\tempo "Andrante Moderato" 4 = 88
	\time 4/4
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		d'2~ d8 c g ees | d c4.~ c2 | r8 c ees c' bes4 bes | g2~ g8. g16 fis8. g16 | c4~ \tuplet 3/2 { c8 des c } des c4. |

	%% part "A"
		r8 g~ \tuplet 3/2 { g f ees } f g4. | r8 ges f ees f ees c ees | ees2~ ees4. r8 | d'2~ d8 c g ees | d c4.~ c2 |
		r8 c ees c' bes4 bes | g2~ g8. g16 fis8. g16 | c4~ \tuplet 3/2 { c8 des c } des c4. | r8 g~ \tuplet 3/2 { g f ees } f g4. |
		r8 ges f ees f ees c ees | ees1 |

	%% part "B"
		r8. g16 a bes8.~ \tuplet 3/2 { bes8 d, e } fis g | a8. g16 bes8 a~ a4. g8 |
		bes4~ \tuplet 3/2 { bes8 g d' } c4 bes8 c~ | c1 | r8. g16 a bes8.~ \tuplet 3/2 { bes8 d, e } fis g | a8. g16 bes8 a~ a2 |
		r8 a16 g a8. g16 a8. g16 b g8. | r8 a16 g a8. g16 a8. g16 b g8. |

	%% part "A"
		d'2~ d8 c g ees | d c4.~ c2 |
		r8 c ees c' bes4 bes | g2~ g8. g16 fis8. g16 | c4~ \tuplet 3/2 { c8 des c } des c4. | r8 g~ \tuplet 3/2 { g8 f ees } f g4. |
		r8 c ges ees f ees c ees |
	} \alternative {
		{
			ees2~ ees8 r r4 |
		}
		{
			ees1 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Now __ you say you're lone -- ly, __ you cry the long night thru; __ well, you can Cry __ Me A Riv --er,
	Cry __ Me A Riv -- er, I cried a riv -- er o -- ver you. __

%% part "A"
	Now __ you say you're sor -- ry __ for be -- in' so un -- true; __ well, you can Cry __ Me A Riv -- er,
	Cry __ My A Riv -- er, I cried a riv -- er o -- ver you.

%% part "B"
	You drove me, __ near -- ly drove me, out of my head, __
	while you __ nev -- er shed a tear. __ Re -- mem -- ber? __ I re -- mem -- ber, all that you said; __
	told me love was too ple -- be -- ian, told me you were thru with me, an'

%% part "A"
	Now __ you say you love me, __ well, just to prove you do, __ Come on, an' Cry Me A Riv -- er,
	Cry Me A Riv -- er, I cried a riv -- er o -- ver you. __ you. __
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
		\smaller \smaller { "Copyright © 1953, 1955 by Saunders Publications, Inc." }
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

