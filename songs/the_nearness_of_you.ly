

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
% title: The Nearness Of You
% style: Jazz
% subtitle: From the Paramount Picture 'Romance in the Dark'
% composer: Hoagy Carmichael
% poet: Ned Washington
% piece: Slowly
% copyright: 1937, 1940 Famous Music Corporation
% copyrightextra: Renewed 1964, 1967
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: aeb48162-da80-11e3-9daf-67e95f938714
% structure: AABA
% location: rbk2:261
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "The Nearness Of You"
	      \fontsize #1 \lower #1  "- Ned Washington / Hoagy Carmichael"
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

  \tocItem \markup "The Nearness Of You / Hoagy Carmichael, Ned Washington"


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
	\startSong
	\startChords

	\partial 4. s4. |

	\myMark "A"
	\startPart
	ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes:dim7 | \myEndLine
	g2:m7 c:7 | f:m7 bes:7 | g:m7 c:7 | f:m7 bes:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes:dim7 | \myEndLine
	g2:m7 c:7 | f:m7 bes:7 | ees:maj7 aes:7 | ees1:maj7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f:m7 | bes:7 | ees2:maj7 ees:7 | bes:m7 ees:7 | \myEndLine
	aes:maj7 a4:m7.5- d:7 | g2:m7 c:7 | f1:7 | f2:m7 bes:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1:maj7 | bes2:m7 ees:7 | aes1:maj7 | aes:dim7 | \myEndLine
	g2:m7 c:7 | f:m7 bes:7 | g1:m7.5- | c:7 | \myEndLine
	f:m7 | bes:7 | ees1*2:maj7 | \myEndLine
	\endPart

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante Moderato" 4 = 88
	\time 4/4
	\key ees \major

	\partial 4. bes8 ees f |

%% part "A"
	g2 bes4 aes8 g | f4 aes2 g4 | ees2 g4 f | d f2 ees4 |
	bes1~ | bes8 c d ees \tuplet 3/2 { f4 ees d } | bes'1~ | bes2~ bes8 bes, ees f |

%% part "A"
	g2 bes4 aes8 g | f4 aes2 g4 | ees2 g4 f | d f2 ees4 |
	bes1~ | bes8 c d ees \tuplet 3/2 { f4 ees d } | ees1~ | ees2 bes8 c d ees |

%% part "B"
	f1~ | f4 d8 ees f ees4 d8 | g4. d8 des2~ | des~ des8 ees4 ees8 |
	c'2. c4 | bes2. aes4 | f1~ | f2~ f8 bes, ees f |

%% part "A"
	g2 bes4 aes8 g | f4 aes2 g4 | ees2 g4 f | d f2 ees4 |
	bes1~ | bes8 c d ees \tuplet 3/2 { f4 ees d } | bes'1~ | bes4 g8 aes \tuplet 3/2 { bes4 aes g } |
	c2. c,4 | d ees2 f4 | ees1~ | ees2 r |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	It's not the pale moon that ex -- cites me, that thrills and de -- lights me. Oh,
	no, __ it's just The Near -- ness Of You. __

%% part "A"
	It is -- n't your sweet con -- ver -- sa -- tion that brings this sen -- sa -- tion. Oh,
	no, __ It's just the Near -- ness Of You. __

%% part "B"
	When you're in my arms __ and I feel you so close to me __ all my
	wild -- est dreams com true. __

%% part "A"
	I need no soft lights to en -- change me if you'll on -- ly grant me the
	right __ to hold you ev -- er so tight __ and to feel in the
	night The Near -- ness Of You. __
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
		\smaller \smaller { "Copyright © 1937, 1940 Famous Music Corporation" }
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

