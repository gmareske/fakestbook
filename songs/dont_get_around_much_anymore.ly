

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
% title: Don't Get Around Much Anymore
% style: Jazz
% composer: Duke Ellington
% poet: Bob Russell
% piece: Medium Swing
% copyright: 1973 Herrison Music Corp. and Robbins Music
% typesetter: Jordan Eldredge <jordaneldredge@gmail.com>
% completion: 5
% uuid: 09a63a8e-da81-11e3-b649-339a89e65802
% structure: AABA
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Don't Get Around Much Anymore"
	      \fontsize #1 \lower #1  "- Bob Russell / Duke Ellington"
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

  \tocItem \markup "Don't Get Around Much Anymore / Duke Ellington, Bob Russell"


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
		s1 | s4 c d:m7 dis8:dim7 c/e | c1/e | c4/e a b:m7 c8:dim7 a:7/cis | \myEndLine
		a1:7/cis | d:7 | g:7 | c4 c/e ees:dim7 d8:m7 c | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c1 | c4 c d:m7 dis8:dim7 c/e | c1/e | c4/e a b:m7 c8:dim7 a:7/cis | \myEndLine
		a1:7/cis | d:7 | g:7 | c4 c/e ees:dim7 d8:m7 c | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g2:m7 c:7 | f2..:6 bes8:9 | bes1:9 | c:maj7 | \myEndLine
		c2.:7 c4:7.5+ | d1:7 | fis2:7.5- b:7 | e4:m7 ees:dim7 d4.:7 g8:7 |
		g1:7 | g4:7 c d:m7 dis8:dim7 c/e |
		\endPart

		\myMark "A"
		\startPart
		c1 | c4/e a b:m7 c8:dim7 a:7/cis | a1:7/cis | d:7 | \myEndLine
		g:7 |
	} \alternative {
		{
			c | c | \myEndLineVoltaNotLast
		}
		{
			s4 c/e ees:dim7 d8:m7 c | c1 | c | c:7.9+ | \myEndLineVoltaLast
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
	\key c \major

%% part "A"
	\repeat volta 2 {
		r8 e'4 d8 c g f4 | e1 | r8 e'4 d8 c g f4 | e1 |
		r8 g4 f8 e d c c'~ | c4. a8~ a2 | r8 e f fis g c, dis e | c1 |
		r8 e'4 d8 c g f4 | e1 | r8 e'4 d8 c g f4 | e1 |
		r8 g4 f8 e d c c'~ | c4. a8~ a2 | r8 e8 f fis g c, dis e | c1 | R1 |
		d'2 c4 a8 c~ | c2. c8 d~ | d2 c4 g8 e~ | e2. c'4 | d2 c8 a4 c8~ | c1 |
		r8. b16 b8. b16 b8 a4 g8~ | g e'4 d8 c g f4 | e1 | r8 e'4 d8 c g f4 |
		e1 | r8 g4 f8 e d c c'~ | c4. a8~ a2 | r8 e f fis g c, dis e |
	} \alternative {
		{
			c1 | r8 e'4 d8 c g f4 |
		}
		{
			c1 | R1*3 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Missed the Sat -- ur -- day dance, heard they crowd -- ed the floor;
	cound -- n't bear it with -- out you, __ Don't Get A -- round Much An -- y -- more.
	Thougt I'd vis -- it the club, got as far as the door;
	they'd have ask'd me a -- bout __ you, __ Don't Get A -- round Much An -- y more.
	Dar -- ling, I guess __ my mind's __ more at ease, __ but nev -- er -- the -- less __
	why stir up mem -- o -- ris? __ Been in -- vi -- ed on dates, might have gone but what
	four? Aw -- f'lly dif -- f'rent with -- out __ you, __ Don't Get A -- round Much An -- y --
	more. Missed the Sat -- ur -- day
	more.
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
		\smaller \smaller { "Copyright © 1973 Herrison Music Corp. and Robbins Music" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <jordaneldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

