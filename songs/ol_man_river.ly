

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
% title: Ol' Man River
% style: Jazz
% composer: Jerome Kern
% poet: Oscar Hammerstein II
% piece: Very Slowly
% copyright: 1927 T.B. Harms Company. Copyright Renewed.
% copyrightextra: (c/o The Welk Music Group, Santa Monica, CA 90401)
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 0313b274-da80-11e3-a78b-a386f8b826fd
% structure: AA'BA''
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
	      \fontsize #1 \lower #1 \rotate #7 "Very Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Ol' Man River"
	      \fontsize #1 \lower #1  "- Oscar Hammerstein II / Jerome Kern"
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

  \tocItem \markup "Ol' Man River / Jerome Kern, Oscar Hammerstein II"


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
		ees2 c:m7 | ees aes | ees aes | ees c:m7 | \myEndLine
		f:m7 bes:9 | f:m7 bes:9 | ees aes:6 | ees1 | \myEndLine
		\endPart

		\myMark "A'"
		\startPart
		ees2 c:m7 | ees aes | ees c:m | ees ges:dim7 | \myEndLine
		f:m7 bes:7 | f:m7 bes:9 | ees aes | ees a4:m7.5- d:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g2:m d:7.9- | g:m d:7.9- | g:m d:7.9- | g:m d:7.9- |
		g:m c:m6 | g:m d:7.9- | g:m d:7.9- | g:m f4:m7 bes:7 |
		\endPart

		\myMark "A''"
		\startPart
		ees2 c:m7 | ees aes | ees bes:9 | c:m7 f:7 | \myEndLine
		ees4/bes b:dim c2:m7 | f:m9 bes:7 |
	} \alternative {
		{
			ees aes:m | ees f4:m7 bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees2 f4:m7 bes:7 | ees1 | \myEndLineVoltaLast
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
	\tempo "Andante" 4 = 88
	\time 4/4
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		bes4 bes c8 ees4 c8 | bes4 bes c8 ees4 f8 | g4 g f8 ees4 f8 | g4 bes c8 bes4 c8 |
		bes4 bes g8 f4 g8 | bes4 bes g8 f4 g8 | ees1~ | ees2. r8 bes8 | bes4 bes c8 ees4 c8 |
		bes4 bes c8 ees4 f8 | g4 bes c8 bes4 c8 | ees4 ees d8 c4 d8 | bes4 bes g8 f4 g8 |
		bes4 bes g8 f4 g8 | ees1~ | ees4 r4 r2 | d'4 bes c4. ees8 | d4 bes c2 |
		d8. d16 bes4 c8. c16 ees4 | d bes c2 | bes8 r g4 a2 | bes4 g a2 | bes8. bes16 g8. g16 a4 c8. c16 |
		bes4 g f2 | bes,4 bes c8 ees4 c8 | bes4 bes c8 ees4 f8 | g4 bes c8 bes4 c8 | ees4 ees f8 ees4 f8 |
		g4 g f8 ees4 f8 | g4 g f8 ees f4 |
	} \alternative {
		{
			ees4 r r2 | R1 |
		}
		{
			ees1~ | ees4 r r2 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Ol' Man Riv -- er, dat Ol' Man Riv --er, he must know sump -- in', but don't say noth -- in' he
	jus' keeps roll -- in', he keeps on roll -- in' a -- long. __ He don't plant 'ta -- ters, he
	don't plant cot -- ton, an' dem dat plants 'em is soon for -- got -- ten; but Ol' Man Riv --er, he
	jus' keeps roll -- in' a -- long. __ You an' me, we sweat an' strain,
	bo -- dy all ach -- in' an' racked wid pain. "\"Tote" dat "barge!\"" "\"Lift" dat "bale,\"" git a lit -- tle drunk an' you
	land in jail. Ah gits wea -- ry an' sick of try -- in', Ah'm tired of liv -- in' an' skeered of dy -- in'. But
	Ol' Man Riv -- er, he jus' keeps roll -- in' a -- long.
	long. __
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
		\smaller \smaller { "Copyright © 1927 T.B. Harms Company. Copyright Renewed." }
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

