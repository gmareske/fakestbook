

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
% title: Billie's Bounce
% style: Blues
% composer: Charlie Parker
% piece: Blues
% typesetter: Micha Dienert <mdienert@t-online.de>
% completion: 5
% uuid: 9bd9980c-9628-11e4-80e9-3860779cb560
% structure: Blues
% location: rbk2:24
% idyoutuberemark1: Charly Parker, The Savoy Recordings
% idyoutube1: S4mRaEzwTYo
% idyoutuberemark2: t.b.d.
% idyoutube2: t.b.d.
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
	      \fontsize #1 \lower #1 \rotate #7 "Blues"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Billie's Bounce"
	      \fontsize #1 \lower #1  "- Charlie Parker"
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

  \tocItem \markup "Billie's Bounce / Charlie Parker"


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

	\partial 8 c8:7 |
	\myMark "A"
	\startPart
		f1:7 | bes2:7 b2:dim7| f1:7 | \myEndLine
		f1:7 | bes1:7 | bes1:7 | f1:7 | \myEndLine
		a2:m d2:7 | g1:m | c1:7 | f2:7 d2:7 | \myEndLine
		g2:m c2:7 |
	\endPart

	\myMark "B"
	\startPart
		f1:7 | f1:7 | \myEndLine
		f1:7 | c2:m f2:7 | bes1:7 | \myEndLine
		bes1:7 | f1:7 | a2:m d2:7 | \myEndLine
		g1:m | c1:7 | f1:7| \myEndLine
		c1:7 |
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
	\key c \major

	\partial 8 c8 |
%% part "A"
	\repeat volta 2 {

		b8 c8 f8 gis8 a8 f8 d8 f8~|f8 d8 f8 r8 r8 f4 d8 |
		f8 r8 r8 f8~ f8 d8 f8 d8 | \myEndLine
		as'8 a8 \tuplet 3/2 { f16 g16 f16 } d8 f8 g8 f8 f8 |
		r4 r8 a8 bes8 f8 r8 as8~ |
		as8 bes8~bes4 es8 c8 f8 es8 | r8 f8 c4 r4 r8 e8~ |
		e4 g,8 e8 fis8 es'8 c8 cis8 |
		d4 r8 g8 \tuplet 3/2 {fis16 g16 fis16} d8 bes8 f8 |
		f'4 r8 f8 e8 e8 d8 d8 |
		c4 r8 f,8~f8 d8 f4|
		r8 f4~f8 d8 f4 c8|
	}

	f4 g8 gis8 s4 ais8 b8 |
	c8 a8 \tuplet 3/2 {bes8 c8 bes8 } a8 f8 d8 c8 |\myEndLine
%%
	\tuplet 3/2 {g'16 a16 g16} f8 es8 f8~ f4 r4 | r2 r4 r8 f'8~ |
	f8 c16 bes16 as8 f8 g8 f8 es8 d8 | \myEndLine
%%
	c4 bes8 f8 gis8 a8 bes8 b8 | c8 d16 c16 a8 c8 e8 d8~d4 |
	r1 | \myEndLine
	r4 r8 \tuplet 3/2 {g16 bes16 d16} f8 e8 d8 des8 |
	c8 a8 bes8 c16 bes16 a8 f8 d8 c8 | g'8 f8 g8( a8)~a4 r4 | \myEndLine
%%
	r1-\markup {\abs-fontsize #14 {(Last 12 Bars are transcribed from Charlie Parker Solo - The Savoy Recordings)}}
	|
	\myEndLine
}
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Micha Dienert <mdienert@t-online.de>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

