

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
% title: Greensleeves
% style: Jazz
% composer: Traditional
% piece: Slowly
% copyright: 1988 by HAL LEONARD PUBLISHING CORPORATION
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: dbd95022-6dd8-11e5-864c-3860779cb560
% structure: AA'BB'
% location: jfb:138
% idyoutuberemark1: The great Oscar
% idyoutube1: 35eZI9plYpk
% idyoutuberemark2: Paul Desmond in a mellow version
% idyoutube2: GH9tcQI_Qvw
% lyricsurl: http://www.metrolyrics.com/greensleeves-lyrics-loreena-mckennitt.html
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
	      \underline \sans "Greensleeves"
	      \fontsize #1 \lower #1  "- Traditional"
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

  \tocItem \markup "Greensleeves / Traditional"


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

	\partial 8 s8 |

	\myMark "A"
	\startPart
	\repeat volta 2 {

		e2.:m | d4. d8. dis8.:dim |
	} \alternative {
		{

			e4.:m fis:7 | b2. | \myEndLineVoltaLast
		}
		{
			e4.:m b:7 | e4:m a8:m e4.:m | \myEndLineVoltaNotLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	\repeat volta 2 {

		g2. | d4. d8. dis8.:dim | \myEndLine
	} \alternative {
		{
			e4.:m fis:7 | b2. | \myEndLineVoltaNotLast
		}
		{
			e4.:m b:7 | e4:m a8:m e4.:m | \myEndLineVoltaLast
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
	\tempo "Andante" 4 = 76
	\time 6/8
	\key e \minor

	e8 |

%% part "A"
	\repeat volta 2 {
		g4 a8 b8. c16 b8 | a4 fis8 d8. e16 fis8 |
	} \alternative {
		{
			g4 e8 e8. dis16 e8 | fis4 dis8 b4 e8 |
		}
		{
			g fis e dis8. cis16 dis8 | e4 e8 e4 r8 |
		}
	}

%% part "B"
	\repeat volta 2 {
		d'4. d8. c16 b8 | a4 fis 8 d8. e16 fis8 |
	} \alternative {
		{
			g4 e8 e8. dis16 e8 | fis4 dis8 b4 r8 |
		}
		{
			g' fis e dis8. cis16 dis8 | e4. e |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	A -- las, my love, __ _ you do me wrong __ _ to cast me off __ _ dis -- cour -- teous -- ly.
	And
	_ _ _ _ _ _ _ _ _
	Green -- sleeves __ _ was all my joy. __ _ _
	Green -- _ sleeves _ was my de -- light.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	_
	I have loved __ _ you oh, so, long __ _ de
	_ _ _ _ _ _ _ _ _
	light -- _ ing in __ _ your com -- pa -- ny.
	Green -- sleeves was my heart of gold, __ _ and
	_ _ _ _ _ _ _ _
	who but my la -- _ dy Green -- sleeves.
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
		\smaller \smaller { "Copyright © 1988 by HAL LEONARD PUBLISHING CORPORATION" }
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

