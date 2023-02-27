

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
% title: My Romance
% style: Jazz
% subtitle: From 'Jumbo'
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Moderately Slow
% copyright: 1935, T.B. Harms Company. Copyright Renewed, (c/o The Welk Music Group, Santa Monica, CA 90401)
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 6a5d2730-c7dd-11df-b3d0-0019d11e5a41
% structure: ABAC
% structureremark: this tunes song could also be noted as AB but then you lose the info that the first 8 bars of the A and part B are the same.
% location: rbk1:311,jfb:268
% idyoutuberemark1: Ben Webster on his airy sax...
% idyoutube1: _D2XBzcKFPM
% idyoutuberemark2: The great Bill Evans in the late 70's trio
% idyoutube2: aCO1Gd0jRto
% lyricsurl: http://www.lyricsfreak.com/e/ella+fitzgerald/my+romance_20045848.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately Slow"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "My Romance"
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

  \tocItem \markup "My Romance / Richard Rodgers, Lorenz Hart"


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
	c2:maj7 d:m7 | e:m7 ees:dim7 | d:m7 g:7 | c:maj7 bes:7.13 | \myEndLine
	a:m a:m7+ | a:m7 a:7 | d:m7 g:7 | c:maj7 c:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f:maj7 fis:dim7 | c:maj7 c:7 | f:maj7 fis:dim7 | c1:maj7 | \myEndLine
	fis2:m7 f:7.5- | e:m7 ees:7 | a:m7.9 d:7 | d:m7 g:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c:maj7 d:m7 | e:m7 ees:dim7 | d:m7 g:7 | c:maj7 bes:7.13 | \myEndLine
	a:m a:m7+ | a:m7 a:7 | d:m7 g:7 | c:maj7 c:7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	f:maj7 f:maj7/e | d:m7 d:m7/c | b:m7 bes:9.11+ | a:m7 aes:7.9 | \myEndLine
	c:maj7/g a:m7 | d:m7 d4:m7/g g:7 | c1*2:6 | \myEndLine
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
	\key c \major

	\partial 4 e8 f |

%% part "A"
	g2. e8 f | g4 a b c | c2. b8 a | g2. c,8 d |
	e2. c8 d | e4 f g a | a2. g8 f | e2. g4 |

%% part "B"
	c,2. c'4 | g2. g4 | c,2. c'4 | g2. c4 |
	b2. a4 | g2. c4 | b2. a4 | g2. e8 f |

%% part "A"
	g2. e8 f | g4 a b c | c2. b8 a | g2. c,8 d |
	e2. c8 d | e4 f g a | a2. g8 f | e2. f8 g |

%% part "C"
	a2. f8 g | a4 b c d | e e e e | c2. c8 d |
	e2. c8 d | e4 c4 a4 f4 | c'1~ | c2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	My Ro -- mance does -- n't have to have a moon in the sky,
	My Ro -- mance does -- n't need a blue la -- goon stand -- ing by;

%% part "B"
	no month of May, no twin -- kling stars,
	no hide a -- way, no soft gui -- tars.

%% part "A"
	My Ro -- mance does -- n't need a cas -- tle ris -- ing in Spain,
	nor a dance to a con -- stant -- ly sur -- pris -- ing re -- frain.

%% part "C"
	Wide a -- wake I can make my most fan -- tas -- tic dreams come true;
	My Ro -- mance does -- n't need a thing but you. __
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
		\smaller \smaller { "Copyright © 1935, T.B. Harms Company. Copyright Renewed, (c/o The Welk Music Group, Santa Monica, CA 90401)" }
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

