

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
% title: What A Wonderful World
% style: Jazz
% composer: George David Weiss, Bob Thiele
% poet: George David Weiss, Bob Thiele
% piece: Slowly
% copyright: 1967 by Range Road Music Inc. and Quartet Music Inc.
% copyrightextra: All rights administered by Hudson Bay Music, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 39de7d2c-a26f-11df-8dbc-0019d11e5a41
% structure: AABA
% location: jfb:422-423
% idyoutuberemark1: Orchestral version from the film score of 'Meet Joe Black'
% idyoutube1: Qhrpc9FFFAI
% idyoutuberemark2: Louis in the classic version
% idyoutube2: m5TwT69i1lU
% lyricsurl: http://www.lyrics007.com/Louis%20Armstrong%20Lyrics/What%20A%20Wonderful%20World%20Lyrics.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "What A Wonderful World"
	      \fontsize #1 \lower #1  "- George David Weiss, Bob Thiele"
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

  \tocItem \markup "What A Wonderful World / George David Weiss, Bob Thiele"


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
	f2 a:m | bes a:m | g:m7 f | a:7 d:m | \myEndLine
	des1 | g2:m7/c c:7 | f f:5+ | bes:maj7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2 a:m | bes a:m | g:m7 f | a:7 d:m | \myEndLine
	des1 | g2:m7/c c:7 | f bes | bes f | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1:7 | f | c:7 | f | \myEndLine
	d2:m c | d:m c | d:m fis:dim7 | g4:m7 fis:dim7 g:m7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2 a:m | bes a:m | g:m7 f | a:7 d:m | \myEndLine
	des1 | g2:m7/c c:7 | f a:m7.5- | d1:7 | \myEndLine
	g:m7 | g2:m7/c c:7.9- | f bes:6 | bes:6 f | \myEndLine
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
	\tempo "Andante" 4 = 76
	\time 4/4
	\key f \major

	\partial 4 c8 e |

%% part "A"
	f4. a8 c2 | r8 d d d c2 | r8 bes bes bes a2 | r8 g g g f4~ \tuplet 3/2 { f8 f f } |
	f4~ \tuplet 3/2 { f8 f f } f2 | r4 f8 f \tuplet 3/2 {e4 f g} | a1~ | a2 r4 c,8 e |

%% part "A"
	f4. a8 c4. c8 | d4. d8 c4. c8 | bes4~ \tuplet 3/2 { bes8 bes bes } a4. a8 | g4~ \tuplet 3/2 { g8 g g } f4~ \tuplet 3/2 { f8 f f } |
	f4~ \tuplet 3/2 { f8 f f } f2 | r4 f8 f \tuplet 3/2 {e4 f g } | f1~ | f2 r4 f4 |

%% part "B"
	g8 g g g g c,4 c8 | bes' a a gis a4. f8 | g g g g g c,4 g'8 | bes a a gis a4 a8 c |
	d4 d8 d c4~ \tuplet 3/2 { c8 a c } | d4 d8 d c2 | r8 d d d c c4. | bes4 a g c,8 e |

%% part "A"
	f4. a8 c4. c8 | d4. d8 c2 | r8 bes bes bes a4. a8 | g4~ \tuplet 3/2 { g8 g g } f4~ \tuplet 3/2 { f8 f f } |
	f4~ \tuplet 3/2 { f8 f f } f2 | r4 f8 f \tuplet 3/2 {e4 f g} | a1~ | a4 r a a |
	\tuplet 3/2 {a4 f g} f2 | r4 f8 f \tuplet 3/2 {e4 f g} | f1~ | f\fermata |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I see trees of green, red ros -- es too, I see the bloom for me and you, __
	and I think __ to my -- self What A Won -- der -- ful World. __

%% part "A"
	I see skies of blue and clouds of white, the bright __ bless -- ed day, the dark __ sac -- red night, __
	and I think __ to my -- self What A Won -- der -- ful World. __

%% part "B"
	The col -- ors of the rain -- bow, so pret -- ty in the sky
	are al -- so on the fa -- ces of peo -- ple go -- in' by,
	I see friends shak -- in' hands, __ say -- in' "\"How" do you "do!\""
	They're real -- ly say -- in' "\"I" love "you,\""

%% part "A"
	I hear ba -- bies cry, I watch them grow.
	They'll learn much more than I'll __ ev -- er know, __
	and I think __ to my -- self What A Won -- der -- ful World. __
	Yes, I think to my -- self What A Won -- der -- ful World. __
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
		\smaller \smaller { "Copyright © 1967 by Range Road Music Inc. and Quartet Music Inc." }
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

