

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
% title: I Left My Heart In San Francisco
% style: Jazz
% composer: Geroge Cory
% poet: Douglass Cross
% piece: Slowly
% copyright: 1954 General Music Publishing Co., Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 5a23cc08-da7f-11e3-8c45-c30fe9a88e5b
% structure: ABA'C
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
	      \underline \sans "I Left My Heart In San Francisco"
	      \fontsize #1 \lower #1  "- Douglass Cross / Geroge Cory"
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

  \tocItem \markup "I Left My Heart In San Francisco / Geroge Cory, Douglass Cross"


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
	\startSong
	\startChords

	\partial 2. s2. |

	\myMark "A"
	\startPart
	bes1 | d2:m7 cis:dim7 | c1:m7 | c:m7 |
	c:m7 | c2:m7/f f:7.5+ | bes1 |
	\endPart

	\myMark "B"
	\startPart
	bes2 c4:m7 cis:dim7 | bes1 | d2:m7 cis:dim7 | d1:m7 | d2:m7 d:7.9- |
	g1:m7 | c2:9 c:7.9- | f:9 b:dim7 | c:m7 f:7 |
	\endPart

	\myMark "A'"
	\startPart
	bes1 | d2:m7 cis:dim7 | c1:m7 |
	c:m7 | f:9 | f2:9 ees:9 | d1:7 |
	\endPart

	\myMark "C"
	\startPart
	d:7 | g2.:7.5+ g4:9 | g1:9 |
	c2. g4:m7 | c1:9 | c:m7 | c2:m7/f f:7.9- | bes2:6 aes4:6.9 a:6.9 | bes1:6.9 |
	\endPart

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante Moderato" 4 = 88
	\time 4/4
	\key bes \major

	d4 ees g | f1 | r4 g a4. bes8 | g c,4.~ c4 r | r c b c | g'1 | r4 bes a4. f8 |
	d2 r | r4 d ees e | f8 ees4 d16 ees f2~ | f4 r r g | a8 g4 f16 g a2~ | a4 a gis4. a8 |
	bes1~ | bes4 c a4. c,8 | f2 r4 g8 f | ees4 r8 d ees4 g | f1 | r4 g a bes | g8 c,4.~ c4 r |
	r c b c | a'1~ | a4 a bes c | d1 | r4 d cis4. d8 | ees2. d4 | b2 c4 d |
	c g2. | r4 g fis g | ees'2. g,4 | d'2 d | bes1~ | bes4 r r2 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	I Left My Heart In San Fran -- cis -- co, __ high on a hill, it calls to
	me. To be where lit -- tle ca -- ble cars __ climb half -- way to the stars! __ to morn -- ing
	fog __ may chill the air I don't care! My love waits there in San Fran -- cis -- co, __
	a -- bove the blue __ and wind -- y sea. When I come home to you San Fran -- cis-- co your gold -- en sun will sine for me. __
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
		\smaller \smaller { "Copyright © 1954 General Music Publishing Co., Inc." }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

