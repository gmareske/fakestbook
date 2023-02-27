

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
% title: They All Laughed
% style: Jazz
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Medium Swing
% copyright: 1937, Gershwin Publishing Corporation
% copyrightextra: Copyright Renewed, Assigned to Chappell & Co, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 89e1c354-f2a2-11e0-9cf1-0019d11e5a41
% structure: AA'BA''
% structureremark: this tune is very close to AABA. The tags (A') are there to show that there are subtle changes but these are indeed subtle.
% location: jfb:389
% idyoutuberemark1: Ella & Louis
% idyoutube1: ppFVmnmpGz8
% idyoutuberemark2: Carlie Biddle with daughter Stephanie Biddle - excellent performance
% idyoutube2: TdLm9qRRdh4
% lyricsurl: http://www.sing365.com/music/lyric.nsf/They-All-Laughed-lyrics-Ella-Fitzgerald/2123DA2C32C02AF848256AAB000AB847
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
	      \underline \sans "They All Laughed"
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

  \tocItem \markup "They All Laughed / George Gershwin, Ira Gershwin"


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
		g2 e:m | a:m7 d:7 | a:m7 d:7.9- | g4 bes:7 a:7 d:7 | \myEndLine
		g2 e:m | a:m7 d:7 | g:6 e:m7 | a:m7 d:7 | \myEndLine
		\endPart

		\myMark "A'"
		\startPart
		g2 e:m | a:m7 d:7 | cis:7.9- fis:7.9- | b:m7 e:7 | \myEndLine
		d1:6 | a:7 | d1*2:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g4*11:7 b4:7 | e1:7.5+ | \myEndLine
		a1*2:7 | a1:m7 | ees2:7 d2:7 | \myEndLine
		\endPart

		\myMark "A''"
		\startPart
		g2 e:m | a:m7 d:7 | b:7 e:7 | a1:7 | \myEndLine
		g2 e:7 | a:m7 d:7 |

	} \alternative {
		{
			g e:7.9+ | a:7.9- d:7.9- | \myEndLineVoltaNotLast
		}
		{
			ees1 | bes2/d d:7/c | g/b e:7 | a:m7 d:7 | g1*2 | \myEndLineVoltaLast
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

	\repeat volta 2 {

	%% part "A"
		r8 d e4 g a | b8.[ b16 a8. g16] a8 b4. | b8.[ b16 a8. g16] a8 b4 d,8~ | d1 |
		r8 d e4 g a | b8.[ b16 a8. g16] a8 b4 g8~ | g1~ | g2. r4 |

	%% part "A"
		r8 d e4 g a | b8.[ b16 a8. g16] a8 b4. | d8.[ d16 cis8. b16] cis8 d4 fis,8~ | fis1 |
		b4 a8. gis16 a8 b4. | b8.[ c16 a8. gis16] a8 b4. | a4 b c b | a d d d |

	%% part "B"
		d2~ d8 b4 g8 | a2~ a8.[ b16 c8. cis16] | d4 e d b | c2. b4 |
		e2~ e8 cis4 a8 | b2~ b8 a4 b8 | c4 e e, g | a1 |

	%% part "A"
		r8 d, e4 g a | b8.[ b16 a8. g16] a8 b4. | c8 b4 a8 b4 c | b2. a4 |
		d4 d d2 | e8 e4 e8 b4 b |
	} \alternative {
		{
			g1~ | g2 r |
		}
		{
			g4 g g2 | bes8 bes4 bes8 fis4 fis | d'4 d d2 | e8 e4 e8 b4 b | g1~ | g4 r r2 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	They All Laughed at Chris -- to -- pher Co -- lum -- bus
	when he said the world was round. __
	They All Laughed when Ed -- i -- son re -- cord -- ed sound. __

%% part "A"
	They All Laughed at Wil -- bur and his broth -- er,
	when they said that man could fly. __
	They told Mar -- co -- ni wire -- less was a pho -- ney;
	it's the same old cry.

%% part "B"
	They laughed at me __ want -- ing you, __
	said I was reach -- ing for the moon.
	But oh, __ you came through __
	now they'll have to change their tune.

%% part "A"
	They all said we nev -- er could be hap -- py,
	they laughed at us and how!
	But ho, ho, ho!
	Who's got the last laugh now? __

%% part "Volta"
	He, he, he!
	Let's at the past laugh,
	Ha, ha, ha!
	Who's got the last laugh now? __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	They All Laughed at Rock -- e -- fel -- ler Cen -- ter,
	now they're fight -- ing to get in. __
	They All Laughed at Whit -- ney and his cot -- ton gin. __

%% part "A"
	They All Laughed at Ful -- ton and his steam -- boat,
	Her -- shey and his choc' -- late bar. __
	Ford and his Liz -- zie kept the laugh -- ers bus -- y;
	that's how peo -- ple are.

%% part "B"
	They laughed at me __ want -- ing you, __
	said it would be hel -- lo, good -- bye.
	But oh, __ you came through __
	now they're eat -- ing hum -- ble pie.

%% part "A"
	They all said we'd nev -- er get to -- geth -- er;
	dar -- ling, let's take a bow.
	For ho, ho, ho!
	Who's got the last laugh
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

