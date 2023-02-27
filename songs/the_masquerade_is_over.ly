

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
% title: (I'm Afraid) The Masquerade Is Over
% style: Jazz
% composer: Allie Wrubel
% poet: Herb Magidson
% piece: Moderately Slow
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: a213452e-da80-11e3-82b2-1f2053bf55c9
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately Slow"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "(I'm Afraid) The Masquerade Is Over"
	      \fontsize #1 \lower #1  "- Herb Magidson / Allie Wrubel"
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

  \tocItem \markup "(I'm Afraid) The Masquerade Is Over / Allie Wrubel, Herb Magidson"


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

	\partial 4 s4 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		ees1 | g2:7/d g:7 | c2.:m c4:m7 | bes2:m7 ees:7 | \myEndLine
		aes1 | c2:7/g c:7 | f1:7 | f2:m7.5-/bes bes:7 | \myEndLine
		ees1 | ees:7 | aes | aes:m6 | \myEndLine
	} \alternative {
		{
			ees:maj7 | c:7.9- | f:m7 | bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees | f2:m7 bes:7.9- | ees1 | ees | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f2:m7 bes:7 | ees4:maj9 ees2.:6 | f2:m7 bes:7 | ees2:maj9 ees:6 | \myEndLine
	a:m7 d:7 | g:maj7 g:6 | f1:m7 | b2:7.5- bes4:7 bes:7.5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1 | g2:7/d g:7 | c2.:m c4:m7 | bes2:m7 ees:7 | \myEndLine
	aes1 | c2:7/g c:7 | f1:7 | f2:m7.5-/bes bes:7 | \myEndLine
	ees1 | ees2.:7 ees4:7.5+ | aes1 | aes | \myEndLine
	f:9 | f2.:m7 f4:m7.5-/bes | ees1*2:6 | \myEndLine
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
	\tempo "Presto" 4 = 196
	\time 4/4
	\key ees \major

	\partial 4 bes4 |

%% part "A"
	\repeat volta 2 {
		g'2. g4 | g2~ \tuplet 3/2 { g4 bes aes } | g2. g4 | f2 r4 d8 ees |
		c'2. c4 | bes2~ \tuplet 3/2 { bes4 c bes } | a2. f4 | aes2 r4 g8 aes |
		bes2~ bes8 g f ees | ees'2. c4 | bes2 aes | r4 ees4 f ees |
	} \alternative {
		{
			bes'1~ | bes4 g c4. g8 | bes1~ | bes2 r4 aes |
		}
		{
			bes1~ | bes4 ees, g g | ees1~ | ees2 r4 ees |
		}
	}

%% part "B"
	f8 f f g aes4 g | bes bes2 ees,4 | f8 f f g aes4 g | bes2 r4 g |
	a4 b c b8 a | d4 d2 d4 | f2~ \tuplet 3/2 { f4 ees c } | f,2 r4 <bes, \parenthesize fis'> |

%% part "A"
	g'2. g4 | g2~ \tuplet 3/2 { g4 bes aes } | g2. g4 | f2 r4 d8 ees |
	c'2. c4 | bes2~ \tuplet 3/2 { bes4 c bes } | a2. f4 | aes?2 r4 g8 aes |
	bes2~ bes8 g f ees | ees'2. ees4 | ees2 f, | r4 f g aes |
	c1~ | c4 aes c ees | ees1~ | ees\fermata |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Your eyes don't shine __ like they used to shine. And the thrill is
	gone __ when your lips meet mine. I'm A -- fraid __ The Mas -- que -- rade Is
	O -- ver And so is love, __ and so is love. __
	Your love, __ and so is love. __ I
	guess I'll have to play Pag -- liac -- ci and get my self a clown's dis -- guise, and
	learn to laugh like Pag -- liac -- ci with tears __ in my eyes. You look the
	same, __ you're a lot the same, but my heart says, "\"No," __ no, you're
	not the "same.\"" I'm A -- fraid __ The Mas -- que -- rade Is O -- ver
	and so is love, __ and so is love. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	_ words don't mean __ what they used to mean. They were once in --
	spired, __ now they're juse rou -- tine.
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

