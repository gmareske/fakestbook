

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
% title: Could It Be You
% style: Jazz
% composer: Cole Porter
% piece: Ballad
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 952831ac-74cc-11e5-b102-3860779cb560
% structure: ABAC
% location: rbk1:96
% idyoutuberemark1: Classic Jazz Balad feel
% idyoutube1: c6ohlv16V-g
% idyoutuberemark2: A cafe performance
% idyoutube2: fDxb7zdkewA
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Could It Be You"
	      \fontsize #1 \lower #1  "- Cole Porter"
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

  \tocItem \markup "Could It Be You / Cole Porter"


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
		bes1:maj7 | c2:m7 f:7 | bes1:maj7 | g4:m7 ges:m7 f:m7 bes:7 | \myEndLine
		ees1:maj7 | f2:m7 bes:7 | ees1:maj7 | g2:m7 c:7 | \myEndLine
		\endPart
	} \alternative {
		{

			\myMark "B"
			\startPart
			f1:maj7 | a:7.9- | d2:m7 g:7 | a:m7.5- d:7.9- | \myEndLine
			g:m g:m7 | c1:7 | f:7 | c2:9 c4:m7 f:7 | \myEndLineVoltaLast
			\endPart
		}
		{

			\myMark "C"
			\startPart
			bes1:maj7 | d:7 | ees2:maj7 c4:7 g:7 | ees2:m7 aes:7 | \myEndLine
			bes1:maj7 | c2:9 c4:m7 f:7 | bes1:6 | \LPC c2:m7 \RPC f:7 | \myEndLineVoltaLast
			\endPart
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
	\tempo "Allegro" 4 = 168
	\time 4/4
	\key bes \major

	\repeat volta 2 {

	%% part "A"
		r4 d f d | g1 | r4 d f d | g4 ges8 f~ f2 |
		r4 g! bes g | c1 | r4 g bes g | c4 ces8 bes~ bes2 |
	} \alternative {
		{

		%% part "B"
			r4 a c!4. a8 | g fis g bes~ bes4. g8 | f! e! f a~ a f e4 | ees!2. r4 |
			r d8 d~ d cis d4 | a'2 g | r4 f8 f~ f e! f4 | d'2 c |
		}
		{

		%% part "C"
			r4 bes d4. bes8 | a gis a c~ c4. a8 | g! fis g bes~ bes f! g4 | ees1 |
			r4 f g d' | d2 c8 bes c4 | bes1_\markup { \italic { Fine } } | r |
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

