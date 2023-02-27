

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
% title: But Beautiful
% style: Jazz
% composer: Johnny Burke, James Van Heusen
% poet: Johnny Burke, James Van Heusen
% piece: Slowly
% copyright: 1947 by Doesey Brothers Music, A Division of Music Sales Corporation, New York
% copyrightextra: Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 769f56f4-7f33-11ea-b0b2-eb3dd252214d
% structure: ABAC
% structureremark: 
% location: jfb:74
% idyoutuberemark1: Tony Bennett and Lady Gaga
% idyoutube1: O1OdWOLWeCM
% idyoutuberemark2: Classic Nat King Cole version
% idyoutube2: uywr_l2tfdQ
% lyricsurl: https://genius.com/Nat-king-cole-but-beautiful-lyrics
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
	      \underline \sans "But Beautiful"
	      \fontsize #1 \lower #1  "- Johnny Burke, James Van Heusen"
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

  \tocItem \markup "But Beautiful / Johnny Burke, James Van Heusen"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		g1:maj9 | b2:m7.5- e:7.9- | a1:m9 | cis2:m7.5- fis:7.9- | \myEndLine
		g1:maj9 | b2:m7.5- e:7 | a1*2:9 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		d2.:7 d4:7/c | b2:m7 e:m7 | a:m7 d:7 | g1 | \myEndLine
		e2:m6 e2:m7 | a1:9 | a:m7 | d:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g:maj9 | b2:m7.5- e:7.9- | a1:m9 | cis2:m7.5- fis:7.9- | \myEndLine
		g1:maj9 | b2:m7.5- e:7 | a1*2:9 | \myEndLine
		\endPart

		\myMark "C"
		d2. d4:7/c | b2:m7 e:m7 | a:m7 b4:7.5+ b:7 | e2:m7 c4:m7 f:7 | \myEndLine
		g2 e:7 | a:m7 d4:7 aes:7 |
		\startPart

	} \alternative {
		{
			g1 | a2:m7 d:7 | \myEndLineVoltaNotLast
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
	\time 2/2
	\key g \major

	\partial 4 cis8 d |

	\repeat volta 2 {

	%% part "A"
		a'4 a2 g8 fis | f!2. dis8 e | b'4 b2 a8 aes | g2. fis8 g |
		d'4 d2 b8 bes | a2. gis4 | b8 b b2.~ | b1 |

	%% part "B"
		b8 b b2 a4 | d b a4. g8 | c4 a g fis | b2. d,8 dis |
		e4 e2 g4 | b g fis e | a1~ | a2. cis,8 d |

	%% part "A"
		a'4 a2 g8 fis | f!2. dis8 e | b'4 b2 a8 aes | g2. fis8 g |
		d'4 d2 b8 bes | a2. gis4 | b8 b b2.~ | b e,8 eis |

	%% part "C"
		fis4 fis2 a4 | d b a4. g8 | e'4 c b a | g2. g4 |
		d'8 d d2 g,4 | c8 c c2 fis,4 |

	} \alternative {
		{
			g1~ | g2. cis,8 d |
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
	Love is fun -- ny or it's sad or it's qui -- et or it's mad;
	it's a good thing or it's bad, But Beau -- ti -- ful! __

%% part "B"
	Beau -- ti -- ful to take a chance and if you fall, you fall,
	and I'm think -- ing I would -- n't mind at all. __

%% part "A"
	Love is tear -- ful or it's gay; it's a prob -- lem or it's play;
	it's a heart -- ache eith -- er way, But Beau -- ti -- ful! __

%% part "C"
	And I'm think -- ing if you were mine I'd nev -- er let you go,
	and that would be But Beau -- ti -- ful  I
%% part "Volta"
	know. __ Love is
	know. __
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
		\smaller \smaller { "Copyright © 1947 by Doesey Brothers Music, A Division of Music Sales Corporation, New York" }
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

