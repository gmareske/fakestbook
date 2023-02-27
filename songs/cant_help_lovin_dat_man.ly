

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
% title: Can't Help Lovin' Dat Man
% style: Jazz
% composer: Jerome Kern
% poet: Oscar Hammerstein III
% piece: Moderately and rather freely
% copyright: 1927 T.B. Hama Company, Copyright Renewed
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 0343bfb8-da81-11e3-a02b-6be199cd3208
% structure: AABA
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately and rather freely"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Can't Help Lovin' Dat Man"
	      \fontsize #1 \lower #1  "- Oscar Hammerstein III / Jerome Kern"
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

  \tocItem \markup "Can't Help Lovin' Dat Man / Jerome Kern, Oscar Hammerstein III"


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

	\myMark "A"
	\startPart
	c2:maj7 a:m7 | d:m7 g:7 | c:maj7 g4:m7 c:7.9- | f2:6 bes:9 | \myEndLine
	e:m7 a:m7 | aes2:7 d4:7.9- g:7.9- | c2:maj7 ees:dim7 | d:m7 g:7.5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c:maj7 a:m7 | d:m7 g:7 | c:maj7 g4:m7 c:7.9- | f2:6 bes:9 | \myEndLine
	e:m7 a:m7 | aes:7 d4:7.9- g:7.9- | c2:maj7 d:m7 | g:m7 c:7.9- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f1:6 | fis:dim7 | c:maj7 | d:7 | \myEndLine
	e2:m7 ees:maj7 | d:m7 d:9 | d1:m7/g | g:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c2:maj7 a:m7 | d:m7 g:7 | c:maj7 g4:m7 c:7.9- | f2:6 bes:9 | \myEndLine
	e:m7 a:m7 | aes:7 d4:7.9- g:7.9- | c2:maj7 ees:9 aes:maj7 des:maj7 | c1:maj7 | \myEndLine
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
	\key c \major

%% part "A"
	g'8 g g c~ c4 c | c8 g g g~ g2 | e8 e e a~ a4 a | a8 d, d d~ d2 | g c, |
	aes8 c c ees~ ees4 d | c1 | R1 |

%% part "A"
	g'8 g g c~ c4 c | c8 g g g~ g2 | e8 e e a~ a4 a | a8 d, d d~ d2 | g c, |
	aes8 c c ees~ ees4 d | c1 | R1 |

%% part "B"
	d4 d d d8 ees~ | ees1 | e?4 e e e8 fis~ | fis1 | g4 g g g | a a a a | d2~ d8 c b a | g1 |

%% part "A"
	g8 g g c~ c4 c | c8 g g g~ g2 | e8 e e a~ a4 a | a8 d, d d~ d2 | g c |
	ees8 c d ees~ ees4 d | c1~ | c2. r4 | R1 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Fish got to swim __ and birds got to fly __ I got to love __ one man 'til I die, __ Can't Help
	Lov -- in' Dat Man of mine. Tell me he's la -- zy tell me he's slow, __
	tell me I'm cra -- zy may -- be I know, __ Can't Help Lov -- in' Dat Man of mine.

	When he goes a -- way __ dat's a rain -- y day, __ and when he comes back dat day is fine, __ the sun will shine.
	He can come home as late as can be, __ home with -- out him __ ain't no home to me, __ Can't Help Lov -- in' Dat Man of mine. __
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
		\smaller \smaller { "Copyright © 1927 T.B. Hama Company, Copyright Renewed" }
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

