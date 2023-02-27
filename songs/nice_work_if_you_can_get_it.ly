

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
% title: Nice Work If You Can Get It
% style: Jazz
% subtitle: From 'A Damsel In Distress'
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Moderately
% copyright: 1937 Gershwin Publishing Corp.
% copyrightextra: Copyright Renewed, Assigned to Chappell & Co. Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: e55de2a4-da7f-11e3-8543-8726b44261b4
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
	      \underline \sans "Nice Work If You Can Get It"
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

  \tocItem \markup "Nice Work If You Can Get It / George Gershwin, Ira Gershwin"


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
	b2:7 e:7 | a:7 d:7 | g:7 c:7 | a:7 a:7.9- | \myEndLine
	g1/d | a2:m g/b | c4:6 g/b bes:dim7 a:m7 | g1 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	b2:7 e:7 | a:7 d:7 | g:7 c:7 | a:7 a:7.9- | \myEndLine
	g1/d | a2:m g/b | c4:6 g/b bes:dim7 a:m7 | g1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	e1:m | c:9 | e:m7 | a:7 | \myEndLine
	d2:m d:m/f | a:7/e a:7 | a1:m7 | d2:7.5+ d:7.5+/c | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	b2:7 e:7 | a:7 d:7 | g:7 c:7 | a:7 a:7.9- | \myEndLine
	g1/d | a2:m g/b | f:7 e:7 | a:m7 a4:m/d d:7.5+ | g2 ees4:7 d:7 | g1:6 | \myEndLine
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
	\time 2/2
	\key g \major

%% part "A"
	b'4 c c b | a b2. | g4 a a g | fis1 |
	d4. e8~ e8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4. g4 g8 g~ | g2. r4 |

%% part "A"
	b4 c c b | a b2. | g4 a \tuplet 3/2 { a4 gis g } | fis1 |
	d4. e8~ e8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4. g4 g8 g~ | g1 |

%% part "B"
	r8 b4 g8 b4 g | ais4. g8~ g2 | b8. b16 b,8. b16 e8 g4. | fis1 |
	r8 a4 fis8 a4 fis | a4. a8~ a4 a8. b16 | d4 d d8. e16 b4 | ais1 |

%% part "A"
	b4 c c b | a b2. | g4 a \tuplet 3/2 { a4 gis g } | fis1 |
	d4. e8~ e8. d16 e8. g16 | a8 b4. r8. d,16 e8. g16 | a8 b4.~ b2 | d4 b g e | g1~ | g2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Hold -- ing hands at mid -- night 'neath a star -- y sky. Nice Work __ If You Can
	Get it, and you can get it if you try. __ Stroll -- ing with the one girl,
	sigh -- ing sigh aft -- er sign, Nice Work __ If You Can Get It, and you can ge tit if you try. __
	Just im -- ag -- ine some -- one __ wait -- ing at the cot -- tage door,
	where two hearts be -- come one. __ Who could ask for an -- y thing more? Lov -- ing one who
	loves you, and then tak -- ing that vow, Nice Work __ If You Can Get It, and if you
	get it, __ won't you tell me how? __
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
		\smaller \smaller { "Copyright © 1937 Gershwin Publishing Corp." }
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

