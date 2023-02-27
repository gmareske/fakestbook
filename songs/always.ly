

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
% title: Always
% style: Jazz
% composer: Irving Berlin
% poet: Irving Berlin
% piece: Waltz
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: e2f7709c-da80-11e3-80dc-7f255b43b3a5
% structure: AB
% structureremark: The tune has an ABAC feel to it because the A and B part start off the same way
% location: tbk:354
% idyoutuberemark1: Frank!
% idyoutube1: eLh-m1Z_feY
% idyoutuberemark2: Billie!
% idyoutube2: iQPdnqDAJE4
% lyricsurl: http://www.metrolyrics.com/always-lyrics-irving-berlin.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Waltz"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Always"
	      \fontsize #1 \lower #1  "- Irving Berlin"
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

  \tocItem \markup "Always / Irving Berlin"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		f2.*4 | \myEndLine
		c2.*2:7 | f | \myEndLine
		f2. | f2 f4:7 | a2.*2 | \myEndLine
		e:7 | a2. | c2.:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f2.*2 | f2.:7 | f4:7/f f:7/e f:7/ees | \myEndLine
		d2.*2:7 | c4:m g2:m | g2.:m | \myEndLine
		g:m | bes:m | f | g:9 | \myEndLine
		c2.*2:7 |
	} \alternative {
		{
			f2. | c:7 | \myEndLineVoltaNotLast
		}
		{
			f2.*2 | \myEndLineVoltaLast
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
	\time 3/4
	\key f \major

	\repeat volta 2 {

	%% part "A"
		c4. d8 f g | a2. | c4 a2~ | a2. |
		c,4. d8 e f | g2. | a4 f2~ | f2. |
		c4. d8 f g | a2. | e4. fis8 a b | cis2. |
		e,4. fis8 gis b | d2. | cis4 a2 | a4 g2 |

	%% part "B"
		c,4. d8 f g | a2. | c4 a2~ | a2. |
		d,4. e8 fis a | d2. | es4 d2~ | d2. |
		bes4. a8 g a | bes2. | a4. g8 f g | a2. |
		g4. f8 e f | g2 c,4 |
	} \alternative {
		{
			a'4 f2~ | f4 r r |
		}
		{
			a4 f2~ | f2 r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I'll be lov -- ing you, Al -- ways __
	With a love that's true, Al -- ways __
	When the things you've planned
	Need a help -- ing hand,
	I will un -- der -- stand, Al -- ways, Al -- ways.

%% part "B"
	Days may not be fair, Al -- ways __
	That's when I'll be there, Al -- ways. __
	Not for just and hour, Not for just a day,
	Not for just a year, But Al -- ways. __

%% part "Volta"
	Al -- ways. __
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

