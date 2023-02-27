

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
% title: A Fine Romance
% style: Jazz
% composer: Jerome Kern
% poet: Dorothy Fields
% piece: Moderately
% copyright: 1936 T.B. Harms Company. Copyright Renewed.
% copyrightextra: (c/o The Welk Music Group, Santa Monica, CA 90401).
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 7c9691e6-a26e-11df-8418-0019d11e5a41
% structure: ABAC
% structureremark: the structure of this tune can also be AA or AA'. Doesn't really matter.
% location: rbk1:3,jfb:116
% idyoutuberemark1: Oscar Peterson!
% idyoutube1: ytipqjANlrY
% idyoutuberemark2: Ella and Louis, great vocal performance of this song
% idyoutube2: cKbD4PQBrIA
% lyricsurl: http://www.elyrics.net/read/b/billie-holiday-lyrics/a-fine-romance-lyrics.html
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
	      \underline \sans "A Fine Romance"
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

  \tocItem \markup "A Fine Romance / Jerome Kern, Dorothy Fields"


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

	\partial 4 s4 |

	\repeat volta 2 {

		\myMark "A"
		\startPart
		c1:6 | cis:dim7 | g:7/d | dis:dim7 | \myEndLine
		e:m7 | a:m7 | d:m7 | g:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c:maj7 | c2:7 a4:13 aes:13 | g2:13 d:m7 | g:dim7 g:7 | \myEndLine
		c1:6 | a2:7 fis4:13 f:13 | e2:7 a:7 | d:7 g:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c1:6 | cis:dim7 | g:7/d | dis:dim7 | \myEndLine
		e:m7 | a:m7 | d:m7 | g:7 | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		c:6 | c2:7 a:7 | d:m7 a:7 | d:m7 dis:dim7 | \myEndLine
		e:m7 a:7 | d:m7 g:7.9- |

	} \alternative {
		{
			c:6 a:m7 | d:m7 g:7 | \myEndLineVoltaNotLast
		}
		{
			c:6 f:7 | c1:6.9 | \myEndLineVoltaLast
		}
	}
	\endPart
}







}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Presto" 4 = 196
	\time 4/4
	\key c \major

	\partial 4 e4 |

	\repeat volta 2 {

	%% part "A"
		c1 | a'4 g2 a4 | b,1 | b'4 a2 b4 |
		e,1 | d'4 c2 e,4 | g1 | e'4 d2 g,4 |

	%% part "B"
		c4 b c d | \tuplet 3/2 { c b! bes } a aes | g2 g~ | g2. g4 |
		a gis a b | \tuplet 3/2 { a aes g! } fis f | e2 e~ | e2. e4 |

	%% part "A"
		c1 | a'4 g2 a4 | b,1 | b'4 a2 b4 |
		e,1 | d'4 c2 e,4 | g1 | e'4 d2 g,4 |

	%% part "C"
		c4 b c d | \tuplet 3/2 { e d c } b! bes | a1 | \tuplet 3/2 { c4 b bes } a! aes |
		g1 | \tuplet 3/2 { b4 a aes } g! d' |
	} \alternative {
		{
			c1 | r2 r4 e,4 |
		}
		{
			c'1~ | c2. r4 |
		}
	}
}






 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	A Fine Ro -- mance with no kis -- es!
	A Fine Ro -- mance, my friend, this is!

%% part "B"
	We should be like a cou -- ple of hot to -- ma -- toes, __
	but you're as cold as yes -- ter -- day's mashed po -- ta -- toes. __

%% part "A"
	A Fine Ro -- mance you won't nest -- le.
	A Fine Ro -- mance, you won't wrest -- le!

%% part "C"
	I might as well play bridge with my old maid aunts!
	I have -- n't got a chance. This is A Fine Ro -- mance. A
}






}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ Fine Ro -- mance my good fel -- low!
	You take ro -- mance, I'll take jel -- lo!

%% part "B"
	You're calm -- er than the seal in the Arc -- tic O -- cean, __
	at least they flap their fins to ex -- press e -- mo -- tion. __

%% part "A"
	A Fine Ro -- mance with no quar -- rels,
	With no in -- sults, and all mor -- als!

%% part "C"
	I've nev -- er mussed the crease in your blue serge pants!
	I nev -- er get the chance. This is A Fine Ro -- _ _ mance. __
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
		\smaller \smaller { "Copyright © 1936 T.B. Harms Company. Copyright Renewed." }
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

