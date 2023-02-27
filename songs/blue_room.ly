

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
% title: Blue Room
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Jazz
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f5edb3c8-9452-11e4-8279-3860779cb560
% structure: AABA
% location: rbk1:55
% idyoutuberemark1: Chet Baker in a slow sensitive version
% idyoutube1: DOBCOVEeX2A
% idyoutuberemark2: Benny Goodman big band classic
% idyoutube2: DRo129k55fg
% lyricsurl: http://www.lorenzhart.org/broom.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Jazz"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blue Room"
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

  \tocItem \markup "Blue Room / Richard Rodgers, Lorenz Hart"


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

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f2:6 d:m7 | g:m7 c:7 | f:maj7 d:m7 | g:m7 c:7 | \myEndLine
		f2.:maj7 f4:7 | bes2:maj7 g:m7 |
	} \alternative {
		{
			f:6 g:7 | g:m7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f g4:m7 c:7 | f1 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	c1*2:7 | f:maj7 | \myEndLine
	c1:7 | g2:m7 c:7 | d:m7 g:7 | g:m7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f1:6 | c:7 | f2:maj7 d:m7 | g:m7 c:7 | \myEndLine
	f2.:maj7 f4:7 | bes2:maj7 g:m7 | f g4:m7 c:7 | f1 | \myEndLine
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
	\repeat volta 2 {
		c4 f2 d4 | c g'2 d4 | c a'2 d,4 | c bes'2 d,4 |
		c c' c c | c8 d bes2 g4 |
	} \alternative {
		{
			f f f8 g a4 | c,2. r4 |
		}
		{
			f f f8 g a g | f2. r4 |
		}
	}

%% part "B"
	e f g a | bes c d e | r f f8 e d4 | c2 d |
	r4 e e8 d c4 | bes2 c | r4 a a8 g f4 | c2. r4 |

%% part "A"
	c f2 d4 | c g'2 d4 | c a'2 d,4 | c bes'2 d,4 |
	c c' c c | c8 f bes,2 a8 g | f4 f f8 g a g | f1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the internet adjusted for the real book.
\lyricmode {

%% part "A"
	We'll have a blue room,
	A new room,
	For two room,
	Where ev' -- ry day's a ho -- li -- day
	Be -- cause you're mar -- ried to me.

	_ _ _ _ _ _ _

%% part "B"
	We will thrive on,
	Keep a -- live on,
	Just not -- hing but kis -- ses,
	With Mis -- ter and Mis -- sus
	On lit -- tle blue chairs.

%% part "A"
	You sew your trous -- seau,
	And Ro -- bin -- son Cru -- soe
	Is not so far from world -- ly cares
	As our blue room far a -- way up -- stairs.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Not like a ball -- room,
	A small room,
	A hall room,
	Where I can smoke my pipe a -- way
	With _ _ _ _ _ _ your wee head u -- pon my knee.
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

