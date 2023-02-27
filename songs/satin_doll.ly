

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
% title: Satin Doll
% style: Jazz
% composer: Duke Ellington, Billy Strayhorn
% poet: Johnny Mercer
% piece: Smoothly
% copyright: 1958 Tempo Music, Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 42beeace-da80-11e3-933c-cbd0bd4c5a97
% structure: AABA
% location: jfb:324-325
% idyoutuberemark1: Duke with his orchestra
% idyoutube1: TrytKuC3Z_o
% idyoutuberemark2: Clark Terry on the trumpet
% idyoutube2: GivaZbLzaoQ
% lyricsurl: http://www.metrolyrics.com/satin-doll-lyrics-ella-fitzgerald.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Smoothly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Satin Doll"
	      \fontsize #1 \lower #1  "- Johnny Mercer / Duke Ellington, Billy Strayhorn"
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

  \tocItem \markup "Satin Doll / Duke Ellington, Billy Strayhorn, Johnny Mercer"


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
	\repeat volta 2 {
		d2:m7 g:7 | d:m7 g:7 | e:m7 a:7 | e:m7 a:7 | \myEndLine
		a:m9 d:9 | aes:m9 des:9 |
	} \alternative {
		{
			c d:m7 | e:m7 a:7 | \myEndLineVoltaNotLast
		}
		{
			c f:7 | c1 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	g2:m7 c:7 | g:m7 c:9- | f:maj7 g:m7 | a:m7 bes:m7 | \myEndLine
	a:m7 d:7 | a:m7 d:9- | g:7 d:m7 | g1:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	d2:m7 g:7 | d:m7 g:7 | e:m7 a:7 | e:m7 a:7 | \myEndLine
	a:m9 d:9 | aes:m9 des:9 | c4 c:7/e f aes/ges | c/g g:7 c2:6.9 | \myEndLine
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
		a'8. g16 a8 g~ g a4. | r8 a4. g8 a4. | b8. a16 b8 a~ a b4. | r8 b4. a8 b4. |
		r8 d4. c8 d4. | r8 bes4. aes4 bes8 g~ |
	} \alternative {
		{
			g1~ | g |
		}
		{
			g1\repeatTie | r2 r4 r8 g |
		}
	}

%% part "B"
	c4 bes8. a16 g8. a16 bes4 | c4 bes8. a16 g8. a16 bes8 c~ | c1~ | c2. r8 c |
	d8. c16 b8. a16~ a8. b16 c4 | d8. c16 b8 a~ a8. b16 c8 d~ | d1~ | d8 \xNote { d4^"(Spoken)" d8 d d4. } |

%% part "A"
	a8. g16 a8 g~ g a4. | r8 a4. g8 a4. | b8. a16 b8 a~ a b4. | r8 b4. a8 b4. |
	r8 d4. c8 d4. | r8 bes4. aes4 bes8 g~ | g1~ | g2. r4 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Cig -- a -- rette hold -- er which wigs me, o -- ver her shoul -- der, she digs me.
	Out cat -- tin' that Sat -- in Doll. __

%% part "B"
	_ She's no -- bod -- y's fool, so I'm play -- ing it cool as can be. __
	I'll give it a whirl, __ but I ain't for no girl __ catch -- ing me. __
	\markup \italic Switch -- \markup \italic E -- \markup \italic Roo -- \markup \italic ney

%% part "A"
	Tel -- e -- phone num -- bers well you know, do -- ing my rhum -- bas
	with u -- no, and that 'n' my Sat -- in Doll. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Ba -- by shall we __ go out skip -- pin' care -- ful a -- mi -- go, you're flip -- pin'.
	Speaks lat -- in that Sat -- in Doll.
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
		\smaller \smaller { "Copyright © 1958 Tempo Music, Inc." }
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

