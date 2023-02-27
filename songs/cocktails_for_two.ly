

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
% title: Cocktails For Two
% style: Jazz
% composer: Arthur Johnston and Sam Coslow
% poet: Arthur Johnston and Sam Coslow
% piece: Moderately
% copyright: 1934 (Renewed 1961) Famous Music Corporation
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: dd76c35c-da80-11e3-ac15-97e8d2a823ca
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
	      \underline \sans "Cocktails For Two"
	      \fontsize #1 \lower #1  "- Arthur Johnston and Sam Coslow"
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

  \tocItem \markup "Cocktails For Two / Arthur Johnston and Sam Coslow"


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

	\partial 2.. s2..

	\myMark "A"
	\startPart
	\repeat volta 2 {
		c2 g:5+7 | c1 | g2:7 g:dim7 | g1:7 | \myEndLine
		d2:m7 g:7 | d:m7 g:5+7 |
	} \alternative {
		{
			c cis:dim7 | g1:7 | \myEndLineVoltaNotLast
		}
		{
			g:m7 | \myEndLineVoltaLast
		}
	}
	\myEndLine
	\endPart

	\myMark "B"
	\startPart
	c2:7 c:5+7 | f:maj7 f:6 | bes1:9 | a:m7 | \myEndLine
	a:dim7 | d2:m7 g:7 | d:m7 g:7 | c cis:dim | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g1:7 | c2 g:5+7 | c1 | g2:7 g:dim7 | \myEndLine
	g1:7 | d2:m7 g:7 | d:m7 g:7 | c4:6 f:m c2 | \myEndLine
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
	\time 2/2
	\key c \major

	\partial 2.. c8 e g gis b a8. e16 |

%% part "A"
	\repeat volta 2 {
		a1~ | a8 c, e g gis b a8. e16 | g1~
		g8 d f a c e d8. c16 | a4. c8 b4. f8 | a4. c8 b4. g8 |
	} \alternative {
		{
			b g g g~ g2 | r8 c, e g gis b a8. e16 |
		}
		{
			d'8 g, g g~ g2 |
		}
	}

%% part "B"
	r4 e'4 \tuplet 3/2 { e4 e e } |
	e2 d | r4 d8 cis e d c b | d4. c8 c2 |
	r4 c8 b d c b a | c b~ b2 b8 a | a4. g8 g4. fis8 | a4. g8 g2 |
	r8 c, e g gis b a8. e16 | a1~ | a8 c, e g gis b a8. e16 | g1~ |
	g8 d f a c e d8. c16 | a4. c8 b4. f8 | a4. c8 b4. g8 | e' c c c~ c2 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	In some se -- clud -- ed ren -- dez -- vous __ that o -- ver looks the av -- e --neu __
	with some one shar -- ing a de -- light -- ful chat, of this and that and
%% Volta
	Cock -- tails For Two. __
	As we en -- joy a cig -- a --

%% part "B"
	Cock -- tails For Two. __
	My head may go reel -- ing, but my heart will be o -- be -- di --ent
	with in -- tox -- i -- cat -- ing kiss -- es for the prin -- ci -- pal in -- gre -- di --ent.

%% part "A"
	Most an -- y af -- ter -- nnon at five __ we'll be so gald we're both a -- live, __
	then may -- be for -- tune will com -- plete her plan that all be -- gan with Cock -- tails For Two. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _ _ _ _ _ _
	rette, __ to some ex -- qui -- site chan -- son -- ette __
	two hand are sure to sly -- ly meet be -- neath a ser -- vi -- nette, with
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
		\smaller \smaller { "Copyright © 1934 (Renewed 1961) Famous Music Corporation" }
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

