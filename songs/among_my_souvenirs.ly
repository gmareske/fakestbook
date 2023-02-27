

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
% title: Among My Souvenirs
% style: Jazz
% composer: Horatio Nicholls
% poet: Edgar Leslie
% piece: Moderately
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 79535ff6-ff7b-11e2-a95b-b74fc9213a2b
% structure: AABA
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Among My Souvenirs"
	      \fontsize #1 \lower #1  "- Edgar Leslie / Horatio Nicholls"
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

  \tocItem \markup "Among My Souvenirs / Horatio Nicholls, Edgar Leslie"


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
		ees2 c:9- | f1:m7 | bes2.:7 bes4:5+9 | ees1~ | \myEndLine
		ees2 ees4/g ges:dim7 | f1:m7 | bes:7 | ees~ | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		ees2 c:9- | f1:m7 | bes2.:7 bes4:5+9 | ees1~ | \myEndLine
		ees2 ees4/g ges:dim7 | f1:m7 | bes:9 | ees | \myEndLine
		\endPart

		\myMark "B"
		ees:7 | aes:6 | f2:m7 bes4:7 bes:5+9 | ees1~ | \myEndLine
		ees | bes:7~ | bes2:7 d:dim7 | g:7 c:m7 | f:9 bes:5+7 | \myEndLine
		\startPart
		\endPart

		\myMark "A"
		\startPart
		ees c:9- | f1:m7 | bes2.:7 bes4:5+9 | ees1~ | \myEndLine
		ees2 ees4/g ges:dim7 | f1:m7 | bes:9 |
	} \alternative {
		{
			ees2 c:m7 | f:m bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees2 aes:m6 | ees1 | \myEndLineVoltaLast
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
	\time 2/2
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		r4 g' g bes | bes aes aes2~ | aes4 aes aes c | c bes bes2~ |
		bes4 bes bes ees | ees d d c | c bes bes aes | g1~ |

	%% part "A"
		g4 g g bes | bes aes aes2~ | aes4 aes aes c | c bes bes2~ |
		bes4 bes bes ees | ees d d c | c bes bes aes | g1~ |

	%% part "B"
		g4 g aes bes | c f f2~ | f4 ees d c | ees g, bes2~ |
		bes4 ees, f g | aes d d2~ | d4 c bes aes | g2 ees | g fis |

	%% part "A"
		r4 g g bes | bes aes aes2~ | aes4 aes aes c | c bes bes2~ |
		bes4 bes bes ees | ees d d c | c d c bes |
	} \alternative {
		{
			ees1~ | ees4 r r2 |
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
	There's no -- thing left for me; __ of days that used to be __ I live in
	mem -- o -- ry A -- mong My Sou -- ve -- nirs. __ Some let -- ters tied to blue, __
	a pho -- to -- graph or two, __ I see a rose from you A -- mong My Sou -- ve --
	nirs. __ A few more to -- kens rest __ with -- in my trea -- sure chest, __ and tho' they
	do their best __ to give me con -- so -- la -- tion. I count them all a -- part, __
	And as the tear drops start, __ I find a bro -- ken heart A -- mong My Sou -- ve -- nirs.
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

