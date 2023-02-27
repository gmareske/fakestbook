

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
% title: Fly Me To The Moon
% style: Jazz
% subtitle: In Other Words
% composer: Bart Howard
% poet: Bart Howard
% piece: Moderately, with a beat
% copyright: 1954 and renewed 1982 Hampshire House Publishing Corp., New York NY.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 3244f4ae-159d-11e1-bbe3-0019d11e5a41
% structure: AB
% location: jfb:119
% idyoutuberemark1: The one and only Frank
% idyoutube1: oCW9Hey6IVY
% idyoutuberemark2: I didn't know that Diana Krall knew piano this well...
% idyoutube2: -b8brVSAAQA
% lyricsurl: http://www.metrolyrics.com/fly-me-to-the-moon-lyrics-frank-sinatra.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately, with a beat"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Fly Me To The Moon"
	      \fontsize #1 \lower #1  "- Bart Howard"
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

  \tocItem \markup "Fly Me To The Moon / Bart Howard"


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
		a1:m7 | d:m7 | g:7 | c:maj7 | \myEndLine
		f:maj7 | b:m7.5- | e:7.9- | a2.:m7 a4:7.9- | \myEndLine
		d1:m7 | g2.:7.9 g4:7.9- | c1:maj7.9 | a2.:m7 a4:m7.9 | \myEndLine
		d1:m7 | g:7 | f2:dim7/c c:maj7 | b:m7 e:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		a1:m7 | d:m7 | g:7 | c:maj7 | \myEndLine
		f:maj7 | b:m7.5- | e:7.9- | a2.:m7 a4:7.9- | \myEndLine
		d1:m7 | g2.:7.9 g4:7/f |
		\endPart
	} \alternative {
		{
			e1:m7.5- | a:7.9- | \myEndLine
			d:m7 | d2.:m7/g g4:7.9- | c1:6 | b2:m7 e:7 | \myEndLineVolta
		}
		{
			e2:m7.5- bes:7.9 | a1:7.9- | \myEndLine
			d:m7 | g2.:7 g4:7.9- | c2:6 bes4:6 b:6 | c1:6.9 | \myEndLineVoltaLast
		}
	}

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
	\key c \major

	\repeat volta 2 {

	%% part "A"
		c'4 b a8 g4. | f g8 a4 c | b a g8 f4. | e1 |
		a4 g f8 e4. | d4. e8 f4 a | gis f e8 d4. | c2. cis4 |
		d8 a'4 a8~ a2~ | a4 c2 b4 | g1~ | g2. b,4 |
		c8 f4 f8~ f2~ | f4 a2 g4 | f2 e2~ | e1 |

	%% part "B"
		c'4 b a8 g4. | f g8 a4 c | b a g8 f4. | e1 |
		a4 g f8 e4. | d4 e4 f a | gis f e8 d4. | c2. cis4 |
		d8 a'4 a8~ a2~ | a4 c2 b4 |
	} \alternative {
		{
			g1~ | g2. gis4 |
			a8 c,4 c8~ c2~ | c4 c2 d4 | c1 | r |
		}
		{
			e'1~ | e2. c4 |
			d8 a4 a8~ a2~ | a4 b2 d4 | c1~ | c2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Fly Me To The Moon, and let me play a -- mong the stars;
	let me see what spring is like on Ju -- pi -- ter and Mars.
	In oth -- er words, __ hold my hand! __
	In oth -- er words, __ dar -- ling kiss me! __

%% part "B"
	Fill my heart with song, and let me sing for -- ev -- er -- more;
	you are all I long for all I wor -- ship and a -- dore.
	In oth -- er words, __ please be true! __
	In oth -- er words, __ I love you!

%% part "Volta"
	true! __ In oth -- er words, __ I love you! __
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
		\smaller \smaller { "Copyright © 1954 and renewed 1982 Hampshire House Publishing Corp., New York NY." }
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

