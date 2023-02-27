

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
% title: But Not For Me
% style: Jazz
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Moderately
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: c05b953a-3034-11e5-b197-3860779cb560
% structure: ABAC
% structureremark: This is almost an A tune since the B and C in the ABAC interpretation are almost the same
% location: rbk2:50
% idyoutuberemark1: A great version by Miles Davis and Sonny Rollins
% idyoutube1: r98HGV9M7SY
% idyoutuberemark2: A classic version of Ella Fitzgerald
% idyoutube2: FnfUN6bBAg4
% lyricsurl: http://www.azlyrics.com/lyrics/ellafitzgerald/butnotforme.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "But Not For Me"
	      \fontsize #1 \lower #1  "- Ira Gershwin / George Gershwin"
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

  \tocItem \markup "But Not For Me / George Gershwin, Ira Gershwin"


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

	\partial 2. s2. |

	\repeat volta 2 {

		\myMark "A"
		\startPart
		g1:7 | g2:m7 c:7 | f1:maj7 | d:m7 | \myEndLine
		g:7 | g2:m7 c:7 | f1:maj7 | c2:m7 f:7 | \myEndLine
		\endPart
	} \alternative {
		{

			\myMark "B"
			\startPart
			bes1:maj7 | bes2:m7 ees:7 | f1*2:maj7 | \myEndLine
			d1:m7 | g:7 | g:m7 | c:7 | \myEndLineVolta
			\endPart
		}
		{

			\myMark "C"
			\startPart
			bes1:maj7 | bes2:m7 ees:7 | f1:maj7 | d:m7 | \myEndLine
			g:m7 | c:7 | f1*2:maj7 | \myEndLineVolta
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
	\tempo "Moderato" 4 = 116
	\time 4/4
	\key f \major

	\partial 2. g'4 a g |

	\repeat volta 2 {

	%% part "A"
		a2 g4 f~ | f g a g | a1 | r4 g a g |
		a2 g4 f~ | f g a g | a1 | r4 a bes c |
	} \alternative {
		{

		%% part "B"
			cis2 d4 f | r g, a bes | b!2 c4 f | r f, g a |
			a2 bes4 f' | r f d bes | g1 | r4 g a g |
		}
		{

		%% part "C"
			cis2 d4 f | r g, a bes | b!2 c4 g' | r f d bes |
			a1 | g | f~ | f2. r4 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	They're wri -- ting songs of love, __
	But not for me
	A luc -- ky stars a -- bove, __
	But not for me!

%% part "B"
	With love to lead the way,
	I've found more clouds of gray
	Than a -- ny Rus -- sian play
	Could gua -- ran -- tee

	I was a

%% part "C"
	can't dis -- miss
	the me -- mory of his kiss,
	I guess he's not for me __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _ _ fool to fall, __
	And get that way
	Hi- -- Ho a -- las
	and al -- __ so lack a day

	Al -- though I
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

