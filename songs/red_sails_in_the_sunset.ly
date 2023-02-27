

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
% title: Red Sails In The Sunset
% style: Jazz
% composer: Hugh Williams
% poet: Jimmy Kennedy
% piece: Slowly
% copyright: 1935 The Peter Maurice Music Co. Ltd., London, England
% copyrightextra: United Sates Copyright Renewed and Assigned to Sharpiro, Bernstein & Co., Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 2507f6ec-da80-11e3-9bfd-ff436f70a1a7
% structure: AABA
% location: jfb:313
% idyoutuberemark1: Nat King Cole in a classic...
% idyoutube1: HLQZZoAkdig
% idyoutuberemark2: The Beatles?!?
% idyoutube2: b_Xg_md46Sw
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Red-Sails-In-the-Sunset-lyrics-Nat-King-Cole/F51AC099651BC18A48256AF1000B7499
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
	      \underline \sans "Red Sails In The Sunset"
	      \fontsize #1 \lower #1  "- Jimmy Kennedy / Hugh Williams"
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

  \tocItem \markup "Red Sails In The Sunset / Hugh Williams, Jimmy Kennedy"


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
		g1*2 | c2 c:m6 | g1 | \myEndLine
		g2 gis:dim7 | a2:m7 d:7 | a:m7 d:7 | g1 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g1*2 | c2 c:m6 | g1 | \myEndLine
		g2 gis:dim7 | a2:m7 d:7 | a:m7 d:7 | g1 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c2 c:m6 | g1 | d:7 | g | \myEndLine
		c2 c:m6 | g1 | a:7 | a2:m7 d:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g1*2 | c2 c:m6 | g1 | \myEndLine
		g2 gis:dim7 | a2:m7 d:7 | a:m7 d:7 |
	} \alternative {
		{
			g2 a4:m7 d:7 | \myEndLineVoltaNotLast
		}
		{
			g1 | \myEndLineVoltaLast
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
	\tempo "Moderato" 4 = 100
	\time 2/2
	\key g \major

	\repeat volta 2 {

	%% part "A"
		r4 b' \tuplet 3/2 { b c b } | d d2. | r4 g, \tuplet 3/2 { g a g } | b1 |
		r4 d, \tuplet 3/2 { d e d } | a' a2. | r4 a \tuplet 3/2 { a g fis } | g1 |

	%% part "A"
		r4 b \tuplet 3/2 { b c b } | d d2. | r4 g, \tuplet 3/2 { g a g } | b1 |
		r4 d, \tuplet 3/2 { d e d } | a' a2. | r4 a \tuplet 3/2 { a g fis } | g1 |

	%% part "B"
		a2 \tuplet 3/2 { g4 a g } | e d2. | r4 a' \tuplet 3/2 { a g e } | g1 |
		a2 \tuplet 3/2 { g4 a g } | e d2. | r8 b' b b b a4 g8 | a1 |

	%% part "A"
		r4 b \tuplet 3/2 { b c b } | d d2. | r4 g, \tuplet 3/2 { g a g } | b1 |
		r4 d, \tuplet 3/2 { d e d } | a' a2. | r4 a \tuplet 3/2 { a g fis } |
	} \alternative {
		{
			g2 r |
		}
		{
			g1 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Red Sails In The Sun -- set way out on the sea, oh! car -- ry my loved one
	home safe -- ly to me.

%% part "A"
	He sailed at the dawn -- ing, all day I've been blue.
	Red Sails In The Sun -- set I'm trust -- ing in you.

%% part "B"
	Swift wings you must bor -- row, make stright for the shore.
	We mar -- ry to -- mor -- row and he goes sail -- ing no more.

%% part "A"
	Red Sails In The Sun -- set way out on the sea, oh! car -- ry my loved one home safe -- ly to me.

%% part "Volta"
	me.
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
		\smaller \smaller { "Copyright © 1935 The Peter Maurice Music Co. Ltd., London, England" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

