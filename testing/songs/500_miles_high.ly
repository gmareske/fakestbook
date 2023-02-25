

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
% title: 500 Miles High
% style: Jazz
% composer: Chick Corea
% piece: Samba
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ed0cff46-dffa-11e3-b4b7-43ee65102d59
% structure: A
% location: rbk1:152
% idyoutuberemark1: The Chick Corea cool version
% idyoutube1: b3yAq20qSm4
% idyoutuberemark2: An older Chick with Stanley Clarke, Marcus Gilmore, Gaule Moran, Hubert Laws
% idyoutube2: fxhSFDdTfD4
% lyricsurl: http://www.allthelyrics.com/lyrics/chick_corea/500_miles_high-lyrics-1180014.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Samba"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "500 Miles High"
	      \fontsize #1 \lower #1  "- Chick Corea"
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

  \tocItem \markup "500 Miles High / Chick Corea"


% include the preparatory stuff, if there is any

% calculate the vars



% score for printing
\score {
	<<

\new ChordNames="Chords"

% # transpose with 'inline' is true!
	\transpose c \transpose-key {


\chordmode {
	\startChords
	\startSong

	\partial 4 s4 |

%%\myMark "A"
	\mySegno
	\startPart
	\repeat volta 2 {
		e1*2:m | g:m | \myEndLine
		bes:maj7 | b1:m7.5- | e:7.9+ | \myEndLine
		a1*2:m11 | fis:m7.5- | \myEndLine
		f:m7 | c:m11 | \myCoda b:7.3-.5-.9-.11-.13- \mark \markup {D.S. al Coda} | \myEndLine
	}
	\endPart

%%\myMark "Coda"
%%\myCoda
	\startPart
	\repeat volta 2 {
		b1:7.3-.5-.9-.11-.13- | c1*2:m11 | b1:7.3-.5-.9-.11-.13- | \myEndLine
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
	\tempo "Allegro" 4 = 168
	\time 4/4
	\key c \major

	\partial 4 d''4 |

%% part "A"
	\repeat volta 2 {
		b1~ | \tuplet 3/2 { b4 b, d a' fis d } | e1~ | e4 c \tuplet 3/2 { a f d } |
		g1 | f2. f4 | f8 e4 g8~ g2~ | g2~ \tuplet 3/2 { g4 f e } |
		d'1~ | d2. c4 | c b8 d~ d2~ | d2~ \tuplet 3/2 { d4 c b } |
		bes aes8 c~ c2~ | c4 r8 g d' ees aes, d | c1~ | c | r | r2. <\parenthesize d'>4 |
	}

%% part "Coda"
	\repeat volta 2 {
		r4 r8 g,, d' ees aes, d | c1~ | c | r |
	}
}



 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	Some day you'll look in to her eyes __
	Then there'll be no good -- byes
	And yes -- ter -- day __ will have gone __
	And you'll find yourself __ in a -- no -- ther space __
	"500" _ _ mi -- les high __

%% part "Coda"
	_ "500" _ _ mi -- les high __
}



}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	You'll see just one look and you'll know __
	She's so ten -- der and warm
	You'll re -- cog -- nise __ this is love __
	And you'll find yourself __ on a -- no -- ther plane __
	"500" _ _ mi -- les high __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	






\lyricmode {

%% part "A"
	Be sure that you love stays so free __
	Then it nev -- er can die
	Just re -- a -- lise __ this is truth __
	And above the skies __ you will al -- ways stay __
	"500" _ _ mi -- les high __
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
		\smaller \smaller { "Typeset by Mark Veltzer <mark.veltzer@gmail.com>, Built at 15:13:24 25-02-2023, Engraved by lilypond 2.23.12" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}


}

