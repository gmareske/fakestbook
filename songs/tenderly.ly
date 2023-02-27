

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
% title: Tenderly
% style: Jazz
% composer: Walter Gross
% poet: Jack Lawrence
% piece: Moderately
% copyright: 1946, 1947, 1987 EDWIN H. MORRIS & COMPANY, A Division of MPL Communications, Inc.
% copyrightextra: Renewed 1974, 1975 EDWIN H. MORRIS & COMPANY, A Division of MPL Communications, Inc. International Copyright Secured. All Rights Reserved.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 37e8d9d8-db6c-11e3-8007-f7449ea11e17
% structure: ABAC
% location: jfb:381
% idyoutuberemark1: Beautiful lyric version by Chet Baker
% idyoutube1: H6mfWun73vI
% idyoutuberemark2: Vocal version by Sarah Vaughn
% idyoutube2: qNi6M_A9AzU
% lyricsurl: http://www.metrolyrics.com/tenderly-lyrics-ella-fitzgerald.html
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
	      \underline \sans "Tenderly"
	      \fontsize #1 \lower #1  "- Jack Lawrence / Walter Gross"
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

  \tocItem \markup "Tenderly / Walter Gross, Jack Lawrence"


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

	\partial 4. s4. |

	\myMark "A"
	\startPart
	ees2.:maj7 | aes:9 | ees:m7 | aes:9 | \myEndLine
	f:m7 | des:9 | ees4 g:m7 f:m7 | ees2.:maj7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f2.:m7.5- | bes:7 | f:m7.5- | bes2:7 b4:dim7 | \myEndLine
	c2.:m7 | f:7 | f:m9 | bes:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees2.:maj7 | aes:9 | ees:m7 | aes:9 | \myEndLine
	f:m7 | des:9 | ees4 g:m7 f:m7 | ees2.:maj7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	f2.:m7.5- | bes2:7 b4:dim7 | c2.:m7 | f2:9 fis4:dim7 | \myEndLine
	g4.:m7 c:7 | f2:m7 bes4:7 | ees2.*2 | \myEndLine
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
	\time 3/4
	\key ees \major

	\partial 4. bes'8 c ees |

%% part "A"
	d4. bes8 c ees | d2 bes8 ges | f2.~ | f4 r8 ees f aes |
	g4. ees8 f aes | g2 ees8 ces | bes2.~ | bes4 r bes |

%% part "B"
	ces2 bes'4 | g2 bes,4 | ces ees bes' | g2 f4 |
	ees g f' | d2 f,4 | bes2.~ | bes4 r8 bes8 c ees |

%% part "A"
	d4. bes8 c ees | d2 bes8 ges | f2.~ | f4 r8 ees f aes |
	g4. ees8 f aes | g2 ees8 ces | bes2.~ | bes4 r bes |

%% part "C"
	ces ees bes' | g2 f4 | ees g f' | d4. ees8 c d |
	bes4. c8 aes bes | g4. f8 aes d, | ees2.~ | ees4. r8 r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	The eve -- ning breeze ca -- ressed the trees Ten -- der -- ly, __
	The termb -- ling trees em -- braced the breeze Ten -- der -- ly. __

%% part "B"
	Then you and I came wand -- er -- ing by and lost in a sigh were we. __

%% part "A"
	The shore was kissed by sea and mist Ten -- der -- ly. __
	I can't for -- get how two hearts met breath -- less -- ly. __

%% part "C"
	Your arms op -- ened wide and closed me in -- side; you took my lips, you took my love so Ten -- der -- ly. __
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
		\smaller \smaller { "Copyright © 1946, 1947, 1987 EDWIN H. MORRIS & COMPANY, A Division of MPL Communications, Inc." }
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

