

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
% title: Let's Call The Whole Thing Off
% style: Jazz
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Brightly
% copyright: 1936, 1937 by Gershwin Publishing Corporation
% copyrightextra: Copyright Renewed, Assigned to Chappell & Co, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 135384a2-4235-11e5-941e-3860779cb560
% structure: AA'BA''
% structureremark: this tune is very close to AABA. The tags (A') are there to show that there are subtle changes but these are indeed subtle.
% location: jfb:216
% idyoutuberemark1: 
% idyoutube1: 
% idyoutuberemark2: 
% idyoutube2: 
% lyricsurl: 
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
	      \fontsize #1 \lower #1 \rotate #7 "Brightly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Let's Call The Whole Thing Off"
	      \fontsize #1 \lower #1  "- Ira Gershwin / George Gershwin"
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

  \tocItem \markup "Let's Call The Whole Thing Off / George Gershwin, Ira Gershwin"


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
		g2 e:m9 | a:m7 d:7 | g2 e:m9 | a:m7 d:7 | \myEndLine
		g g:7/f | c/e c:m/ees | g/d e:m | a:7 d:7 | \myEndLine
		\endPart

		\myMark "A'"
		\startPart
		g2 e:m9 | a:m7 d:7 | g2 e:m9 | a:m7 d:7 | \myEndLine
		g g:7/f | c/e c:m/ees | g/d d:7 | g1 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		cis:m7.5- | fis2:7 b:m7 | e:7 a:m7 | d1:7 | \myEndLine
		cis:m7.5- | fis2:7 b:m7 | e:7 a:m7 | d1:7 | \myEndLine
		\endPart

		\myMark "A''"
		\startPart
		g2 e:m9 | a:m7 d:7 | g2 e:m9 | a:m7 d:7 | \myEndLine
		g g:7/f | c/e c:m/ees | g/d d:7 | b:7 e:7 | a:m7 d:7 |

	} \alternative {
		{
			g ees4:7 d:7 | \myEndLineVoltaNotLast
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
	\tempo "Allegro" 4 = 130
	\time 2/2
	\key g \major

	\repeat volta 2 {

	%% part "A"
		g'4 e8 fis~ fis fis4 e8 | g4 a8 b~ b b4. | g4 e8 fis~ fis fis4 e8 | g4 a8 b~ b b4. |
		d8 g, r4 d'8 g, r4 | d'8 g, r4 d'8 g, r4 | d'4 c8. b16 a4 g | a2. r4 |

	%% part "A"
		g8 g4 e8 fis fis4 e8 | g g4 a8 b b4. | g8 g4 e8 fis fis4 e8 | g g4 a8 b b4 b8 |
		d g, r g d' g, r g | d' g, r g d' g, r g | d'4 c8. b16 a4 g | g2 r4 g |

	%% part "B"
		e'1 | d8. cis16 b8. cis16 d4 d | b b c c | a2. e4 |
		e'1 | d8. cis16 b8. cis16 d4 d | b b c c | a2. d,8. d16 |

	%% part "A"
		g8 g4 e8 fis fis4 e8 | g g4 a8 b b4. | g8 g4 e8 fis fis4 e8 | g g4 a8 b b4 b8 |
		d g, r4 d'8 g, r4 | d'8. d16 g,8. g16 d'8 g,4. | d'8. d16 c8. b16 c8. b16 a4 | b2. r4 | e b8. c16 b4 a |
	} \alternative {
		{
			g2. r4 |
		}
		{
			g2. r4 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	You say ee -- __ ther and I say eye -- __ ther,
	you say nee -- __ ther and I say ny -- __ ther;
	ee -- ther, eye -- ther, nee -- ther, ny -- ther,
	Let's Call The Whole Thing Off!

%% part "A"
	You like po -- ta -- to and I like po -- tah -- to,
	you like to -- ma -- to and I like to - mah -- to;
	po -- ta -- to, po -- tah -- to, to -- ma -- to, to -- mah -- to!
	Let's Call The Whole Thing Off!
	But

%% part "B"
	oh! If we call the whole thing off,
	then we must part. And
	oh! If we ev -- er part, then that might break my heart!

%% part "A"

%% part "Volta"
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"

%% part "A"

%% part "B"

%% part "A"
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
		\smaller \smaller { "Copyright © 1936, 1937 by Gershwin Publishing Corporation" }
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

