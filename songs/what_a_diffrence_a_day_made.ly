

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
% title: What A Diff'rence A Day Made
% style: Jazz
% composer: Maria Grever
% poet: Stanley Adams
% piece: Relaxed
% copyright: 1934 by Edward B. Marks Music Company. Copyright Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: d28e02f4-2218-11e4-870b-bfbfa80d68bd
% structure: ABAC
% location: jfb:422
% idyoutuberemark1: Dinah Washington in a classic performance
% idyoutube1: OmBxVfQTuvI
% idyoutuberemark2: Jamie Cullum vocal+piano
% idyoutube2: NzS4ygeE1oQ
% lyricsurl: http://www.azlyrics.com/lyrics/reneeolstead/whatadifferenceadaymakes.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Relaxed"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "What A Diff'rence A Day Made"
	      \fontsize #1 \lower #1  "- Stanley Adams / Maria Grever"
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

  \tocItem \markup "What A Diff'rence A Day Made / Maria Grever, Stanley Adams"


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

%%\myMark "A"
	\mark \markup { \musicglyph #"scripts.segno" }
	\startPart
	g1:m7 | c:7 | f | f2/a aes:dim7 | \myEndLine
	g1:m7 | c2:7 c:7.5+ | f1*2 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	e1:m7 | a:7 | d1*2:m7 | \myEndLine
	g:7 | g1:m7 | c2:7 r | \myEndLine
	\endPart

%% end of the "A" part
	\mark \markup { \musicglyph #"scripts.coda" } c1:m7 | f:7 | \myEndLine

	\myMark "C"
	\startPart
	bes1:maj7 | bes:m6 | f | aes:dim7 | \myEndLine
	g:m7 | c:7 | f1*2 | \myEndLine
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
	\tempo "Andante" 4 = 76
	\time 2/2
	\key f \major

	\partial 2. c8 d \tuplet 3/2 { f4 d f } |

%% part "A"
	g2 g~ | \tuplet 3/2 { g4 f g f e f } | e2 d~ | d4 d8 e \tuplet 3/2 { f4 d f } |
	bes2 bes~ | bes4 c8 c \tuplet 3/2 { c4 c^\markup {To Coda \musicglyph #"scripts.coda"} c } | c1~ | c4 r8 a a a a a |

%% part "B"
	a2 a~ | a4. a8 a a a a | a2 a~ | a4. a8 a a a aes |
	g2 g~ | g4 d8 e f e f4 | g1~ | g4 c,8 d \tuplet 3/2 { f4 d f^\markup {D.S. al Coda} } |

%% part "end of A"
	c'2 \tuplet 3/2 { a4 c a } | g2 r8 a c bes |

%% part "C"
	a2 a~ | a4 g a8 g f e | g2 g~ | g4 f8 g f e4 d8 |
	f2 f | r4 e8 e e f g4 | f1~ | f4 r r2 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	What A Diff -- 'rence A Day Made, __
	twen -- ty -- four lit -- tle ho -- urs, __
	brought the sun and the flow -- ers __
	where there used to be rain. __

%% part "B"
	My yes -- ter day was blue dear, __
	to -- day I'm part of you dear, __
	my lone -- ly nights are thru dear, __
	since you said you were mine, __

	What A Diff -- 'rence A

	bliss; that thrill -- ing kiss.

%% part "C"
	It's heav -- en when you __
	find ro -- mance on your men -- u. __
	What A Diff -- 'rence A Day Made,
	and the diff -- 'rence is you. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _ _ _ _
	day makes, __ there's a rain -- bow be -- fore me, __
	skies a -- bove can't be storm -- y __
	since that mo -- ment of
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
		\smaller \smaller { "Copyright © 1934 by Edward B. Marks Music Company. Copyright Renewed." }
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

