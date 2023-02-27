

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
% title: I'm Beginning To See The Light
% style: Jazz
% composer: Harry James, Duke Ellington, Johnny Hodges, Don George
% poet: Harry James, Duke Ellington, Johnny Hodges, Don George
% piece: Medium Bounce
% copyright: 1944 Alamo Music, Inc.
% copyrightextra: Copyright Renewed, controlled by Chappell & Chappell & Co., Inc. (Intersong Music, Publisher)
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 849d81e0-da7f-11e3-acc0-47bbef4c81a6
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium Bounce"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "I'm Beginning To See The Light"
	      \fontsize #1 \lower #1  "- Harry James, Duke Ellington, Johnny Hodges, Don George"
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

  \tocItem \markup "I'm Beginning To See The Light / Harry James, Duke Ellington, Johnny Hodges, Don George"


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
		g2:6 c:9 | g1:6 | g2:6 c4:m7 f:7 | bes2:m7 ees:7 | \myEndLine
		g:6 c:9 | b:m7 e:7 | a:9 a4:m7 d:7 | g2 a4:m7 d:7 | \myEndLine

		g2:6 c:9 | g1:6 | g2:6 c4:m7 f:7 | bes2:m7 ees:7 | \myEndLine
		g:6 c:9 | b:m7 e:7 | a:9 a4:m7 d:7 | g1 | \myEndLine

		b1:9 | b:9 | bes:9 | bes:9 | \myEndLine
		a:9 | a:9 | bes2:m7 ees:7 | a:m7 d:7 | \myEndLine
		g:6 c:9 | b:m7 e:m7 | cis:m7.5- c4:m7 f:7 | bes:m7 ees:7 a:m7.5- d:7.9- | \myEndLine
		cis2:m7.5- c:9 | b:m7 e:7.5-.9- | a:9 a4:m7 d:7 |
	} \alternative {
		{
			g2 a4:m7 d:7 | \myEndLineVoltaNotLast
		}
		{
			g2 aes4:maj9 g:6.9 | \myEndLineVoltaLast
		}
	}
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
	\time 2/2
	\key g \major

	\partial 8 dis8 |

%% part "A"
	\repeat volta 2 {
		e g e4 g a | b8 e,4 e8~ e4. dis8 | e g e4 g a | bes8 ees,4 ees8~ ees4. ees8 |
		e8 g e4 g a | b8 d4 d8~ d4 d8 c | b g e4 g8 a4 g8~ | g2 r4 r8 dis |

		e g e4 g a | b8 e,4 e8~ e4. dis8 | e g e4 g a | bes8 ees,4 ees8~ ees4. ees8 |
		e8 g e4 g a | b8 d4 d8~ d4 d8 c | b g e4 g8 a4 g8~ | g2. r4 |

		r8 b4 fis8 b4 fis | dis8 fis4 b8~ b2 | r8 bes4 f8 bes4 f | d8 f4 bes8~ bes2 | r8 a4 e8 a4 e |
		cis8 e4 a8~ a4 a8 a | bes bes bes4 bes8 g4 a8~ | a2. r8 dis,8 | e g e4 g a |
		b8 e,4 e8~ e4. dis8 |

		e g e4 g a | bes8 ees,4 ees8~ ees4. ees8 | e g e4 g a |
		b8 d4 d8~ d4 d8 c | b8 g e4 g8 a4 g8~ |


	} \alternative {
		{
			g2 r4 r8 dis8 |
		}
		{
			g2.\repeatTie r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	I nev -- er cared much for moon -- lit skies, __ I nev -- er wink back at fi -- re -- flies; __ but
	now that the stars are in your eyes, __ I'm Be -- gin -- ning To See The Light. __ I
	nev -- er went in for af -- ter -- glow, __ or can -- dle -- light on the mis -- tle -- toe; __ but
	now when you turn the lamp down low __ I'm Be -- gin -- ning To See The Light. __
	Used to ram -- ble thu the park, __ shad -- ow -- box -- ing in the dark. __ Then you came and
	caused a spark, __ that's a four -- a -- larm fi -- re now. __ I nev -- er made love by
	lan -- tern shine, __ I nev -- er saw rain -- bows in my wine; __ but now that your lips are
	burn -- ing mine, __ I'm Be -- gin -- ning To See The Light. __ I
	_
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
		\smaller \smaller { "Copyright © 1944 Alamo Music, Inc." }
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

