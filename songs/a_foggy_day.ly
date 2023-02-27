

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
% title: A Foggy Day
% style: Jazz
% subtitle: From 'A Damsel In Distress'
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Medium Swing
% copyright: 1937, Gershwin Publishing Corporation
% copyrightextra: Copyright Renewed, Assigned to Chappell & Co, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 87da6ece-a26e-11df-95d7-0019d11e5a41
% structure: AB
% structureremark: this tunes structure can also be categorised as ABAC since the first 8 bars of both the first and second part are the same.
% location: rbk1:6,jfb:120-121
% idyoutuberemark1: Wynton Marsalis Quartet
% idyoutube1: -P2xoeGoWMs
% idyoutuberemark2: Mel Torme (one of the greatest vocal versions)
% idyoutube2: tVCDZaApwV8
% lyricsurl: http://www.sing365.com/music/lyric.nsf/A-Foggy-Day-lyrics-Frank-Sinatra/0F2EB16090A785424825692000077664
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "A Foggy Day"
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

  \tocItem \markup "A Foggy Day / George Gershwin, Ira Gershwin"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		f1:maj7 | a2:m7.5- d:7.9- | g1:m7 | c:7 | \myEndLine
		f2. d4:m7.5- | d1:m7.5- | g:7 | g2:m7 c:7 | \myEndLine
		f1:maj7 | c2:m7 f:7 | bes1:maj7 | bes:m6 | \myEndLine
		f:maj7 | a2:m7 d:7 | g1:7.9 | g2:m7 c:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f1:maj7 | a2:m7.5- d:7.9- | g1:m7 | c:7 | \myEndLine
		f2. d4:m7.5- | d1:m7.5- | g:7 | g2:m7 c:7 | \myEndLine
		c1:m7 | f:7 | bes:maj7 | ees:7 | \myEndLine
		f2 g:m7 | a:m7 bes:m6 | a:m7 d:m7 | g:m7 c:7 | \myEndLine
	} \alternative {
		{
			f1 | g2:m7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f1 | bes2:7 bes:m6 | f1:maj7 | \myEndLineVoltaLast
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
	\time 4/4
	\key f \major

	\partial 4 c4 |

	\repeat volta 2 {

%% part "A"
	c c2 ees4~ | ees2. ees4 | d d2 a'4~ | a1 |
	f2 f4 aes~ | aes2. aes4 | g2 g4 d'~ | d1 |
	r4 e e e | c c2. | a2 a4 f~ | f2. f4 |
	a a a c~ | c c2 c4 | a2 a4 d,~ | d2. c4 |

%% part "B"
	c2 c4 ees~ | ees ees2 ees4 | d2 d4 a'~ | a2 a4 a |
	f2 f4 aes~ | aes bes aes2 | g g4 d'~ | d2. d4 |
	f2 f4 d~ | d2. d4 | c2 c4 a~ | a2 a4 bes |
	c f, g bes | a f g bes | a2 f' | f, g |

	} \alternative {
		{
			f1 | r2 r4 c |
		}
		{
			f1~ | f~ | f |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	







\lyricmode {

%% part "A"
	A Fog -- gy Day __ in Lon -- don town __ had me low __ and had me down. __
	I viewed the morn -- ing with a -- larm, __ the Brit -- ish Mu -- se -- um had lost its charm. __

%% part "B"
	How long I won -- dered could this thing last? __ But the age of mir -- a -- cles had -- n't passed, __
	for sud -- den -- ly, __ I saw you there __ and through fog -- gy Lon -- don town the sun was shin -- ing ev -- 'ry where.

%% part "Volta"
	A where. __
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
		\smaller \smaller { "Copyright © 1937, Gershwin Publishing Corporation" }
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

