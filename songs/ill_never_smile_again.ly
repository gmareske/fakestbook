

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
% title: I'll Never Smile Again
% style: Jazz
% composer: Ruth Lowe
% poet: Ruth Lowe
% piece: Moderately
% copyright: 1939 MCA Music Publsihing, A Division of MCA inc,.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 7708f4d8-da7f-11e3-a46b-fb3b74e0bdec
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
	      \underline \sans "I'll Never Smile Again"
	      \fontsize #1 \lower #1  "- Ruth Lowe"
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

  \tocItem \markup "I'll Never Smile Again / Ruth Lowe"


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

	\partial 2. s2. |

	\repeat volta 2 {

		\myMark "A"
		\startPart
		f1:m7 | bes:7 | ees2:maj7 f:m7 | g:m7 ges:dim7 | \myEndLine
		f1:m7 | bes:7 | ees | ees | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		b2:7.5+ bes:7 | ees1 | f2:m7.5- bes:7.5+ | ees2.:maj7 d4:9 | \myEndLine
		g2 d:7 | g ges:dim7 | f1:m7 | bes4:7 ees:maj7 g:m7 ges:dim | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f1:m7 | bes:7 | ees2:maj7 f:m7 | g:m7 ges:dim7 | \myEndLine
		f1:m7 | bes:7 | ees:7 | ees:7 | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		aes2.:maj7 aes4:6 | des1:9 | ees | g2:m7 c:7 | \myEndLine
		f1:m7 | f2:m7 b4:7.5+ bes:7 |
	} \alternative {
		{
			ees2 ges:dim7 | bes4:7/f ees:maj7 g:m7 ges:dim7 | \myEndLineVoltaNotLast
		}
		{
			ees1 | ees | \myEndLineVoltaLast
		}
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
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key ees \major

	\partial 2. bes'4 d c |

%% part "A"
	\repeat volta 2 {
		ees4. f,8 f2 | r8 f f g f4 ees | g1~ | g4 bes d c | ees4. f,8 f2~ | f4 g \tuplet 3/2 { f ees d } |
		c1~ | c2. c4 | g' g g g | ees2. g4 | bes bes bes bes | g2. b4 | d d d2~ | d d |
		bes1~ | bes4 bes d c | ees4. f,8 f2 | r8 f f g f4 ees | g1~ | g4 bes d c | ees4. f,8 f2~ |
		f4 g \tuplet 3/2 { f ees d } | g1~ | g2 r4 ees4 | g2. f4 | aes2. g4 | \tuplet 3/2 { d4 ees g } bes4 c | d2. c4 |
		ees4. f,8 f2 | r8 c d ees g4 g |
	} \alternative {
		{
			ees1 | r4 bes' d c |
		}
		{
			ees1~ | ees2. r4
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	I'll Nev -- er Smile A -- gain, un -- til I smile at you. __ I'll nev -- er laugh a -- gain, __ what good would it
	do? __ For tears would fill my eyes my heart would re -- a -- lize that our ro -- mance __ is
	trough, __ I'll nev -- er love a -- gain, I'm so in love with you. __ I'll nev -- er thrill a -- gain __
	to some -- bod -- y new. __ With -- in my heart I know I will nev -- er start to
	smile a -- gain un -- til I smil at you I'll ne -- ver

	you
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
		\smaller \smaller { "Copyright © 1939 MCA Music Publsihing, A Division of MCA inc,." }
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

