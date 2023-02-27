

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
% title: This Can't Be Love
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Moderately
% copyright: 1938 by Chappell & Co., Inc. Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: c01fbf4c-d7a2-11e3-a29f-abfec0c435b3
% structure: AABA
% location: jfb:392
% idyoutuberemark1: I like this version by Diana Krall
% idyoutube1: 9uRGw8Bc0s0
% idyoutuberemark2: Well know version by Nat King Cole
% idyoutube2: dfWsU4IDCS0
% lyricsurl: http://www.lyricsfreak.com/n/nat+king+cole/this+cant+be+love_20098113.html
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
	      \underline \sans "This Can't Be Love"
	      \fontsize #1 \lower #1  "- Lorenz Hart / Richard Rodgers"
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

  \tocItem \markup "This Can't Be Love / Richard Rodgers, Lorenz Hart"


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
	g1*2:6 | c:7 | \myEndLine
	g1*2 | a2:m7 d:7 | a:m7 d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g1*2:6 | c:7 | \myEndLine
	g1 | a2:m7 d:7 | g c:7 | g1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	fis:m7 | b:7 | e1*2:m7 | \myEndLine
	f1:13 | e:7.5+ | a:9 | d:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g1*2 | c:7 | \myEndLine
	g1:6 | a2:m7 d:7 | g d:7 | g1 | \myEndLine
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
	\tempo "Presto" 4 = 200
	\time 2/2
	\key g \major

%% part "A"
	g'2 fis4 g | d g fis g | e2 g4 a~ | a2. g4 |
	b r d, d~ | d e g2 | a1~ | a2. r4 |

%% part "A"
	g2 fis4 g | d g fis g | e2 g4 a~ | a2. g4 |
	d' r g, g~ | g b a2 | g1~ | g4 b b b |

%% part "B"
	cis, r e dis~ | dis b' b8 b4. | d1 | r4 b b b |
	d1 | c | b | a |

%% part "A"
	g2 fis4 g | d g fis g | e2 g4 a~ | a g a g |
	e' r g, g~ | g b a2 | g1~ | g2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	This Can't Be Love be -- cause I feel so well, __
	no sobs, no sor -- rows, no sighs; __

%% part "A"
	This Can't Be Love, I get no diz -- zy spell. __
	My head is not __ in the skies, __

%% part "B"
	my heart does not stand still, __ just hear it beat!
	This is too sweet to be love.

%% part "A"
	This Can't Be Love be -- cause I feel so well; __
	but still I love to look __ in your eyes. __
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
		\smaller \smaller { "Copyright © 1938 by Chappell & Co., Inc. Copyright Renewed" }
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

