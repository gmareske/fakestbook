

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
% title: I Could Have Danced All Night
% style: Jazz
% subtitle: From 'My Fair Lady'
% composer: Frederick Loewe
% poet: Alan Jay Lerner
% piece: Moderately
% copyright: 1956 by Alan Jay Lerner & Frederick Loewe. Copyright Renewed
% copyrightextra: Chappell & Co., Inc., owner of publication and allied rights throughout the World
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 47321f34-1a2e-11e4-b94f-232e14538fbe
% structure: ABCD
% structureremark: A, B and D parts are similar in many ways but not in exact harmony so this tune is close to a an AABA tune.
% location: jfb:153
% idyoutuberemark1: Frank in a great version
% idyoutube1: IGqGBu6Ksqk
% idyoutuberemark2: Julie Andrews in a musical like version
% idyoutube2: JNaIor5lxN8
% lyricsurl: http://www.metrolyrics.com/i-could-have-danced-all-night-lyrics-my-fair-lady.html
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
	      \underline \sans "I Could Have Danced All Night"
	      \fontsize #1 \lower #1  "- Alan Jay Lerner / Frederick Loewe"
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

  \tocItem \markup "I Could Have Danced All Night / Frederick Loewe, Alan Jay Lerner"


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

	\partial 2. s2. |

	\myMark "A"
	\startPart
	c1*2 | c:maj7 |
	c:maj7 | c:6 | \myEndLine
	c1*4:maj7 |
	d1*2:m7 | g:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	d:m | d1:m7+ | d:m7 |
	d1*2:m7 | g:7 | \myEndLine
	d:m7/g | d1:m7 | g:7 |
	c1*2:maj7 | c:6 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	e | fis1:m7 | b:7 |
	e1*2:maj7 | e:6 | \myEndLine
	g:maj7 | a1:m7 | d:7.9- |
	g1*2:9 | g2:9 f | c/e d:m7 | \myEndLine
	\endPart

	\myMark "D"
	\startPart
	c1*2 | c:maj7 |
	f1*4:6 | \myEndLine
	d1*2:m7 | d:m7/g |
	d1:m7/g | g:7 | c1*2 | \myEndLine
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
	\tempo "Prestissimo" 4 = 240
	\time 2/2
	\key c \major

	\partial 2. c4 e g |

%% part "A"
	c1~ | c2 b | b1~ | b4 b, e g |
	b1~ | b2 a | a1~ | a2 g |
	e1~ | e2 f | g1~ | g2 a |
	d,1~ | d~ | d | r4 d f a |

%% part "B"
	d1~ | d2 cis | cis1~ | cis4 c, f a |
	c1~ | c2 b | b1~ | b2 a |
	f1~ | f2 g | a1~ | a2 a |
	e1~ | e~ | e | r4 e fis gis |

%% part "C"
	b1~ | b4 e, fis gis | a1~ | a2 b |
	gis1 | gis~ | gis~ | gis4 g a b |
	d1~ | d2 g, | a1 | c |
	b1~ | b~ | b4 r c2 | c c |

%% part "D"
	c1~ | c2 b | b1~ | b4 e, g b |
	d1~ | d2 c | c1~ | c4 f, a c |
	e1 | d | f~ | f4 r r2 |
	r1 | b, | c~ | c4 r r2 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I Could Have Danced __ All Night __
	I Could Have Danced __ All Night! __
	and still __ have begged __ for more. __

%% part "B"
	I could have spread __ my wings __
	and done a thou -- sand things __
	I've nev -- er done __ be -- fore. __

%% part "C"
	I'll nev -- er know __ what made it so __
	ex -- cit -- ing, __
	why all at once __ my heart took flight. __

%% part "D"
	I on -- ly know __ when he __
	be -- gan to dance __ with me. __
	I could have danced, danced, danced, __
	all night. __
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
		\smaller \smaller { "Copyright © 1956 by Alan Jay Lerner & Frederick Loewe. Copyright Renewed" }
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

