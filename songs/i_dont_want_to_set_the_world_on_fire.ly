

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
% title: I Don't Want To Set The World On Fire
% style: Jazz
% composer: Eddie Seiler, Sol Marcus, Bennie Benjamin
% poet: Eddie Seiler, Sol Marcus, Bennie Benjamin
% piece: Moderately
% copyright: 1940 by Bergman, Vocco, & Conn, Inc.
% copyrightextra: Copyright Renewed, Benjamin & Marcus interests assigned to Bennie Benjamin Music, Inc. (Intersong Music, Publisher)
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 5a3efd64-70b7-11e5-bcb5-3860779cb560
% structure: AABA
% location: jfb:156
% idyoutuberemark1: Fats Domino classic version
% idyoutube1: olF-OnbDM3w
% idyoutuberemark2: Betty Carter version
% idyoutube2: gbDYyzvc9Kc
% lyricsurl: http://www.lyricsmode.com/lyrics/t/the_ink_spots/i_dont_want_to_set_the_world_on_fire.html
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
	      \underline \sans "I Don't Want To Set The World On Fire"
	      \fontsize #1 \lower #1  "- Eddie Seiler, Sol Marcus, Bennie Benjamin"
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

  \tocItem \markup "I Don't Want To Set The World On Fire / Eddie Seiler, Sol Marcus, Bennie Benjamin"


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
		f1 | f2:/a aes:dim7 | g1:m | g2:m bes:m | \myEndLine
		c1:7 | g2:m9 c:7 | a:7 d:7 | g:7 c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f1 | f2:/a aes:dim7 | g1:m | g2:m bes:m | \myEndLine
		c1:7 | g2:m9 c:7 | f2 ees4:6 e:6 | f1:6 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c2:m7 f:7 | c:m7 f:7 | bes1*2:maj7 | \myEndLine
		d2:m g:7 | d:m g:7 | d:m g:7 | c:7 c:7.5+ | \myEndLine
		\endPart

		\myMark "A"
		f1 | f2:/a aes:dim7 | g1:m | g2:m bes:m | \myEndLine
		c1:7 | g2:m9 c:7 |
		\startPart
	} \alternative {
		{
			f aes:dim7 | g:m c:7 | \myEndLineVoltaNotLast
		}
		{
			f1*2 | \myEndLineVoltaLast
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
	\key f \major

	\repeat volta 2 {

	%% part "A"
		a'4 c c,8. d16 f8. a16 | c2 ces | bes4 d2.~ | d2 bes |
		a8. c16 a8 c~ c2 | r4 a c8. cis16 d8 a~ | a1~ | a1 |

	%% part "A"
		a4 c c,8. d16 f8. a16 | c2 ces | bes4 d2.~ | d2 bes |
		a8. c16 a8 c~ c2 | r4 a c8. cis16 d8 f,~ | f1~ | f2. f4 |

	%% part "B"
		g8. g16 g8 d'~ d d4 f,8 | g8. g16 g8 d'~ d2 | c8. c16 bes8. bes16 a8. a16 d8. d16 | a2. g4 |
		a8. a16 a8 e'~ e e4 g,8 | a8. a16 a8 e'~ e2 | d8. cis16 d8. cis16 d8. cis16 \tuplet 3/2 { d8 dis e~ } | e4 d8 a~ a aes4. |

	%% part "A"
		a4 c c,8. d16 f8. a16 | c2 ces | bes4 d2.~ | d2 bes |
		a8. c16 a8 c~ c2 | r4 a c8. cis16 d8 f,~ |
	} \alternative {
		{
			f1 | r |
		}
		{
			f~ | f2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I Don't Want To Set The World On Fire __ _
	I just want to start __
	a flame in your heart __

%% part "A"
	In my heart I have but one de -- sire __ _
	and that one is you __
	no oth -- er will do. __

%% part "B"
	I've lost all am -- bi -- tion for world -- ly ac -- claim
	I just want to be the one you love
	and with your ad -- mis -- sion that you feel the same. __
	I'll have reached the goal I'm dream -- ing of __
	be -- lieve __ me!

%% part "A"
	I Don't Want To Set The World On Fire __ _
	I just want to start __
	a flame in your heart __
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
		\smaller \smaller { "Copyright © 1940 by Bergman, Vocco, & Conn, Inc." }
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

