

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
% title: Alone Together
% style: Jazz
% composer: Arthur Schwartz
% poet: Howard Dietz
% piece: Ballad
% copyright: 1932 (Renewed) Warner Bros. Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b647880a-0b68-11e1-b491-0019d11e5a41
% structure: AABA
% structureremark: this tunes structure can also be categorised as ABAC since the first 8 bars of both the first and second part are the same.
% location: rbk1:19
% idyoutuberemark1: The great trumpet version of Chet Baker
% idyoutube1: zdDhinO58ss
% idyoutuberemark2: Dexter in a soprano sax version
% idyoutube2: mmu6kgQtl-k
% lyricsurl: http://www.hotlyrics.net/lyrics/E/Ella_Fitzgerald/Alone_Together.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Alone Together"
	      \fontsize #1 \lower #1  "- Howard Dietz / Arthur Schwartz"
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

  \tocItem \markup "Alone Together / Arthur Schwartz, Howard Dietz"


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
		d1:m | e2:m7.5- a:7.9- | d1:m | e2:m7.5- a:7.9- | \myEndLine
		d1:m | a2:m7.5- d:7.9- | g1:m | g:m7 | \myEndLine
		b2:m7 e:7 | g:m7 c:7 | f f:7 | e:m7.5- a:7 | \myEndLine
	} \alternative {
		{
			d1:maj7 | e2:m7.5- a:7 | \myEndLineVoltaNotLast
		}
		{
			d1*2:maj7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	a1:m7.5- | d:7.9- | g1*2:m | \myEndLine
	g1:m7.5- | c:7.9- | f2 f:7 | e:m7.5- a:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	d1:m | e2:m7.5- a:7.9- | d1:m | e2:m7.5- a:7.9- | \myEndLine
	d1:m | bes2:7 a:7 | d1:m | \LPC e2:m7.5- \RPC a:7 | \myEndLine
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
	\key d \minor

	\partial 8 d8 |

%% part "A"
	\repeat volta 2 {
		f2.. d8 | e e4.~ e2~ | e4 r8 d e4. f8 | a1~ |
		a4 r8 d, e4. f8 | a1~ | a4 r8 g a4. bes8 | d2.. d8 |
		e2.. d8 | c c4.~ c bes8 | a4. g8 a4. g8 | a2.. g8 |
	} \alternative {
		{ fis fis4.~ fis2~ | fis2. r8 d | }
		{ fis fis4.~ fis2~ | fis2. d4 | }
	}

%% part "B"
	c'1~ | \tuplet 3/2 { c4 a bes } \tuplet 3/2 { c ees d } | bes1~ | bes2. d,4 |
	bes'1~ | \tuplet 3/2 { bes4 g a } \tuplet 3/2 { bes des c } | a2.. f8 | g2.. d8 |

%% part "A"
	f2.. d8 | e e4.~ e2~ | e4 r8 d e4. f8 | a1~ |
	a4 r8 a b4. d8 | f2.. cis8 | d d4.~ d2~ | d2 r4 r8 <\parenthesize d,>8 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	A -- lone To -- geth -- er; __
	be -- yond the crowd. __
	a -- bove the world, __
	we're not too proud
	to cling to -- geth -- er. __
	Were strong
	As long as we're to -- geth -- er __

	A
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	A -- lone To -- geth -- er; __
	the blind -- ing rain __
	The star -- less night, __
	we're not in vain;
	For we're to -- geth -- er, and what is there
	to fear to -- _ _ _ geth -- er. __

%% part "B"
	Our love __ is as deep as the sea, __
	Our love __ is as great as a love can be,

%% part "A"
	And we can wea -- ther __
	the great un -- known, __
	If we're A -- lone To -- geth -- er. __

	A
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
		\smaller \smaller { "Copyright © 1932 (Renewed) Warner Bros. Inc." }
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

