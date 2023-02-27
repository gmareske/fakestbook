

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
% title: There Will Never Be Another You
% style: Jazz
% composer: Harry Warren
% poet: Mack Gordon
% piece: Easy Swing
% copyright: 1942, 1987 Twentieth Century Music Corporation
% copyrightextra: Renewed 1970 Twentieth Century Music Corporation. All Rights Controlled by Morley Music Co. International Copyright Secured. All Rights Reserved.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: e30e1074-eaf3-11e0-a377-0019d11e5a41
% structure: AB
% structureremark: the structure of this tune could also be thought of ABAC since in the AB interpretation the first 8 bars of the A and B part are identical.
% location: jfb:384,rbk1:426
% idyoutube1: kh_NnsbIqNQ
% idyoutube2: Til3lV_ItZE
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
	      \underline \sans "There Will Never Be Another You"
	      \fontsize #1 \lower #1  "- Mack Gordon / Harry Warren"
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

  \tocItem \markup "There Will Never Be Another You / Harry Warren, Mack Gordon"


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

	\myMark "A"
	\startPart
	ees1:maj7 | aes:maj7 | d1:m7.5- | g:7.9- | \myEndLine
	c1*2:m7 | bes1:m7 | ees:7 | \myEndLine
	aes:maj7 | des:7.9 | ees:6 | c:m7 | \myEndLine
	f1*2:7 | f1:m7/bes | bes:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	ees1:maj7 | aes:maj7 | d1:m7.5- | g:7.9- | \myEndLine
	c1*2:m7 | bes1:m7 | ees:7 | \myEndLine
	aes:maj7 | des:7.9 | g2:m7 c:7 | fis1:dim7 | \myEndLine
	ees2:6 d:7.9- | g:7.5+ c:7.9- | f:m7 bes:7.9 | ees1:6 | \myEndLine
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
	\key ees \major

	\partial 4 bes4 |

%% part "A"
	c d ees f | g bes f4. ees8 | f1~ | f2. g4 |
	ees f g bes | c ees c4. bes8 | c1~ | c2. bes4 |
	ees c bes aes | g f g4. aes8 | bes4 g f ees | f ees f4. ees8 |
	d'4 c bes a | g f g f | aes1~ | aes2. bes,4 |

%% part "B"
	c d ees f | g bes f4. ees8 | f1~ | f2. g4 |
	ees f g bes | c ees c4. bes8 | c1~ | c2. bes4 |
	ees4 c bes aes | g f g4. aes8 | bes4 g f ees | d'2. c4 |
	bes ees d c | bes ees, bes' aes | f2 g | ees2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	







\lyricmode {

%% part "A"
	There will be man -- y oth -- er nights like this, __
	and I'll be stand -- ing here with some -- one new, __
	There will be oth -- er songs to sing, an -- oth -- er fall, an -- oth -- er spring,
	but There Will Nev -- er Be An -- oth -- er You. __

%% part "B"
	There will be oth -- er lips that I may kiss, __
	but they won't thrill me like yours used to do. __
	Yes, I may dream a mil -- lion dreams, but how can they come true,
	if there will nev -- er ev -- er be an -- oth -- er you?
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
		\smaller \smaller { "Copyright © 1942, 1987 Twentieth Century Music Corporation" }
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

