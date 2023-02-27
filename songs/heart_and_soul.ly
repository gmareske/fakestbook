

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
% title: Heart And Soul
% style: Jazz
% composer: Frank Losser, Hoagy Carmichael
% poet: Frank Losser, Hoagy Carmichael
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 2c3e3512-da7f-11e3-9149-3707f62022e6
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
	      \fontsize #1 \lower #1 \rotate #7 ""
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Heart And Soul"
	      \fontsize #1 \lower #1  "- Frank Losser, Hoagy Carmichael"
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

  \tocItem \markup "Heart And Soul / Frank Losser, Hoagy Carmichael"


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
	f2 d:m7 | g:m7 c:7 | f d:m7 | g:m7 c:7 | \myEndLine
	f d:m7 | g:m7 c:7 | f1 | g2:m7 c:9 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f d:m7 | g:m7 c:7 | f d:m7 | g:m7 c:7 | \myEndLine
	f d:m7 | g:m7 c:7 | f1 | f2. f4:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	bes2 a:7 | d:7 g:7 | c:7 f:7 | e:7 a:7 | \myEndLine
	bes a:7 | d:7 g:7 | c:9 f:7 | e:7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f d:m7 | g:m7 c:7 | f d:m7 | g:m7 c:7 | \myEndLine
	f d:m7 | g:m7 c:7 | a:7 d:7 | g:m7 g4:7 c:7 | f1~ | f | \myEndLine
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
	\time 2/2
	\key f \major

%% part "A"
	f4 f f2~ | f8 f e d e f g4 | a a a2~ | a8 a g f g a bes4 |
	c2 f, | r8 d' c bes a4 g | f2~ f8 g a bes | c4 bes8 a g2 |

%% part "A"
	f4 f f2~ | f8 f e d e f g4 | a a a2~ | a8 a g f g a bes4 |
	c2 f, | r8 d' c bes a4 g | f2~ f8 g a bes | c4 f,2. |

%% part "B"
	r8 d' c bes a4. g8 | fis2 g | e f | d e |
	r8 d' c bes a4. g8 | fis2 g | e f | d e4. c8 |

%% part "A"
	f4 f f2~ | f8 f e d e f g4 | a a a2~ | a8 a g f g a bes4 |
	c2 f, | r8 d' c bes a4 g | a1 | r8 bes a g f4 e | f1~ | f2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Heart and soul, __ I fell in love with you Heart and Soul, __ the way a fool would do,
	Mad -- ly, be -- case you held me tight __ and stole a kiss in the night.

%% part "A"
	Heart and soul, __ I begged to be a -- dored; Lost con -- trol, __ and tum -- bled o -- ver -- board
	Glad -- ly, that mag -- ic night we kissed. __ there in the moon -- mist.

%% part "B"
	Oh! but your lips were thrill -- ing, much too thirll -- ing. Nev -- er be -- fore were
	mine so strange -- ly will -- ing. But

%% part "A"
	now I see __ what one em -- brace can do. Look at me, __ it's got me love -- ing you, Mad -- ly
	that lit -- tle kiss your stole Heald all my heart and soul. __
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

