

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
% title: Autumn Leaves
% style: Jazz
% subtitle: Les Feuilles Mortes
% composer: Joseph Kosma
% poet: Jacques Prevert, Johnny Mercer
% piece: Med. Jazz
% copyright: 1947, 1950, 1987 Enoch Et Cie. Renewed 1975, 1978 Enoch Et Cie
% copyrightextra: Sole Selling Agent for U.S.A (including its territories and possessions) and Dominion of Canada: Morley Music Co., by arrangement with Enoch Et Cie. International Copyright Secured. All Rights Reserved.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 8c35acf6-a7c1-11df-9040-0019d11e5a41
% structure: AAB
% location: rbk1:36,jfb:50
% idyoutuberemark1: The great Bill Evans...
% idyoutube1: mRhVI7cpcS4
% idyoutuberemark2: Keith Jarret in a great performance
% idyoutube2: io1o1Hwpo8Y
% lyricsurl: http://www.bluesforpeace.com/lyrics/autumn-leaves.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Med. Jazz"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Autumn Leaves"
	      \fontsize #1 \lower #1  "- Jacques Prevert, Johnny Mercer / Joseph Kosma"
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

  \tocItem \markup "Autumn Leaves / Joseph Kosma, Jacques Prevert, Johnny Mercer"


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

	\myMark "A"
	\startPart
	a1:m7 | d:7 | g:maj7 | c:maj7 | \myEndLine
	fis:m7.5- | b:7 | e1*2:m | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a1:m7 | d:7 | g:maj7 | c:maj7 | \myEndLine
	fis:m7.5- | b:7 | e2:m a:m | e1:m | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	fis:m7.5- | b:7 | e1*2:m | \myEndLine
	a1:m7 | d:7 | g:maj7 | e:7.9- | \myEndLine
	fis:m7.5- | b:7.9- | e2:m e:m/d | cis:m7.5- c:maj7 | \myEndLine
	fis1:m7.5- | b:7.9- | e2:m a:m | e1:m | \myEndLine
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
	\key e \minor

	\partial 2. e4 fis g |

%% part "A"
	c1~ | c4 d, e fis | b2 b~ | b4 c, d e |
	a1~ | a4 b, cis dis | g1 | r4 e fis g |
	c1~ | c4 d, e fis | b2 b~ | b4 c, d e |
	a1~ | a4 fis a g | e1~ | e4 r dis e |

%% part "B"
	fis b, fis'2~ | fis4 fis e fis | g1~ | g4 g fis g |
	a1~ | a4 d, d'4. c8 | b1~ | b4 r ais b |
	c c a a | fis2. c'4 | b2 b~ | b e, |
	a2. g4 | fis2 g4 b, | e1~ | e4 r r2 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	








\lyricmode {

%% part "A"
	The fall -- ing leaves __ drift by the win -- dow, __
	The Au -- tumn Leaves, __ of red and gold.

%% part "A"
	I see your lips, __ the sum -- mer kiss -- es,
	The sun -- burned hands __ I used to hold.

%% part "B"
	Since you went a -- way __ the days grow long, __
	And soon I'll hear __ old win -- ter's song. __
	But I miss you most of all my dar -- ling, __
	When Au -- tumn Leaves start to fall. __
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
		\smaller \smaller { "Copyright © 1947, 1950, 1987 Enoch Et Cie. Renewed 1975, 1978 Enoch Et Cie" }
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

