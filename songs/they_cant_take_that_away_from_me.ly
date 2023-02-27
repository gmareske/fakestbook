

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
% title: They Can't Take That Away From Me
% style: Jazz
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Moderately
% copyright: 1937 by Gershwin Publishing Corporation
% copyrightextra: Copyright renewed, Assigned to Chappell & Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: d0904c80-d84b-11e3-b741-dbf5614f4f33
% structure: AABA
% location: jfb:390
% idyoutuberemark1: Louis and Ella in a great performance
% idyoutube1: ExmoiGZuiFQ
% idyoutuberemark2: Tony Bennett and Elvis Constello...
% idyoutube2: x6uDp5lYPzs
% lyricsurl: http://www.lyrics007.com/Ella%20Fitzgerald%20Lyrics/They%20Can%27t%20Take%20That%20Away%20From%20Me%20Lyrics.html
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
	      \underline \sans "They Can't Take That Away From Me"
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

  \tocItem \markup "They Can't Take That Away From Me / George Gershwin, Ira Gershwin"


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

%% Intro
	\partial 8*7 s8*7 |

	\myMark "A"
	\startPart
	ees1:6 | ees2/g ges:dim7 | f:m7 bes:9 | f:m7 bes:7.11 | \myEndLine
	ees1 | bes2:m7 ees:13 | aes c4:7 f:7 | f1:m7/bes | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1:6 | ees2/g ges:dim7 | f:m7 bes:7 | f:m7 bes:7.11 | \myEndLine
	ees1 | bes2:m7 ees:13 | aes bes:7 | ees1:6 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	g2:m c4:7 d:7.9- | g2:m c4:7 d:7.9- | g2:m a:7 | a:m7 d:7 | \myEndLine
	g2:m c4:7 d:7.9- | g2:m bes4:m c:7 | f2:7 bes:7 | f1:m7/bes | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1:6 | ees2/g ges:dim7 | f:m7 bes:7 | f:m7 bes:5.11 | \myEndLine
	ees:7 d:7 | bes2:m7 ees:7 | aes bes:7 | c:m aes:m6 | \myEndLine
	ees1 | f2:m7 bes:7 | ees1*2 | \myEndLine
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
	\tempo "Allegro" 4 = 120
	\time 4/4
	\key ees \major

%% part "Intro"
	\partial 8*7 ees8 ees ees ees4 ees8 g~ |

%% part "A"
	g1 | r8 ees ees ees ees4 ees8 bes~ | bes1 | r8 ees ees ees ees4 ees8 bes'~ |
	bes1~ | bes8 r c4 c c | ees8.[ c16 bes8. aes16] bes4 g8 f | r ees ees ees ees4 ees8 g~ |

%% part "A"
	g1 | r8 ees ees ees ees4 ees8 bes~ | bes1 | r8 ees ees ees ees4 ees8 bes'~ |
	bes1~ | bes4 c4 c c | ees8.[ c16 bes8. aes16] bes4 g8 ees~ | ees2. g8 a! |

%% part "B"
	bes4 g d' c | bes g d' c8 bes | g g g2 f4 | d2. g8 a! |
	bes4 a! d c | bes g c c | f,1 | r8 ees ees ees ees4 ees8 g~ |

%% part "A"
	g1 | r8 ees ees ees ees4 ees8 bes~ | bes1 | r8 ees ees ees ees4 ees8 c'~ |
	c1~ | c4 ees ees ees | ees8.[ c16 bes8. aes16] bes4 g8 ees~ | ees r bes'2 aes4 |
	g aes g bes | f2 g | ees1~ | ees2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	The way you wear your hat, __
	the way you sip your tea, __
	the mem -- 'ry of all that __
	no, no! They Can't Take That A -- way From Me!

%% part "A"
	The way your smile just beams, __
	the way you sing off key, __
	the way you haunt my dreams, __
	no, no! They Can't Take That A -- way From Me! __

%% part "B"
	We may nev -- er, nev -- er meet a -- gain on the bump -- y road to love,
	still I'll al -- ways, al -- ways keep the mem -- 'ry of

%% part "A"
	the way you hold your knife, __
	the way we danced till three, __
	the way you changed my life, __
	no, no! They Can't Take That A -- way From Me! __
	No! They Can't Take That A -- way From Me! __
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
		\smaller \smaller { "Copyright © 1937 by Gershwin Publishing Corporation" }
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

