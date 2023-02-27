

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
% title: Isn't It Romantic
% style: Jazz
% subtitle: From the Paramount Picture 'Love Me Tonight'
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Easy Swing
% copyright: 1932 (Renewed 1959) by Famous Music Corporation
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: dedcc73c-1ead-11e1-8007-0019d11e5a41
% structure: ABAC
% location: rbk1:238,hlrjb:181
% idyoutuberemark1: Cool Jazz by Chet Baker...
% idyoutube1: c8C6i3kpsQU
% idyoutuberemark2: Swinging Bill Evans...
% idyoutube2: 10ZYoSryrcI
% lyricsurl: http://www.stlyrics.com/lyrics/onefineday/isntitromantic.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Easy Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Isn't It Romantic"
	      \fontsize #1 \lower #1  "- Lorenz Hart / Richard Rodgers"
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

  \tocItem \markup "Isn't It Romantic / Richard Rodgers, Lorenz Hart"


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
	\partial 2 \OPC bes2:7 |
	\repeat volta 2 {

		\myMark "A"
		\startPart
		ees:6 c:m7 | f:m7 bes:7 | ees:maj7 e:dim7 | f:m7 bes:7 | \myEndLine
		ees:6/g c:7 | f:m7 bes:7 | ees1:maj7 | bes2:m7 ees:7 | \myEndLine
		\endPart
	} \alternative {
		{

			\myMark "B"
			\startPart
			aes1:maj7 | bes2:7 g:7 | c:m g:7/b | bes:m7 ees:7 | \myEndLine
			aes:maj7 c:7/g | f:m d4:m7.5- g:7 | c2:m f:7.9 | bes:7.3-.5-.9-.11-.13- bes:7 | \myEndLineVolta
			\endPart
		}
		{

			\myMark "C"
			\startPart
			f2:m f:m/ees | d:m7.5- g:7 | c:m c:m/bes | c:m/a aes:6 | \myEndLine
			g:m7 ges:7 | f:m7 bes:7 | ees aes:6 | ees \OPC bes:7 | \myEndLineVolta
			\endPart
		}
	}
	\endSong
	\endChords
}



}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante" 4 = 108
	\time 4/4
	\key ees \major

	\partial 2 d8 ees c d |

	\repeat volta 2 {

	%% part "A"
		ees4 ees2. | d8 ees c d ees4 f | g4. g8 bes4. bes8 | g2 d8 ees c d |
		ees4 ees2. | d8 ees c d ees4 f | g4. g8 bes4. bes8 | des1 |
	} \alternative {
		{

		%% part "B"
			c | d8 c bes aes g4 f | ees4. ees8 g4. g8 | ees1 |
			c' | d8 c bes aes g4 f | ees4. ees8 c'4. c8 | des,2 d8 ees c d |
		}
		{

		%% part "C"
			c'1 | d8 c bes aes g4 f | ees4. ees8 g4. g8 | c4. c8 ees4. ees8 |
			f4 ees bes2~ | bes d8 ees c d | ees1~ | ees2 \mark \markup { \italic { Fine } } <\parenthesize d,>8 <\parenthesize ees> <\parenthesize c> <\parenthesize d> |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the Hal Leonard book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	Is -- n't It Ro -- man -- tic? Mu -- sic in the night, a dream that can be heard.
	Is -- n't It Ro -- man -- tic? Mov -- ing shad -- ows write the old -- est mag -- ic word.

%% part "B"
	I hear the breez -- es play -- ing in the trees a -- bove.
	While all the world is say -- ing you were meant for love.

%% part "Forward"
	Is -- n't It Ro --

%% part "C"
	Sweet sym -- bols in the moon -- light
	Do you mean that I will fall in love per -- chance? __ Is -- n't it ro -- mance? __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Is -- n't It Ro -- man -- tic? Mere -- ly to be young on such a night as this?
	Is -- n't It Ro -- man -- tic? Ev -- 'ry note that's sung is like a lov -- er's kiss.
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
		\smaller \smaller { "Copyright © 1932 (Renewed 1959) by Famous Music Corporation" }
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

