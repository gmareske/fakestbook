

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
% title: How Insensitive
% style: Jazz
% subtitle: Insensatez
% composer: Antonio Carlos Jobim
% poet: Vincius De Moraes, Norman Gimbel
% piece: Moderately
% copyright: 1963, 1964 by Antonio Carlos Jobim and Vincius De Moraes, Brazil
% copyrightextra: Sole Selling Agent Duchess Music Corporation (MCA), New York, NY for the U.S.A. and Canada
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ee9c0d62-15fd-11e1-bd56-0019d11e5a41
% structure: AB
% structureremark: this tunes structure can also be categorised as ABAC since the first 8 bars of both the first and second part are the same.
% location: rbk1:203,jfb:150
% idyoutuberemark1: Jobim with Pat Metheny
% idyoutube1: VendEbBv3nc
% idyoutuberemark2: Astrud Gilberto in the classic version
% idyoutube2: nIW049UrhGM
% lyricsurl: http://www.lyricsmode.com/lyrics/a/antonio_carlos_jobim/how_insensitive.html
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
	      \underline \sans "How Insensitive"
	      \fontsize #1 \lower #1  "- Vincius De Moraes, Norman Gimbel / Antonio Carlos Jobim"
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

  \tocItem \markup "How Insensitive / Antonio Carlos Jobim, Vincius De Moraes, Norman Gimbel"


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
		d1*2:m7 | des:dim7 | \myEndLine
		c:m6 | g:7 | \myEndLine
		bes:maj7 | ees:maj7 | \myEndLine
		e1:m7.5- | a:7.9- | d:m7 | des:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c1*2:m7 | b:dim7 | \myEndLine
		bes1:maj7 | e2:m7.5- a:7.9- | d1.:m7 des2:7 | \myEndLine
		c1:m7 | f:7 | b:m7 | e:7.9- | \myEndLine
		g:m6 |
	} \alternative {
		{
			a:7 | d:m7 | e2:m7.5- a:7.9- | \myEndLineVolta
		}
		{
			a1:7 | d2:m d:m6 | d1:m6 | \myEndLineVolta
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
	\time 4/4
	\key d \minor

	\repeat volta 2 {

	%% part "A"
		a'1~ | a4 bes8 a~ a bes4 a8~ | a1~ | a4 bes8 a~ a bes4 a8~ |
		a2~ a8 gis4 a8 | c b4 bes8~ bes a4 a8~ | a4. g8~ g2~ | g2~ g4. g8~ |
		g1~ | g4 a8 g~ g a4 g8~ | g1~ | g4 a8 g~ g a4 g8~ |
		g2 r8 fis4 g8 | bes a4 gis8~ gis g4 g8~ | g4. f8~ f2~ | f~ f4. f8~ |

	%% part "B"
		f1~ | f4 g8 f~ f g4 f8~ | f1~ | f4 g8 f~ f g4 a8~ |
		a2. f4 | d e8 d~ d e4 f8~ | f2 f~ | f~ f4. f8~ |
		f1~ | f4 g8 f~ f g4 e8~ | e1~ | e4 f8 e~ e f4 e8~ |
		e2 r8 dis e g~ |
	} \alternative {
		{
			g fis4 f8~ f e4 e8~ | e4. d8~ d2~ | d4 r r2 |
		}
		{
			g8\repeatTie fis4 f8~ f e4 e8~ | e4. d8~ d2~ | d2.\fermata r4 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	








% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	How __ In -- sen -- __ si -- tive __ I must __ have seemed __ when she told me that __ she loved __ me. __
	How __ un -- moved __ and cold __ I must __ have seemed __ when she told me so __ sin -- cere -- __ ly. __
	Why, __ she must __ have asked, __ did I __ just turn __ and stare in i -- __ cy si -- lence? __
	What __ was I __ to say? __ What can __ you say __ when a love __ af -- fair __ is o -- __ ver? __

%% part "Volta"
	_ af -- fair __ is o -- __ ver? __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	









\lyricmode {

%% part "B"
	Now, __ she's gone __ a -- way __ and I'm __ a -- lone __ with the mem -- 'ry of __ her last __ look. __
	Vague __ _ drawn __ and sad, __ I see __ it still, __ all her heart- break in __ that last __ look. __
	How, __ she must __ have asked, __ could I __ just turn __ and stare in i -- __ cy si -- lence? __
	What __ was I __ to do? __ What can __ one do __ when a love __
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
		\smaller \smaller { "Copyright © 1963, 1964 by Antonio Carlos Jobim and Vincius De Moraes, Brazil" }
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

