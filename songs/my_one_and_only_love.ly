

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
% title: My One And Only Love
% style: Jazz
% composer: Guy Wood
% poet: Robert Mellin
% piece: Slowly
% copyright: 1952, 1953 SHERWIN MUSIC PUBLISHING CORP.
% copyrightextra: Renewed 1980, 1981 WAROCK CORP.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ac777f1c-0bf0-11e3-9fd3-782bcbdd3b7a
% structure: AABA
% location: jfb:266
% idyoutuberemark1: Coltrane!
% idyoutube1: ecrE80rnjhw
% idyoutuberemark2: Sting in the leaving Las-Vegas version
% idyoutube2: lEkJoMNFPEA
% lyricsurl: http://www.lyricsfreak.com/l/louis+armstrong/my+one+and+only+love_20268115.html
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
	      \underline \sans "My One And Only Love"
	      \fontsize #1 \lower #1  "- Robert Mellin / Guy Wood"
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

  \tocItem \markup "My One And Only Love / Guy Wood, Robert Mellin"


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
		c2 a:m7 | d:m7 g4:9 gis:dim7 | a:m a:m7/g f2:maj7 | b:m7.5- e4:m7 a:7.9- | \myEndLine
		d:m7 d:m7/c b:m7.5- e:7 | a2:m7 ees:9 | d:m7 g4:7 g:7/f | e:m a:7.9- d:m7 g:9 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2 a:m7 | d:m7 g4:9 gis:dim7 | a:m a:m7/g f2:maj7 | b:m7.5- e4:m7 a:7.9- | \myEndLine
		d:m7 c:m7 b:m7.5- e:7 | a2:m7 ees:9 | d:m7 g4:7 g:7.9- | c2 fis4:m7.5- b:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		e2:m6 cis:m7.5- | fis:m7 b:7 | e2:m6 cis:m7.5- | fis:m7 b:7 | \myEndLine
		e:m e:m/dis | e:m/d e:m/cis | d:m7 aes:7.11+ | d:m7 g:7.9- | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		c2 a:m7 | d:m7 g4:9 gis:dim7 | a:m a:m7/g f2:maj7 | b:m7.5- e4:m7 a:7.9- | \myEndLine
		d:m7 c:m7 b:m7.5- e:7 | a2:m7 ees:9 | a:m7 g4:7.5+ des:9 |
	} \alternative {
		{
			c2 d4:m7 g:7.5+ | \myEndLineVoltaNotLast
		}
		{
			aes4:maj7 des:maj7 des:6 c:6.9 | \myEndLineVoltaLast
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
	\tempo "Moderato" 4 = 100
	\time 2/2
	\key c \major

	\repeat volta 2 {

	%% part "A"
		r8 g a8. c16 d8 e b' g | a4 d b~ \tuplet 3/2 { b8 g f } |
		e4 c' a~ \tuplet 3/2 { a8 f e } | d4 b' g2 |
		r8 a g f e8. d16 g8. e16 | c8 a4.~ a2 |
		r8 f' g a g4 d | g1 |

	%% part "A"
		r8 g, a8. c16 d8 e b' g | a4 d b~ \tuplet 3/2 { b8 g f } |
		e4 c' a~ \tuplet 3/2 { a8 f e } | d4 b' g2 |
		r8 a g f e8. d16 g8. e16 | c8 a4.~ a2 |
		r8 f' g a g4 e | c2. r8 b |

	%% part "B"
		b'4~ \tuplet 3/2 { b8 a g } b4~ \tuplet 3/2 { b8 a g } | b,8 b4.~ b4 r8 b |
		b'4~ \tuplet 3/2 { b8 a g } b4~ \tuplet 3/2 { b8 a g } | b,2. r8 b |
		e4~ \tuplet 3/2 { e8 fis g } e4. b8 | e4~ \tuplet 3/2 { e8 fis g } e2 |
		\tuplet 3/2 { d4 d d } \tuplet 3/2 { f! d f } | d1 |

	%% part "A"
		r8 g, a8. c16 d8 e b' g | a4 d b~ \tuplet 3/2 { b8 g f } |
		e4 c' a~ \tuplet 3/2 { a8 f e } | d4 b' g2 |
		r8 a g f e8. d16 g8. e16 | c8 a4.~ a2 |
		r8 f' g f aes4 b |
	} \alternative {
		{
			c2. r4 |
		}
		{
			c1 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	The ver -- y thought of you makes my heart sing __
	like an A -- pril breeze __ on the wings of spring.
	And you ap -- pear in all your splen -- dor, __
	My One And On -- ly Love.

%% part "A"
	The shad -- own fall and spread their mys -- tic charms __
	in the hush of night __ while you're in my arms.
	I feel your lips so warm and ten -- der, __
	My One And On -- ly Love.

%% part "B"
	The touch __ of your hand __ is like heav -- en, __
	a heav -- __ en that I've __ nev -- er known.
	The blush __ on your cheek when -- ev -- __ er I speak
	tell me that you are my own.

%% part "A"
	You fill my ea -- ger heart with such de -- sire. __
	Ev -- r'y kiss you give __ sets my soul on fire.
	I give my -- self in sweet sur -- ren -- der, __
	My One And On -- ly Love.

	Love.
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
		\smaller \smaller { "Copyright © 1952, 1953 SHERWIN MUSIC PUBLISHING CORP." }
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

