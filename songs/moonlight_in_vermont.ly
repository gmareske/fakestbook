

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
% title: Moonlight in Vermont
% style: Jazz
% composer: Karl Suessdorf
% poet: John Blackburn
% piece: Freely
% copyright: 1944-1945 by MICHAEL H GOLDSEN, INC.
% copyrightextra: Renewed 1972-1973 MICHAEL H GOLDSEN, INC.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 557b082e-e0d8-11e3-a037-b365e6166d43
% structure: AABA
% location: jfb:256
% idyoutuberemark1: Louis and Ella
% idyoutube1: Rg0hg5YD7sE
% idyoutuberemark2: Franks version
% idyoutube2: _CiizL8Vfu8
% lyricsurl: http://www.azlyrics.com/lyrics/franksinatra/moonlightinvermont.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Freely"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Moonlight in Vermont"
	      \fontsize #1 \lower #1  "- John Blackburn / Karl Suessdorf"
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

  \tocItem \markup "Moonlight in Vermont / Karl Suessdorf, John Blackburn"


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
	ees2:6 c:m7 | f:m7 e:7.9+ | ees:6 c:m7 | des1:9 | f2:m7 bes:7.11 | ees f4:m7 bes:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees2:6 c:m7 | f:m7 e:7.9+ | ees:6 c:m7 | des1:9 | f2:m7 bes:7.11 | ees1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	a2:m11 d:7 | g:maj7 gis:dim7 | a:m11 aes:9.11+ | g:maj7 g:6 | \myEndLine
	bes:m11 ees:7 | aes:maj7 a:dim7 | bes:m11 ees:9 | aes bes:7.5+.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees2:6 c:m7 | f:m7 e:7.9+ | ees:6 c:m7 | des1:9 | f2:m7 bes:7.11 | ees1 | \myEndLine
	c2:m7 f4:9 e:9 | ees1:maj9 | \myEndLine
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
	\key ees \major

%% part "A"
	c'4 bes g f | g1 | c4 bes g4. ees8 | f g ces,2. | g'4 f ees c! | ees1 |

%% part "A"
	c'4 bes g f | g1 | c4 bes g4. ees8 | f g ces,2. | g'4 f ees c! | ees1 |

%% part "B"
	d8 d d d~ d d4 d8 | d d4 d8 d d4 d8 | d d d d'~ d4 c8 d | b!1 |
	ees,8 ees ees ees~ ees ees4 ees8 | ees ees4 ees8 ees ees4 ees8 | ees ees ees ees'~ ees4 des8 ees | c2 ces |

%% part "A"
	c!4 bes g f | g1 | c4 bes g4. ees8 | f g ces,2. | g'4 f ees c! | ees1 |
	b!8 c ees g c d b! cis! | bes!1 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Pen -- nies in a stream, fall -- ing leaves, a sy -- ca -- more, Moon -- light In Ver -- mont.

%% part "A"
	I -- cy fin -- ger -- waves, ski trails on a moun -- tain -- side, snow -- light in Ver -- mont.

%% part "B"
	Tel -- e -- graph ca -- __ bles, they sing down the high -- way and tra -- vel each bend __ in the road,
	peo -- ple who meet __ in this ro -- man -- tic set -- ting are so hyp -- no -- tized __ by the love -- ly

%% part "A"
	ev' -- ning sum -- mer breeze, warb -- ling of a mea -- dow -- lark, Moon -- light In Ver -- mont,
	you and I and Moon -- light In Ver -- mont.
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
		\smaller \smaller { "Copyright © 1944-1945 by MICHAEL H GOLDSEN, INC." }
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

