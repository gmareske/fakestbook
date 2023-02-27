

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
% title: How High The Moon
% style: Jazz
% composer: Morgan Lewis
% poet: Nancy Hamilton
% piece: Moderately
% copyright: 1940 by Chappell & Co., Inc. Copyright Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 7d17fd1c-15fe-11e1-b205-0019d11e5a41
% structure: AB
% structureremark: this tunes structure can also be categorised as ABAC if you take the AB as A and the AC as B. Under the AB interpretation the first part of A (first 8 bars) is the same as the first part of B.
% location: rbk1:202,jfb:149
% idyoutuberemark1: Ella!
% idyoutube1: 2d-l7_TGnIE
% idyoutuberemark2: Grappelli in a nice emotional version with McCoy Tyner at the Piano
% idyoutube2: S4kf5aU1Wtg
% lyricsurl: http://www.lyricsfreak.com/e/ella+fitzgerald/how+high+the+moon_20045644.html
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
	      \underline \sans "How High The Moon"
	      \fontsize #1 \lower #1  "- Nancy Hamilton / Morgan Lewis"
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

  \tocItem \markup "How High The Moon / Morgan Lewis, Nancy Hamilton"


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
		g1*2:maj7 | g1:m7 | c:7 | \myEndLine
		f1*2:maj7 | f1:m7 | bes:7 | \myEndLine
		ees:maj7 | a2:m7.5- d:7 | g1:m7 | a2:m7.5- d:7 | \myEndLine
		g1:maj7.9 | a2:m d:7 | b:m7 bes:7 | a:m7 a4:m7/d d:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g1*2:maj7 | g1:m7 | c:7 | \myEndLine
		f1*2:maj7 | f1:m7 | bes:7 | \myEndLine
		ees:maj7 | a2:m7.5- d:7 | g1:maj7 | a2:m7 d:7.9- | \myEndLine
		b:m7 bes:7 | a:m7 a4:m7/d d:7.9- |
	} \alternative {
		{
			g1:6 | d2:7 a4:m7/d d:7 | \myEndLineVoltaNotLast
		}
		{
			g1*2 | \myEndLineVoltaLast
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
	\key g \major

	\partial 2. d4 g a |

	\repeat volta 2 {

	%% part "A"
		a2 b~ | b4 d, g a | bes1~ | bes4 c, f g |
		g2 a~ | a4 c, f g | aes1~ | aes4 d, ees f |
		g g g g | g g8 a~ a g a4 | bes1~ | bes4. a8~ a g a4 |
		b!1~ | b4 a b c | d d d d | d d, g a |

	%% part "B"
		a2 b~ | b4 d, g a | bes1~ | bes4 c, f g |
		g2 a~ | a4 c, f g | aes1~ | aes4 d, ees f |
		g g g g | g g8 a~ a g a4 | b1~ | b4 a b c |
		d d d d | d d, g a |
	} \alternative {
		{
			g1 | r4 d g a |
		}
		{
			g1~ | g2. r4 |
		}
	}
}




 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Some -- where there's mu -- sic, __
	how faint the tune! __
	Some -- where there's heav -- en, __
	How High The Moon! __
	There is no moon a -- bove when love is far __ a -- way too, __
	'till __ it comes true __
	that you love me as I love you.

%% part "B"
	Some -- where there's mu -- sic, __
	it's where you are. __
	Some -- where there's heav -- en, __
	how near, how far! __
	The dark -- est night would shine if you would come __ to me soon. __
	Un -- til you will, how still my heart,
	How High The Moon!
%% Volta
	Some -- where there's
	Moon! __
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
		\smaller \smaller { "Copyright © 1940 by Chappell & Co., Inc. Copyright Renewed." }
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

