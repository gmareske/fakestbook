

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
% title: Orchids In The Moonlight
% style: Jazz
% composer: Vincent Youmans
% poet: Gus Kahn, Edward Eliscu
% piece: With a Tango Beat
% copyright: 1933 by T.B. Harms Co.
% copyrightextra: Copyright Renewed, assigned to Chappell & Co., Inc (Intersong Music, Publisher) and T.B. Harms Co. (c/o The Welk Music Group, Santa Monica, CA 90401) for the U.S.A. only. Rights outside controlled by T.B. Harms Co.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ba3d8788-10f7-11e4-b63c-8397db34c0b9
% structure: ABA
% structureremark: Each A part is the 16 bars where the first 4 of every half are the same
% location: jfb:292
% idyoutuberemark1: Excellent piano arrangement
% idyoutube1: 2LEah90aDmA
% idyoutuberemark2: Classic tango vocal version
% idyoutube2: WuD8XmCza5U
% lyricsurl: http://lyricsplayground.com/alpha/songs/o/orchidsinthemoonlight.shtml
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
	      \fontsize #1 \lower #1 \rotate #7 "With a Tango Beat"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Orchids In The Moonlight"
	      \fontsize #1 \lower #1  "- Gus Kahn, Edward Eliscu / Vincent Youmans"
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

  \tocItem \markup "Orchids In The Moonlight / Vincent Youmans, Gus Kahn, Edward Eliscu"


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
	f1:m | des2 f1.:m | c1:7 | \myEndLine
	c:7 | g2:m7.5- c1.:7 | f1:m | \myEndLine
	f:m | des2 f:m | f1:7 | bes:m | \myEndLine
	bes:m | f1:m | c:7 | f4:m c:7 f2:m | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f2 f4:dim c:7 | f1. f2:6 | c1:7 | \myEndLine
	c1*3:7 | f2. fis4:dim | \myEndLine
	c2:7 f4:dim c:7 | f1. f2:7 | bes1 | \myEndLine
	bes | des:7 | f2 f4:dim c:7 | f4 c:7 f2 | \myEndLine
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
	\tempo "Moderato" 4 = 108
	\time 4/4
	\key f \minor

%% part "A"
	r8 f f g aes4 g8 f | des'2 c~ | c8 c c des ees4 des8 c | e!1 |
	r8 bes bes c des4 c8 bes | f'2 e!2~ | e8 c c des ees!4 des8 c | f1 |
	r8 f, f g aes4 g8 f | des'2 c~ | c8 c c des ees4 des8 c | f1 |
	r8 des ees f~ f ees des bes | r c des ees~ ees des c aes | r bes c des~ des bes g e! | f4 r r2^\markup { \italic { Fine } } |

%% part "B"
	\key f \major
	r4 c8 a' aes4 bes,8 g' | f2 c~ | c4 f8 a c4. c8 | c1 |
	r4 bes8 a bes c4 bes8 | a4 gis8 g gis a4 gis8 | g!4 fis8 f fis g4 e8 | c2. r4 |
	r c8 a' aes4 bes,8 g' | f2 c~ | c8 f a c f4. f8 | f1 |
	r4 d8 cis d e4 d8 | des4 des8 c des ees4 des8 | c4 c,8 a' aes4 bes,8 g' | f2. r4^\markup { \italic { D.C. al Fine } } |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	When or -- chids bloom in the moon -- light __ and lov -- ers vow to be true;
	I still can dream in the moon -- light, __ of one dear night that we knew.
	When or -- chids fade in the dawn -- ing, __ they speak of tears and "\"Good" -- "bye!\""
	Tho' my dreams __ are shat -- tered, like the pet -- als scat -- tered, still my love __ can nev -- er die.

%% part "B"
	There is peace in the twi -- light, __ when the day is thru,
	but the shad -- own that fall on -- ly seem to re -- call all my long -- ing for you.
	There's a dream in the moon -- beams, __ up on the sea of blue;
	but the moon -- beams that fall, on -- ly seem to re -- call, love is all, love is you.
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
		\smaller \smaller { "Copyright © 1933 by T.B. Harms Co." }
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

