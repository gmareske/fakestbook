

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
% title: Flamingo
% style: Jazz
% composer: Ted Grouya
% poet: Ed Anderson
% piece: Slowly
% copyright: 1941 Tempo Music, Inc.
% copyrightextra: Renewed 1969 Edwin H. Morris & Company, A Division of MPL Communications, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: be87a49a-1a05-11e1-ba9e-0019d11e5a41
% structure: AABA
% location: jfb:119
% idyoutuberemark1: Duke and his orchestra
% idyoutube1: XlmMzUMCIIg
% idyoutuberemark2: Petrucciani and Grappelli
% idyoutube2: oqR5hPjPM3o
% lyricsurl: http://lyricsplayground.com/alpha/songs/f/flamingo.shtml
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
	      \underline \sans "Flamingo"
	      \fontsize #1 \lower #1  "- Ed Anderson / Ted Grouya"
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

  \tocItem \markup "Flamingo / Ted Grouya, Ed Anderson"


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

	\partial 4 s4

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f2:maj7 d:m7 | g:m7 c:7.5+ | f1:m7 | bes2:7 c:7.5+ | \myEndLine
		des1:7.9 | g2:m7 c4:7 c:7/bes | \myEndLine
	} \alternative {
		{
			a2:m7 d:7 | g:m7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f bes:7.9 | f c4:m7 f:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	bes2:m bes:m7.7+ | bes:m7 ees:7.9 | aes1:6 | c2:m7.5- f:7 | \myEndLine
	bes:m7 ees:7 | bes:m7 bes:m7/aes | g1:m7 | c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2:maj7 d:m7 | g:m7 c:7.5+ | f1:m7 | bes2:7 c:7.5+ | \myEndLine
	des1:7.9 | g2:m7 g:m7/c | f:maj7 bes:maj7 | f1:maj7 | \myEndLine
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
	\key f \major

	\partial 4 c4 |

%% part "A"
	\repeat volta 2 {
		c'4. a8~ a2 | r4 bes8 c e4 d8 c | aes1 | r4 g8 aes c4 bes8 aes |
		f4 f2. | r4 f8 f g4 f8 g |
	} \alternative {
		{
			a1~ | a2 r4 c,4 |
		}
		{
			f1~ | f4 r r f |
		}
	}

%% part "B"
	f'1 | r4 f8 f f4 ees8 des | ees4. ees8 aes2 | r4 ees8 ees~ ees4 des8 c |
	des4. des8 g2 | r4 des4 des c8 bes | c1~ | c2 r4 c,4 |

%% part "A"
	c'4. a8~ a2 | r4 bes8 c e4 d8 c | aes1 | r4 g8 aes c4 bes8 aes |
	f4 f2. | r4 g \tuplet 3/2 { bes d f } | a1~ | a2. r4 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Fla -- min -- go, __
	like a flame in the sky,
	fly -- ing o -- ver the is -- land
	to my lov -- er near by. __
%% Volta
	Fla
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Fla -- min -- go, __
	in your trop -- i -- cal hue,
	speak of pas -- sion un -- dy -- ing
	and a love that is _ _ true. __

%% part "B"
	The wind sings a song to you as you go,
	a song __ that I hear be -- low the mur -- mur -- ing palms. __

%% part "A"
	Fla -- min -- go, __
	when the sun meets the sea,
	say fare -- well to my lov -- er
	and has -- ten to me. __
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
		\smaller \smaller { "Copyright © 1941 Tempo Music, Inc." }
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

