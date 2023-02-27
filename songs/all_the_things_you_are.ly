

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
% title: All The Things You Are
% style: Jazz
% subtitle: From 'Very Warm For May'
% composer: Jerome Kern
% poet: Oscar Hammerstein II
% piece: Moderately
% copyright: 1939 T.B. Harms Company. Copyright Renewed.
% copyrightextra: (c/o The Welk Music Group, Santa Monica, CA 90401)
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: a064f20e-fb85-11e0-8d5d-0019d11e5a41
% structure: ABC
% location: rbk1:18,jfb:40
% idyoutuberemark1: Charlie Parker, great performance
% idyoutube1: UTORd2Y_X6U
% idyoutuberemark2: Art Tatum. Brilliant
% idyoutube2: _bPgf_olXeE
% lyricsurl: http://www.lyrics007.com/Jerome%20Kern%20Lyrics/All%20The%20Things%20You%20Are%20Lyrics.html
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
	      \underline \sans "All The Things You Are"
	      \fontsize #1 \lower #1  "- Oscar Hammerstein II / Jerome Kern"
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

  \tocItem \markup "All The Things You Are / Jerome Kern, Oscar Hammerstein II"


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
	f1:m7 | bes:m7 | ees:7 | aes:maj7 | \myEndLine
	des:maj7 | g:7 | c1*2:maj7 | \myEndLine
	c1:m7 | f:m7 | bes:7 | ees:maj7 | \myEndLine
	aes:maj7 | a2:m7.5- d:7.9- | g1:maj7 | g2:maj7 e:7.9+ | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	a1:m7 | d:7 | g:maj7 | c:maj7 | \myEndLine
	fis:m7.5- | b:7 | e:maj7 | c:7.5+ | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	f:m7 | bes:m7 | ees:7 | aes:maj7 | \myEndLine
	des:maj7 | des2:m7 ges:7.9 | aes1:maj7 | b:dim7 | \myEndLine
	bes:m7 | ees:7.9 | aes1*2:maj7 | \myEndLine
	\endPart

	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	






{
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key aes \major

%% part "A"
	aes'1 | des2. aes4 | g g g g | g c2 g4 |
	f f f f | f b2 f4 | e1~ | e |
	ees | aes2. ees4 | d d d d | d g2 d4 |
	c c c c | c d8 ees d4 c | b1~ | b4 d g d' |

%% part "B"
	d4. c8 c2~ | c4 dis, e c' | b1~ | b4 d, g b |
	b4. a8 a2~ | a4 bes,? b a' | gis1 | r |

%% part "C"
	aes | des2. aes4 | g g g g | g c2 g4 |
	f1 | ees'2. des4 | ees, ees \tuplet 3/2 { ees ees ees } | g2. f4 |
	des des f aes | f'2 g, | aes1~ | aes2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	







\lyricmode {

%% part "A"
	You are the prom -- ised kiss of spring -- time
	That makes the lone -- ly win -- ter seem long. __
	You are the breath -- less hush of eve -- ning
	That trem -- bles on the brink of a love -- ly song. __

%% part "B"
	You are the an -- gel glow __ that lights a star. __
	The dear -- est things I know __ are what you are.

%% part "C"
	Some day my hap -- py arms will hold you,
	And some day I'll know that mo -- ment di -- vine,
	When All The Things You Are, are mine. __
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
		\smaller \smaller { "Copyright © 1939 T.B. Harms Company. Copyright Renewed." }
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

