

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
% title: Au Privave
% style: Jazz
% composer: Charlie Parker
% piece: Upbeat Swing
% copyright: 1956, Atlantic Music Corp.
% copyrightextra: 1978, Atlantic Music Corp.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: e62b60ec-eb9b-11e0-aab7-0019d11e5a41
% structure: Blues
% location: rbk1:32,jfb:50,file:au_privave_omnibook.pdf
% idyoutube1: HUNgcPSYeyM
% idyoutube2: dvdQYSWOobc
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
	      \fontsize #1 \lower #1 \rotate #7 "Upbeat Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Au Privave"
	      \fontsize #1 \lower #1  "- Charlie Parker"
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

  \tocItem \markup "Au Privave / Charlie Parker"


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

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f1:7 | g2:m aes:dim | f1:7 | c2:m f:7 | \myEndLine
		bes1*2:7 | f1:7 | a2:m d:7 | \myEndLine
		g1:m | c:7 | f2:7 d:7 |
	} \alternative {
		{
			g2:m c:7 | \myEndLineVoltaNotLast
		}
		{
			g2:7 c:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "A"
	\startPart
	f1*2:7 | c1:m | c2:m b:7 | \myEndLine
	bes1*2:7 | f1 | f2 d:7 | \myEndLine
	g1:m | c:7 | f:7 | g2:m c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f1:7 | bes:7 | f:7 | f2:7 f:7.5+ | \myEndLine
	bes1*2:7 | f1:7 | a2:m d:7 | \myEndLine
	g1:m | c:7 | f:7 | g2:m c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f1:7 | bes:7 | f:7 | c2:m f:7 | \myEndLine
	bes1*2:7 | f1:7 | a2:m d:7 | \myEndLine
	g1:m | c:7 | f:7 | g2:m c:7 | \myEndLine
	\endPart

	\myMark "End"
	f1:7 | \myEndLine

	\endSong
	\endChords
}

}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Prestissimo" 4 = 220
	\time 4/4
	\key f \major

%% part "A"
	\repeat volta 2 {
		f8 e f c r4 a'8 aes | a c, r e~ e g f e | g f a bes a f g ees | r d' r4 r8 des~ des bes |
		b4. f'8 r b, bes4~ | bes2 aes8 f g f | c'4 r8 a bes4 r8 g | c4 c~ c8 a bes c |
		a g f e f4 r8 c' | bes4 r8 f'~ f c e f | r4 r8 c~ c4. a8 |
	} \alternative {
		{
			bes a f d a' a~ a4
		}
		{
			bes8 a f d a' g~ g4
		}
	}

%% part "A"
	f4 r r8 des16 c b8 c | e g f g a bes c a | bes c16 bes a8 f g ees~ ees4 | r2 r4 f16 g bes d |
	f8 r d g, r4 f16 g bes d | f4 des8 g, r2 | r8 e \tuplet 3/2 { f8 a c } e ees d des | c bes \tuplet 3/2 { a16 bes a } g8 ges ees c cis |
	f a, \tuplet 3/2 { bes d f } a f d bes | g'4 c8 aes~ aes4 c8 a~ | a4 c,8 d~ d4 r | r2 r4 f'8 e |

%% part "A"
	f r c bes c4 a8 f | bes c d c r b, c bes' | aes a c a bes c16 bes a8 g | f e ees g d c f e |
	d f, aes b e4 b8 g'~ | g4 r8 f~ f4 e8 c | d a~ a2 r4 | r2 r4 g'16 a bes d |
	f16 d ees e c cis d c bes a g f e g bes d | c a \tuplet 3/2 { bes c bes } a f d bes g' aes e c cis d b g | %% cont on next line
	c4 r r8 bes a16 c e g | f4 r8 c e4~ e16 g bes d |

%% part "A"
	c4 r8 bes a f4 b8~ | b bes \tuplet 3/2 { aes16 bes aes } f8 g f4 ees8~ | ees c~ c4 r2 | r4 r8 g''8~ g4 f8 ees |
	d c bes c16 bes aes8 f d4 | r r8 \mark \markup { \italic { Lay Back } } g~ g f des b | c4 r r r8 e'16 ees | d8 des c bes \tuplet 3/2 { a16 bes a } g8 ges g |
	a g r4 r8 a bes c | \tuplet 3/2 { des ees des } c b bes g c bes | a f des b c4 r4 | r4 r8 a'~ a4~ a8 c16 a |

%% part "End"
	g8 f g2. |
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
		\smaller \smaller { "Copyright © 1956, Atlantic Music Corp." }
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

