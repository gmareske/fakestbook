

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
% title: Bewitched
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Moderately Slow
% copyright: 1941, by Chappell & Co., Inc. Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: dd1624e6-2567-11e1-9444-0019d11e5a41
% structure: AABA
% location: rbk2:43,jfb:58
% idyoutuberemark1: Ella Fitzgerald with the intro part...
% idyoutube1: nDlCCKHql0w
% idyoutuberemark2: Benny Goodman in the 1980's
% idyoutube2: rv8G78Cw2mc
% lyricsurl: http://www.lyricsfreak.com/e/ella+fitzgerald/bewitched_20045684.html
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
	      \underline \sans "Bewitched"
	      \fontsize #1 \lower #1  "- Lorenz Hart / Richard Rodgers"
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

  \tocItem \markup "Bewitched / Richard Rodgers, Lorenz Hart"


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

	\partial 4 s4

	\repeat volta 2 {

		\myMark "A"
		\startPart
		c2 cis:dim7 | d:m7 dis:dim7 | c e:7 | f:maj7 fis:dim7 | \myEndLine
		c d:7 | g:7 a:7 | d1:m7 | g:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2 cis:dim7 | d:m dis:dim7 | c e:7 | f:maj7 fis:dim7 | \myEndLine
		c d:7 | g:7 c:7 | f1:maj7 | a:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		d1*2:m | a:m | \myEndLine
		d1:m | g:7 | e2:m7 a:7.9+ | d:m7 g:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2 cis:dim7 | d:m dis:dim7 | c e:7 | f:maj7 fis:dim7 | \myEndLine
		c d:7 | d:m g:7 |
	} \alternative {
		{
			c a:m | d:m7 g:7 | \myEndLineVoltaNotLast
		}
		{
			c f | c1 | \myEndLineVoltaLast \endPart
		}
	}
	\endSong
	\endChords
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Moderato" 4 = 100
	\time 2/2
	\key c \major

	\partial 4 g'4 |

	\repeat volta 2 {

	%% part "A"
		e8 b' c2 e,4 | f8 b c2 f,4 | g8 b c4 gis8 b c4 | a8 b c2 b4 |
		c r b8 a g fis | g4 d2 e4 | f1~ | f2 r |

	%% part "A"
		e8 b' c2 e,4 | f8 b c2 f,4 | g8 b c4 gis8 b c4 | a8 b c2 b4 |
		c r b8 a g fis | g4 d2 e4 | a1~ | a2. r4 |

	%% part "B"
		b8 a f2 b8 a | f4 f2. | b8 a e2 b'8 a | e1 |
		c'8 b g2 c8 b | g4 g~ g8 a b c | d2 c f,2. g4 |

	%% part "A"
		e8 b' c2 e,4 | f8 b c2 f,4 | g8 b c4 gis8 b c4 | a8 b c2 b4 |
		c r b8 a g fis | g4 d'2 g,4 |
	} \alternative {
		{
			c1 | r2 r4 g4 |
		}
		{
			c1~ | c4 r4 r2 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I'm wild a -- gain, be -- guiled a -- gain,
	a sim -- per -- ing, whim -- per -- ing child a -- gain,
	Be -- witched, both -- ered and be -- wild -- ered am I. __

%% part "A"
	Could -- n't sleep, and would -- n't sleep,
	when love came and told me I should -- n't sleep,
	Be -- witched, both -- ered and be -- wild -- ered am I. __

%% part "B"
	Lost my heart, but what of it?
	He is cold I a -- gree,
	he can laugh, but I love it, __
	al -- though the laugh's on me.

%% part "A"
	I'll sing to him, each spring to him,
	and long for the day when I'll cling to him,
	Be -- witched, both -- ered and be -- wild -- ered am I.

%% part "Volta"
	I'm I. __
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
		\smaller \smaller { "Copyright © 1941, by Chappell & Co., Inc. Copyright Renewed" }
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

