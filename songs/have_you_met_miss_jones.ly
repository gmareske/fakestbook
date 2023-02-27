

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
% title: Have you met Miss Jones?
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Medium Swing
% copyright: 1937, by Chappell & Co., Inc. Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: fe106f6c-a26e-11df-abb3-0019d11e5a41
% structure: AABA
% location: rbk1:186,jfb:143
% idyoutuberemark1: Frank!
% idyoutube1: wZIVgszUs7c
% idyoutuberemark2: Art Tatum on piano solo
% idyoutube2: h3YNBVpxOcQ
% lyricsurl: http://www.lyrics007.com/Ella%20Fitzgerald%20Lyrics/Have%20You%20Met%20Miss%20Jones%20Lyrics.html
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
	      \underline \sans "Have you met Miss Jones?"
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

  \tocItem \markup "Have you met Miss Jones? / Richard Rodgers, Lorenz Hart"


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
	f1:maj7 | fis:dim7 | g:m7 | c:7 | \myEndLine
	a:m7 | d:m7 | g:m7 | c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f:maj7 | fis:dim7 | g:m7 | c:7 | \myEndLine
	a:m7 | d:m7 | c:m7 | f:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	bes:maj7 | aes2:m7 des:7 | ges1:maj7 | e2:m7 a:7 | \myEndLine
	d1:maj7 | aes2:m7 des:7 | ges1:maj7 | g2:m7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f1:maj7 | fis:dim7 | g:m7 | c2:7 bes:7 | \myEndLine
		a:m7 d:7.9- | g:m7 c:7 |
	} \alternative {
		{
			f d:m7 | g:m7 c:7 | \myEndLineVoltaNotLast
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
	\tempo "Allegro" 4 = 160
	\time 4/4
	\key f \major

%% part "A"
	\repeat unfold 2 {
		a'4 d, c d | c2. r4 | d e f g | a bes c2 |
		d4 g, f g | f2. a4 |
	} \alternative {
		{ bes1~ | bes2. r4 |}
		{ c1~ | c4 d d d | }
	}

%% part "B"
	c4 bes f g | aes aes aes aes | aes ges des ees | e! e e e |
	e d fis a | des2 des | bes1~ | bes2. r4 |

%% part "A"
	\repeat volta 2 {
		a4 d, c d | c2. r4 | d e f g | a bes c d |
		e1~ | e4 d a g |
	} \alternative {
		{
			f1 | r |
		}
		{
			f1~ | f2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	"\"Have" You Met Miss "Jones?\"" Some one said as we shook hands.
	She was just Miss Jones to me. __

%% part "A"
	Then I said "\"Miss" Jones, You're a girl who un -- der -- stands,
	I'm a man who must be "free.\"" __

%% part "B"
	And all at once I lost my breath,
	and all at once was scared to death,
	and all at once I owned the earth and sky! __

%% part "A"
	Now I've met Miss Jones, and we'll keep on meet -- ing till we die, __
	Miss Jones and I.

	I. __
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
		\smaller \smaller { "Copyright © 1937, by Chappell & Co., Inc. Copyright Renewed" }
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

