

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
% title: Gentle Rain
% style: Jazz
% composer: Louis Bonfa
% poet: Matt Dubey
% piece: Bossa
% copyright: 1931 (renewed 1959) EMI Robbins Catalog, Inc
% copyrightextra: Used by Persmission of CPP/Belwin, Inc, Miami, FL. International Copyright Secured. All Rights Reserved.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 04bbfb74-0128-11e1-9e2a-0019d11e5a41
% structure: AB
% structureremark: This tune has a weird structure because the part B has different lengths
% location: rbk1:169,nrbk3:128
% idyoutuberemark1: Tony Bennet slow version
% idyoutube1: uJGqzudEDDE
% idyoutuberemark2: The wonderful ballad version of Astrud Gilberto
% idyoutube2: s6ndU7GKpjI
% lyricsurl: http://lyrics.wikia.com/Astrud_Gilberto:The_Gentle_Rain
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
	      \fontsize #1 \lower #1 \rotate #7 "Bossa"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Gentle Rain"
	      \fontsize #1 \lower #1  "- Matt Dubey / Louis Bonfa"
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

  \tocItem \markup "Gentle Rain / Louis Bonfa, Matt Dubey"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		a1*2:m6 | b1:m7.5- | e:7 | \myEndLine
		a2:m7 d:7 | g:m7 c:7 | f1*2:6 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		fis1:m7.5- | b:7.9- | e:m7.5- | a:7.9- | \myEndLine
		d:m7.5- | b2:m7.5- e:7 |
	} \alternative {
		{
			a1:m6 | bes:7 | \myEndLineVoltaNotLast
		}
		{
			a2:m7 d:7 | g:m7 c:7 | f1:6 | c:7 | \myEndLine
			f:6 | e:m7 | a:m | \OPC e:7 | \myEndLineVoltaLast
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
	\key a \minor

	\repeat volta 2 {

	%% part "A"
		e2. d8 c | c2. d8 e | e2. d8 c | b2. c8 d |
		e1~ | e2 e8 g e c | d1~ | d2. r4 |

	%% part "B"
		c'2. b8 a | a2. g8 fis | bes2. a8 g | g2. f8 e |
		aes2. g8 f | f2. e8 d |
	} \alternative {
		{
			e1~ | e2. r4 |
		}
		{
			e1~ | e2 e8 g e c | d1~ | d2 e8 g e c |
			d1~ | d2 b'8 d b g | a1~ | a1 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the internet but adjusted for the real book (the real book has no lyrics)...
\lyricmode {
	We both are lost and a -- lone in the world,
	Walk with me __ in the Gen -- tle Rain. __
	Don't be af -- raid; I've a hand for your hand,
	And I will be your love for a while. __

	sad, __

	like the Gen -- tle Rain, __
	like the Gen -- tle Rain, __
	like the Gen -- tle Rain, __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	I feel your tears as they fall on my cheek,
	They are warm __ in the Gen -- tle Rain. __
	Don't be af -- raid; I've a hand for your hand,
	And our love will be sweet, will be
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
		\smaller \smaller { "Copyright © 1931 (renewed 1959) EMI Robbins Catalog, Inc" }
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

