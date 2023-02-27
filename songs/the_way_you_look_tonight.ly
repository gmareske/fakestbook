

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
% title: The Way You Look Tonight
% style: Jazz
% composer: Jerome Kern
% poet: Dorothy Fields
% piece: Med.-Up Swing
% copyright: 1936 T B Harms Co.
% copyrightextra: Copyright Renewed c/o The Welk Music Group, Santa Monica, CA 90401 Authorized Selling Agent in Japan High Note Publishing Co, Ltd, used by permission of JASRAC License #8670719. International Copyright Secured. All Right Reserved. Used By Permission.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 30fc7894-d8f8-11e3-84a6-77203dda2123
% structure: AABA
% structureremark: The New Real Book marks this one as AABC but the C is too damn close to the A
% location: nrbk1:395-396
% idyoutuberemark1: The cannonical performance by Frank Sinatra
% idyoutube1: h9ZGKALMMuc
% idyoutuberemark2: Nat King Cole in a great version
% idyoutube2: qLVvHtKUrdQ
% idyoutuberemark3: Monk and Rollins in an instrumental version
% idyoutube3: V0fPYzyB2AQ
% lyricsurl: http://www.lyrics007.com/Frank%20Sinatra%20Lyrics/The%20Way%20You%20Look%20Tonight%20Lyrics.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Med.-Up Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "The Way You Look Tonight"
	      \fontsize #1 \lower #1  "- Dorothy Fields / Jerome Kern"
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

  \tocItem \markup "The Way You Look Tonight / Jerome Kern, Dorothy Fields"


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

	\myMark "Instr."
	\repeat volta 2 {
		f2:6 d:m7 | g:m9 c:7 | f:maj7 d:m7 | g:m9 c:7 | \myEndLine
	}

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f1:maj7 | d:m7 | g:m7 | c:7 | \myEndLine
		f2:maj7 ees:13 | d1:7 | g:m7 | c:7 | \myEndLine
		c:m7.11 | f:7 | bes:maj7 | g2:m7 c:7 | \myEndLine
		f:6 d:m7 | g:m9 c:7 | f:maj7 d:m7 |
	} \alternative {
		{
			g:m9 c:7 | \myEndLineVoltaNotLast
		}
		{
			bes:m7 ees:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	aes1:maj7 | a:dim7 | bes:m7 | ees:7 | \myEndLine
	aes:maj7 | c2:m7 b:dim7 | bes1:m7 | ees:9 | \myEndLine
	aes:maj7 | a:dim7 | bes:m7 | ees:13 | \myEndLine
	aes:maj7 | des:maj7 | g:m7.11 | c:7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	f1:maj7 | d:m7 | g:m7 | c:7 | \myEndLine
	f2:maj7 ees:13 | d1:7 | g:m7 | c:7 | \myEndLine
	c:m7.11 | f:7 | bes:maj7 | g2:m7 c:7 | \myEndLine
	f:6 d:m7 | g:m9 c:7 | f:maj7 d:m7 | g:m9 c:7 | \myEndLine
	g1:m7 | c:7 | f2:6 d:m7 | g:m7 c:7 | \myEndLine
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
	\key f \major

%% part "Instr."
	\repeat volta 2 {
		r4 c' d2 | r4 a' g2 | r4 e d2 | r4 a g2 |
	}

%% part "A"
%%\mark \markup { \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		c1 | f, | g4 a bes a | g1 |
		a4 bes c bes | a1 | bes4 c d c | bes c d e |
		f1 | f, | g4 a c bes | a2 g |
	%%<< { r4 c d2 } \\ { f,1 } >> | << { r4 a' g2 } \\ { r1 } >> | << { r4 e d2 } \\ { r1 } >> |
		f1 | r1 | r1 |
	} \alternative {
		{
		%%<< { r4 a g2} \\ { r4 d e g } >> |
			r4 d e g |
		}
		{
		%%<< { r1 } \\ { r4 aes g2 } >> |
			r1 |
		}
	}

%% part "B"
	c2 c | c c | c4 ees des bes~ | bes1 |
	bes4 c aes g~ | g2 aes | f'1~ | f2. r4 |
	ees2 ees | ees ees | ees4 f des c~ | c1 |
	bes4 c2 aes4 | g2 aes | c1~ | c2. r4 |

%% part "C"
	c1 | f, | g4 a bes a | g1 |
	a4 bes c bes | a1 | bes4 c d c | bes c d e |
	f1 | f, | g4 a c bes | a2 g |
%%<< { r4 c d2 } \\ { f,1 } >> | << { r4 a' g2 } \\ { r1 } >> | << { r4 e d2 } \\ { r1 } >> | << { r4 a g2} \\ { r1 } >> |
	f1 | r1 | r1 | r1 |
	g4 a c bes | a2 g | f4 r r2 | r1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "Instr."
	_ _ _ _ _ _ _ _

%% part "A"
	Some -- day when I'm aw -- fly low,
	When the world is cold,
	I will feel a glow just think -- ing
	of you,
	And the way you look to -- night.
	Oh, but you're

%% part "B"
	With each word your ten -- der -- ness grows, __
	tear -- ing my fear __ a -- part, __
	And that laugh that wrin -- kles your nose __
	touch -- es my fool -- ish heart. __

%% part "C"
	Love -- ly, nev -- er, nev -- er change,
	Keep that breath -- less charm,
	Won't you please ar -- range it 'cause I love you,
	Just the way you look to -- night,
	Just the way you look to -- night.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "Instr."
	_ _ _ _ _ _ _ _

%% part "A"
	Love -- ly, with your smile so warm,
	And your cheek so soft,
	There is noth -- ing for me but to
	love you,
	Just the way you look to -- night.
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
		\smaller \smaller { "Copyright © 1936 T B Harms Co." }
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

