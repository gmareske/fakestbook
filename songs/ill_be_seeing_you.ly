

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
% title: I'll Be Seeing You
% style: Jazz
% composer: Irving Kahal, Sammy Fain
% poet: Irving Kahal, Sammy Fain
% piece: Moderately
% copyright: 1938 Williamson Music Co. Copyright Renewed.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 6161149e-da7f-11e3-9076-0bd9aa7a6778
% structure: ABA'C
% structureremark: This is almost a pure ABAC
% location: jfb:167
% idyoutuberemark1: Sinatra in his younger days
% idyoutube1: oL60OQLekWQ
% idyoutuberemark2: Stitt in a cool instrumental version
% idyoutube2: cmkEbH43GIQ
% lyricsurl: http://www.azlyrics.com/lyrics/billieholiday/illbeseeingyou.html
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
	      \underline \sans "I'll Be Seeing You"
	      \fontsize #1 \lower #1  "- Irving Kahal, Sammy Fain"
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

  \tocItem \markup "I'll Be Seeing You / Irving Kahal, Sammy Fain"


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
		ees1 | g:7 | f2:m c:7 | f1:m | \myEndLine
		f2:m c:7 | f:m bes:7 | ees f:m7 | fis:dim7 ees/g | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c1*2:m7 | f:m7 | \myEndLine
		bes1:7 | bes:7.5+ | ees:6 | bes:9.5+ | \myEndLine
		\endPart

		\myMark "A'"
		\startPart
		ees | g:7 | f2:m c:7 | f1:m | \myEndLine
		f2:m c:7 | f:m bes4:7 bes:7/aes | g1:m7.5- | c:7 | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		f2:m d:m7.5- | g1:7 | c:m7 | f:9 | \myEndLine
		f:m7 | aes:m6 |
	} \alternative {
		{
			ees | f2:m7 bes4:7 bes:7.5+ | \myEndLineVoltaNotLast
		}
		{
			ees2 f4:m7 e:m7 | ees1:6 | \myEndLineVoltaLast
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
	\time 2/2
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		g'2. f4 | f8 ees4 d8~ d4 ees | aes4. g8 g4. f8 | f4. e8 e4 f |
		as4. g8 g4. f8 | f4. e8 e4 f | fis8 g4 c8~ c2~ | c2. r4 |

	%% part "B"
		ees2. d4 | d8 c4 b8~ b4 c | ees2. d4 | d8 c4 b8~ b4 c |
		c2. bes4 | bes8 fis4 fis8~ fis4 d' | c8 g4 g8~ g4 c | fis,8 c4 c8~ c2 |

	%% part "A'"
		g'2. f4 | f8 ees4 d8~ d4 ees | aes4. g8 g4. f8 | f4. e8 e4 f |
		aes4. g8 g4. f8 | f4. e8 e4 f | bes4. aes8 aes4. g8 | g4. fis8 fis4 g |

	%% part "C"
	%% on the third bar we can do <g \parenthesize \tweak font-size #-1 g'>2.
		c4. c8 bes4 aes | d4. d8 c4 b | ees ees d c | g2. f8 g |
		aes aes aes aes aes2~ | aes8 aes bes ces bes4 aes |
	} \alternative {
		{
			ees'2. r4 | r1 |
		}
		{
			ees1~ | es2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I'll Be See -- ing You __ in all the old fa -- mil -- iar plac -- es that this heart of mine em -- brac -- es all day thru. __

%% part "B"
	In that samll ca -- fe; __ the park a -- cross the way, __ the chil -- dren's ca -- rou -- sel, __ the
	chet -- nut -- trees, __ the wish -- ing well. __

%% part "A'"
	I'll Be See -- ing You __ in ev -- 'ry love -- ly sum -- mer's day, in ev -- 'ry -- thing that's
	light and gay, I'll al -- ways think of you that way.

%% part "C"
	I'll find you in the morn -- ing sun and when the night is new. I'll be
	look -- ing at the moon, __ but I'll Be See -- ing You!

%% part "Volta"
	You! __
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
		\smaller \smaller { "Copyright © 1938 Williamson Music Co. Copyright Renewed." }
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

