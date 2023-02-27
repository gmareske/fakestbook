

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
% title: Ornithology
% style: Jazz
% composer: Charlie Parker, Benny Harris
% piece: Fast Swing
% copyright: 1946 ATLANTIC MUSIC CORP.
% copyrightextra: Renewed and assigned 1974 ATLANTIC MUSIC CORP.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: dac427e4-0b81-11e4-9974-0f7c29702a29
% structure: ABAC
% structureremark: This can also be seen as AB but they start with exactly the same first 8 bar so ABAC is better
% location: jfb:293
% idyoutuberemark1: Charlie!
% idyoutube1: DEeISJ0wr48
% idyoutuberemark2: Kenny Garrett And Brad Mehldau classic
% idyoutube2: W_CskOhskbc
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
	      \fontsize #1 \lower #1 \rotate #7 "Fast Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Ornithology"
	      \fontsize #1 \lower #1  "- Charlie Parker, Benny Harris"
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

  \tocItem \markup "Ornithology / Charlie Parker, Benny Harris"


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

	\partial 8 s8 |

	\repeat volta 2 {

		\myMark "A"
		\startPart
		g1*2:maj7 | g2:m7 c:7 | g:m7 c:7 | \myEndLine
		f1*2:maj7 | f1:m7 | bes:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		ees:7 | d:7 |
	} \alternative {
		{
			g:m | c2:m7.5- d:7 | \myEndLine
			b1:m7 | e:7 | a:m7 | d:7 | \myEndLineVolta
		}
		{
			g | a2:m7 d:7 | \myEndLine
			g/b bes:7 | a:m7 aes:7 | g1*2:maj7 | \myEndLineVolta \endPart
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
	\tempo "Presto" 4 = 200
	\time 4/4
	\key g \major

	\partial 8 d8 |

	\repeat volta 2 {

	%% part "A"
		g a b c d b c d | b g r4 r r8 d | g a bes c d e4 f!8~ | f g, a bes~ bes4. d8 |
		c a4 f!8 bes gis a f~ | f r r4 r4 r8 aes~ | aes4 g8 f! e g f c | f!4 ees8 d r4 r8 des'8~ |

	%% part "B"
		des4 c8 bes a c bes g | a4 g8 fis r4 r8 d |
	} \alternative {
		{
			a' g d bes f' d ees d~ | d a' \tuplet 3/2 { fis! g a fis g a fis g a } |
			d4 r r8 a \tuplet 3/2 { fis g a } | \tuplet 3/2 { fis g a fis g a fis g a fis g a } |
			d b a g c aes fis d | ees f! g b bes ges e! d |
		}
		{
			a' g d b f'! d ees d~ | d a' \tuplet 3/2 { fis! g a fis g a fis g a } |
			d r r4 r2 | r8 a \tuplet 3/2 { fis g a fis g a fis g a } |
			d a \tuplet 3/2 { fis g a fis g a fis g a } | d r r4 r2 |
		}
	}
}
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
		\smaller \smaller { "Copyright © 1946 ATLANTIC MUSIC CORP." }
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

