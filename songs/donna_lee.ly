

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
% title: Donna Lee
% style: Jazz
% composer: Charlie Parker
% piece: Up Tempo
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: a9ca1752-53d6-11e2-a687-1bd4487b8eae
% structure: AB
% structureremark: This could be thought of as ABAC although the two A's are not the same so AB is more accurate
% location: rbk1:124
% idyoutuberemark1: Very fast Wynton Marsalis version
% idyoutube1: QdD6XE9DtAE
% idyoutuberemark2: The original Parker, Davis, Bud Powell version
% idyoutube2: hANODMX9c5g
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
	      \fontsize #1 \lower #1 \rotate #7 "Up Tempo"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Donna Lee"
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

  \tocItem \markup "Donna Lee / Charlie Parker"


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
	aes1 | f:7 | bes1*2:7 | \myEndLine
	bes1:m7 | ees:7 | aes | ees2:m7 d:7 | \myEndLine
	des1 | des:m7 | aes | f:7 | \myEndLine
	bes1*2:7 | bes1:m7 | ees:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	aes1 | f:7 | bes1*2:7 | \myEndLine
	c:7 | f1:m | c:7.9+ | \myEndLine
	f:m | c:7 | f:m | aes:dim | \myEndLine
	aes2 f:7 | bes:m7 ees:7 | aes1 | bes2:m7 ees:7 | \myEndLine
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
	\key aes \major

%% part "A"
	r2 \tuplet 3/2 { g''8 aes g } f e | ees! des c bes-4 a-3 c,-1 ees f |
	\tuplet 3/2 { ges aes ges } f-1 ees d f aes c | g! f r4 r e!8 d! |
	ees! a, bes des! f aes c ees | des e, f c' b g-1 ees-3 des-2 |
	c-1 ees g bes! aes4 ees8-2 f-1 | ges-2 bes-3 des-4 f-5 e-4 c-1 r4 |
	ees2~ ees8 des c bes | ees des r4 ges8 fes ees des |
	c c des d ees des c bes | a c ees f \tuplet 3/2 { ges aes ges } f ees |
	d c b a bes aes r d,16 f | \tuplet 3/2 { g8 ges f } e4 r2 |
	ees'!8 des f, aes c bes aes f | g bes des ees \tuplet 3/2 { e fis e } ees des |

%% part "B"
	c4 r \tuplet 3/2 { g'8 aes g } f e | ees! des c bes-4 a-3 c,-1 ees f |
	\tuplet 3/2 { ges aes ges } f-1 ees d f aes c | g! f r4 r g8 f |
	e f g aes bes aes g f | \tuplet 3/2 { des' ees des } c bes \tuplet 3/2 { aes bes aes } g e |
	f4 r r2 | r r4 r8 b |
	c b c des d cis d ees | e dis e dis d des c bes |
	\tuplet 3/2 { aes bes aes } g aes bes aes g f | b, d f aes b g' f e |
	ees! des c bes a ges f ees | des f aes c bes aes g ees |
	aes4 r r2 | r1 |
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

