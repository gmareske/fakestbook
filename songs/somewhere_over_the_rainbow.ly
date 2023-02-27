

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
% title: Somewhere, Over The Rainbow
% style: Jazz
% composer: Harold Arlen
% poet: Edgar Yipsel 'Yip' Harburg
% piece: Ballad
% copyright: Musicopy
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f046f51c-ed4d-11e3-9d71-67b6b025e741
% structure: AABA
% location: cc:209,file:over_the_rainbow.pdf,nrbk3:287-288
% idyoutuberemark1: Keith Jarret solo
% idyoutube1: eq0EWNuR1H8
% idyoutuberemark2: Original Judy Garland version
% idyoutube2: PSZxmZmBfnU
% idyoutuberemark3: Keith Jarret kills them
% idyoutube3: u3eH6VW6Chc
% idyoutuberemark4: The original Judy Garland version
% idyoutube4: 1HRa4X07jdE
% lyricsurl: http://www.stlyrics.com/lyrics/thewizardofoz/somewhereovertherainbow.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Somewhere, Over The Rainbow"
	      \fontsize #1 \lower #1  "- Edgar Yipsel 'Yip' Harburg / Harold Arlen"
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

  \tocItem \markup "Somewhere, Over The Rainbow / Harold Arlen, Edgar Yipsel 'Yip' Harburg"


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
		a2:m7.5- d:7.9- | g2.:m7 a4:7.5- | aes2:maj7 a4:m7.5- d:7.9- | g2:m7 c:7.9- | \myEndLine
		f:m7 aes:m7 | g:m7 c:7.9- | f:m7 bes:7.9- |
	} \alternative {
		{
			ees:maj7 f4:m7 bes:7.9- | \myEndLineVoltaNotLast
		}
		{
			ees2:maj7 f4:m7 bes:7.9- | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	ees1:maj7 | f2:m7 bes:7.9- | g:m7 c:7.9- | f:m7 bes:7.9- | \myEndLine
	ees1:maj7 | a2:m7.5- d:7.9- | g:m7 c:9 | f:m7 bes:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a:m7.5- d:7.9- | g2.:m7 a4:7.5- | aes2:maj7 a4:m7.5- d:7.9- | g2:m7 c:7.9- | \myEndLine
	f:m7 aes:m7 | g:m7 c:7.9- | f:m7 bes:7.9- | ees:maj7 f4:m7 bes:7.9- | \myEndLine
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
	\tempo "Andante" 4 = 80
	\time 4/4
	\key ees \major

%% part "A"
	\repeat volta 2 {
		ees2 ees' | d4 bes8 c d4 ees | ees,2 c' | bes1 |
		c,2 aes' | g4 ees8 f g4 aes | f d8 ees f4 g |
	} \alternative {
		{
			ees2 r |
		}
		{
			ees2. bes'4 |
		}
	}

%% part "B"
	g8 bes g bes g bes g bes | aes bes aes bes aes bes aes bes | c2 c~ | c r4 bes |
	g8 bes g bes g bes g bes | a c a c a c a c | d2 d | f c |

%% part "A"
	ees,2 ees' | d4 bes8 c d4 ees | ees,2 c' | bes1 |
	c,2 aes' | g4 ees8 f g4 aes | f d8 ees f4 g | ees2 r |
}






 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Some -- where o -- ver the rain -- bow
	Way up high,
	There's a land that I heard of
	Once in a lu -- lla -- by.

%% part "B"
	_ Some -- day I'll wish u -- pon a star
	And wake up where the clouds are far
	Be -- hind me.
	Where trou -- bles melt like le -- mon drops
	A -- way a -- bove the chim -- ney tops
	That's where you'll find me.

%% part "A"
	Some -- where o -- ver the rain -- bow
	Blue -- birds fly.
	Birds fly o -- ver the rain -- bow.
	Why then, oh why can't I?
}






}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Some -- where o -- ver the rain -- bow
	Skies are blue,
	And the dreams that you dare to dream
	Real -- ly do come _ true.
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
		\smaller \smaller { "Copyright © Musicopy" }
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

