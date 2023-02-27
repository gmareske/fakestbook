

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
% title: I Could Write A Book
% style: Jazz
% subtitle: From 'Pal Joey'
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Ballad
% copyright: 1940, Chappell & Co., Inc. Copyright Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: e00ddbf8-a26e-11df-92da-0019d11e5a41
% structure: ABAC
% structureremark: could be categorized as AB
% location: rbk1:209,jfb:153
% idyoutuberemark1: Frank in the classic vocal version
% idyoutube1: UwoZNHhFgLQ
% idyoutuberemark2: Miles swings!
% idyoutube2: _DH46QyK2cw
% lyricsurl: http://www.lorenzhart.org/booksng.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "I Could Write A Book"
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

  \tocItem \markup "I Could Write A Book / Richard Rodgers, Lorenz Hart"


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

	\partial 2 s2 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		c2:maj7 a:m7 | d:m7 g:7 | c1:maj7 | c2:maj7 g:7 | \myEndLine
		c:maj7 g:7 | c:maj7 cis:dim7 | d1:m7 | g:7 | \myEndLine
		\endPart
	} \alternative {
		{

			\myMark "B"
			\startPart
			c2/e aes:7/ees | d:m7 g:7 | a:m7 d:7.9- | g2.:maj7 b4:7 | \myEndLine
			e1:m | a2:m7 d:7 | d1:m7 | g:7 | \myEndLineVolta
			\endPart
		}
		{

			\myMark "C"
			\startPart
			a2:m a:m7+ | a:m7 a:m6 | g2:m7 c:7 | f:maj7 f4:m7 bes:7 | \myEndLine
			c2:maj7 a:7 | d:m7 g:7 | c1:6 | \LPC d2:m7 \RPC g:7 | \myEndLineVolta
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
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key c \major

	\partial 2 e4 f |

%% part "A"
	\repeat volta 2 {
		g2 b | a4 g e d | e1~ | e4 g e d |
		e g e d | e c'2 e,4 | g1~ | g2 a4 b |
	} \alternative {
		{

		%% part "B"
			c2 c | c4 d2 b4 | a2 a | g e4 fis |
			g2 g | g4 a2 fis4 | g1~ | g4 r e f |
		}
		{

		%% part "C"
			c'2 c | c4 d2 b4 | bes2 bes | a g4 f |
			e2 e | d4 c'2 b4 | c1 | r2 e,4 f |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% these are lyrics from the fake book adjusted for the real book
\lyricmode {

%% part "A"
	If they asked me I Could Write A Book, __
	a -- bout the way you walk and whis -- per and look, __
	I could

%% part "B"
	write a pre -- face on how we met,
	so the world would nev -- er for -- get, __

	and the
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _ sim -- ple se -- cret of the plot __
	is just to tell them that I love you a -- lot, __
	then the

%% part "B"
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

%% part "C"
	world dis -- cov -- ers as my book ends,
	how to make two lov -- ers of friends.

%% part "Reprise"
	If they
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
		\smaller \smaller { "Copyright © 1940, Chappell & Co., Inc. Copyright Renewed." }
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

