

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
% title: A Day In The Life Of A Fool
% style: Jazz
% subtitle: Manha De Carnaval / Black Orpheus
% composer: Luiz Bonfa
% poet: Carl Sigman
% piece: Slow Bossa Nova
% copyright: 1959 by Nouvelles Editions Meridian
% copyrightextra: 1964 by Anne-Rachel Music Corp. and United Artists Music Co., Inc. Copyrights for the U.S.A. & Canada assigned to Chappell & Co., Inc. and United Artists Music Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 88a1ec40-db4c-11e3-8a8c-23226fc873cc
% structure: AA'B
% structureremark: This is almost ABAC
% location: jfb:94-95
% idyoutuberemark1: Frank doin it sadly...
% idyoutube1: ZMX3AeJy4_Q
% idyoutuberemark2: Cassandra Wilson live
% idyoutube2: SHRn-uKViqg
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/a+day+in+the+life+of+a+fool_20055645.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slow Bossa Nova"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "A Day In The Life Of A Fool"
	      \fontsize #1 \lower #1  "- Carl Sigman / Luiz Bonfa"
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

  \tocItem \markup "A Day In The Life Of A Fool / Luiz Bonfa, Carl Sigman"


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

	\partial 4 s4 |

	\myMark "A"
	\startPart
	a1:m | b2:m7.5- e:7.9- | a1:m | b2:m7.5- e:7.9- | \myEndLine
	a1:m | d2:m7 g:7 | c1:maj7 | e2:m7.5- a:7.9- | \myEndLine
	d1:m7 | g:7 | c:maj7 | f:maj7 | \myEndLine
	b:m7.5- | e:7.9- | a:m | b2:m7.5- e:7.9- | \myEndLine
	\endPart

	\myMark "A'"
	\startPart
	a1:m | b2:m7.5- e:7.9- | a1:m | b2:m7.5- e:7.9- | \myEndLine
	e1:m7.5- | a:7.9- | d1*2:m | \myEndLine
	d2:m d:m/c | b:m7.5- e:7.9- | a:m a:m/g | f1:maj7 | \myEndLine
	b:m7.5- | e:7 | a2:m d:m7 | a1:m | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	d2:m7 a:m7 | d:m7 a:m7 | d:m7 e:m7 | a1*2:m6 | \myEndLine
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
	\tempo "Moderato" 4 = 120
	\time 4/4
	\key c \major

	\partial 4 e4 |

%% part "A"
	c'2~ \tuplet 3/2 { c4 b a } | a2~ \tuplet 3/2 { a4 gis b } | e,1~ | e2 r4 e4 |
	c'2~ \tuplet 3/2 { c4 b a } | a2~ \tuplet 3/2 { a4 g b } | e,1~ | e2 r8 e f g |
	a4. d,8 d2~ | d r8 d e f | g4. c,8 c2~ | c r8 c d e |
	f4. b,8 b2~ | b \tuplet 3/2 { b4 c d } | e1~ | e2 r4 e |

%% part "A'"
	c'2~ \tuplet 3/2 { c4 b a } | a2~ \tuplet 3/2 { a4 gis b } | e,1~ | e2 r4 e4 |
	bes'2~ \tuplet 3/2 { bes4 a g } | g2~ \tuplet 3/2 { g4 f e } | a1~ | a |
	r4 d, \tuplet 3/2 { d e f } | b1 | r4 c, \tuplet 3/2 { c d e } | a2. g4 |
	e1~ | e2 \tuplet 3/2 { e4 gis b } | a1~ | a2 \tuplet 3/2 { r4 a b } |

%% part "B"
	\tuplet 3/2 { c d c } \tuplet 3/2 { b a b } | \tuplet 3/2 { c d c } \tuplet 3/2 { b a b } |
	\tuplet 3/2 { c d c } \tuplet 3/2 { b a g } | a1~ | a2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	A Day __ In The Life __ Of A Fool, __
	a sad __ and a long, __ lone -- ly day, __
	I walk the av -- e -- nue __ and hope I'll run in -- to __
	the wel -- come sight of you __ com -- ing my way. __

%% part "A'"
	I stop __ just a -- cross __ from your door __
	but you're __ nev -- er home __ an -- y -- more. __
	So back to my room and there in the gloom
	I cry __ tears of good -- bye. __

%% part "B"
	'Til you come back to me,
	that's the way it will be
	ev -- 'ry day in the life of a fool. __
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
		\smaller \smaller { "Copyright © 1959 by Nouvelles Editions Meridian" }
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

