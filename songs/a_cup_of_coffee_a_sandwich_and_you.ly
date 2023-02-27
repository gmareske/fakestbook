

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
% title: A Cup Of Coffee, A Sandwich And You
% style: Jazz
% composer: Joseph Meyer
% poet: Billy Rose, Al Dubin
% piece: Moderato
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: efaf8a18-da80-11e3-83d3-8b992af01517
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderato"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "A Cup Of Coffee, A Sandwich And You"
	      \fontsize #1 \lower #1  "- Billy Rose, Al Dubin / Joseph Meyer"
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

  \tocItem \markup "A Cup Of Coffee, A Sandwich And You / Joseph Meyer, Billy Rose, Al Dubin"


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

	\partial 2. s4 f2:5+ |

	\repeat volta 2 {

		\myMark "A"
		\startPart
		bes1 | ees:m | bes | bes2 b:dim7 | \myEndLine
		c4:m7 f2.:7 | f1:5+ | bes2 b:dim7 | f:7 f:5+ | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		bes1 | ees:m | bes | bes2 b:dim7 | \myEndLine
		c4:m7 f2.:7 | f1:5+ | bes | bes2 f4:7 f:m6 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		ees1*2:7 | a1:m | d4:7 g2.:7 | \myEndLine
		c1:7 | c:7 | c:m7 | f2:7 f:5+ | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		bes1 | ees:m6 | bes | bes2 b:dim7 | \myEndLine
		c4:m7 f2.:7 | c4:m7 f2.:7 |
	} \alternative {
		{
			bes2 a:7 | f:7 f:5+ | \myEndLineVoltaNotLast
		}
		{
			bes2 ees:6 | bes1 | \myEndLineVoltaLast
		}
	}
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
	\tempo "Andante" 4 = 88
	\time 2/2
	\key bes \major

	\partial 2. f4 g f |

	\repeat volta 2 {

	%% part "A"
		d' bes r d | c bes r d | d ( bes2.~ | bes4 ) d, ees d |
		g f r a | g f r a | a ( f2.~ | f4 ) f g f |
		d' bes r d | c bes r d | d ( bes2.~ | bes4 ) d, ees d |
		g f r a | g f r g | bes1~ | bes4 bes a aes |
		g bes2. | ees4 bes2 c4 | d1~ | d4 g, fis f |
		e g2. | d'4 bes2 d4 | c1~ | c4 f, g f |
		d'4 bes r d | c bes r d | d ( bes2.~ |
		bes4 ) d, ees d | g f r a | g f r d' |
	} \alternative {
		{
			d ( bes2. ) | r4 f g f |
		}
		{
			d' ( bes2.~ | bes4 ) r4 r2 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	A Cup of Cof -- fee a sand -- wich and you, __ A co -- zy
	cor -- ner, a ta -- ble for two, __ A chance to
	whis -- per and cud -- dle and coo __ With lots of
	hug -- gin' and kiss -- in' in view __ I don't need
	mus -- ic lob -- ster or wine. __ When -- ev -- er
	your eyes look in -- to mine __ The things I
	long for are sim -- ple and few; __
	A cup of cof -- fee, a sand __ wich and you! A cup of

	you! __
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

