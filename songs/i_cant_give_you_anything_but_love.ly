

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
% title: I Can't Give You Anything But Love
% style: Jazz
% composer: Jimmy McHugh
% poet: Dorothy Fields
% piece: Dreamily
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 2501ad54-da81-11e3-ba1a-2b982dfcfb4e
% structure: ABA'
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
	      \fontsize #1 \lower #1 \rotate #7 "Dreamily"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "I Can't Give You Anything But Love"
	      \fontsize #1 \lower #1  "- Dorothy Fields / Jimmy McHugh"
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

  \tocItem \markup "I Can't Give You Anything But Love / Jimmy McHugh, Dorothy Fields"


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
	g1 | g2/b bes:dim7 | a1:m7 | d:7 | \myEndLine
	g | g2 e:m7 | a1:m7 | d:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	g:7 | g:7 | c:maj7 | c4:maj7 c:7 b:7 bes:7 | \myEndLine
	a1:7 | a:7 | d:7 | d:7 | \myEndLine
	\endPart

	\myMark "A'"
	\startPart
	g | g2/b bes:dim7 | a1:m7 | d:7 | \myEndLine
	d:m7 | g:7 | c:maj7 | c:maj7 | \myEndLine
	c:maj7 | cis:dim7 | g:maj9/d | e:7 | \myEndLine
	a:m7 | a2:7 d:7 | g4 g/b c c:m | g/d d:7 g2:6 | \myEndLine
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
	\key g \major

%% part "A"
	g'4 fis e g | fis e g e | a1 | a8 ais b2. |
	g4 fis e g | fis e g b | d1 | b8 bes a2. |

%% part "B"
	g8 gis a2. | a8 ais b2. | d4 c b a~ | a1 |
	a8 ais b2. | b8 c cis2. | e4 d c b | d c e, fis |

%% part "A"
	g fis e g | fis e g e | a1 | a8 ais b2. |
	d4 c b d | c b d c | b1 | a4 g2. |
	e4 fis g fis | a g fis g | d'1 | fis,4 e2. |
	dis4 e d' c | e e b b | g1~ | g2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	I can't give you an -- y thing but love Ba -- _ by; that's the on -- ly thing I've plen -- ty of,
	Ba -- _ by. Dream a -- while, scheme a -- while we're sure to find __ hap -- pi -- ness and, I guess,
	all those things you've al -- ways pined for. Gee, I'd love to see you look -- ing swell, Ba -- _ by;
	Dia -- mond brace -- lets Wool -- worth does -- n't sell, Ba -- by. 'till that luck -- y day, you know damed
	well, Ba -- by I can't give you an -- y -- thing but love. __
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

