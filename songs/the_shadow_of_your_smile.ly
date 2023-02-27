

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
% title: The Shadow of Your Smile
% style: Jazz
% composer: Johnny Mandel
% poet: Paul Francis Webster
% piece: Slow Bossa
% copyright: 1965 (Renewed 1993) MGM/EMI Miller Catalog, Inc
% copyrightextra: Used by Permission of CPP/Belwin, Inc, Miami, FL
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: dff04e04-a969-11e1-b8c5-5a1faa0d3cc5
% structure: ABAC
% structureremark: The structure could also be thought of as AB but it is very close to a pure ABAC
% location: nrbk3:336,rbk1:381
% idyoutuberemark1: A very sensitive rendition by Dexter Gordon
% idyoutube1: 8PttNhYVY3c
% idyoutuberemark2: Sarah Vaughan, fucking awesome
% idyoutube2: t9HxfF7faXk
% lyricsurl: http://www.absolutelyrics.com/lyrics/view/barbra_streisand/the_shadow_of_your_smile
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
	      \fontsize #1 \lower #1 \rotate #7 "Slow Bossa"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "The Shadow of Your Smile"
	      \fontsize #1 \lower #1  "- Paul Francis Webster / Johnny Mandel"
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

  \tocItem \markup "The Shadow of Your Smile / Johnny Mandel, Paul Francis Webster"


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

	\partial 8*5 s8 s2 |

	\myMark "A"
	\startPart
	fis1:m7 | b2:7.9 b:7.9- | e1:m7 | a:7 | \myEndLine
	a:m7 | d:7 | g:maj7| c:maj7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	fis:m7.5- | b:7 | e1.:m7 e2:m7/d | \myEndLine
	cis1:m7.5- | fis:7 | fis:m7 | b:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	fis1:m7 | b2:7.9 b:7.9- | e1:m7 | a:7 | \myEndLine
	a:m7 | d:7 | b:m7.5- | e:7.3-.5-.9-.11-.13- | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	a:m7 | c2:m7 f:7 | b1:m7 | e:7.9- | \myEndLine
	a2:7 ees:7 | a:m7 d:7.9- | g1.:6 \OPC b2:7 | \myEndLine
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

	\partial 8*5 b8 e fis g b |

%% part "A"
	cis,2. fis4 | dis2. c!4 | b1~ | b4. b8 e fis g b |
	e,2. a4 | fis2. d4 | b'1~ | b2 c8 b a g |

%% part "B"
	a2. c,4 | b2. a'4 | g1~ | g2 b8 a g fis |
	g2. b,4 | ais2. g'4 | fis1~ | fis4 r8 b, e fis g b |

%% part "A"
	cis,2. fis4 | dis2. c!4 | b1~ | b4. b8 e fis g b |
	e,2. c'4 | a2. fis4 | d'1~ | d2 e8 d c b |

%% part "C"
	c4. e,8 c'2~ | c d8 c b a | b4. d,8 b'2~ | b c8 b a gis |
	a4. cis,8 a'2~ | a4. c,!8 b' a g fis | g1 | r4_\markup { \italic { Fine } } r8 b, e fis g b |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics).
\lyricmode {

%% part "A"
	The sha -- dow of your smile, when you are gone. __
	Will co -- lor all my dreams, and light the dawn. __

%% part "B"
	Look in -- to my eyes, my love, and see. __
	All the love -- ly things you are to me. __

%% part "A"
	A wist -- ful lit -- tle star, was far too high. __
	A tear drop kissed your lips, and so did I. __

%% part "C"
	Now when I re -- mem -- ber spring. __
	All the joy that love can bring. __
	I will be re -- mem -- be -- ring __
	The sha -- dow of your smile.

%% part "return"
	The sha -- dow of your
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
		\smaller \smaller { "Copyright © 1965 (Renewed 1993) MGM/EMI Miller Catalog, Inc" }
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

