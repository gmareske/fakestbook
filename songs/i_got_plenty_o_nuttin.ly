

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
% title: I Got Plenty O' Nuttin'
% style: Jazz
% subtitle: From 'Porgy and Bess'
% composer: George Gershwin
% poet: Ira Gershwin, DuBose Heyward
% piece: Moderately
% copyright: 1935 by Gershwin Publishing Corporation
% copyrightextra: Copyright Renewed, Assigned to Chappell & Co., Inc.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 51444eaa-da7f-11e3-a1f7-4b82298467da
% structure: AABA
% location: jfb:157
% idyoutuberemark1: Sinatra in the classic version
% idyoutube1: DvLLQAAr8zQ
% idyoutuberemark2: Classic Gershwin rendition
% idyoutube2: upqf0ts2dSE
% lyricsurl: http://www.stlyrics.com/lyrics/porgy&bess/igotplentyonuttin.htm
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
	      \underline \sans "I Got Plenty O' Nuttin'"
	      \fontsize #1 \lower #1  "- Ira Gershwin, DuBose Heyward / George Gershwin"
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

  \tocItem \markup "I Got Plenty O' Nuttin' / George Gershwin, Ira Gershwin, DuBose Heyward"


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
		g2 a:m7 | b:m a:m7 | g a:m7 | g b:7 | e a | \myEndLine
		e a | e a4 e | cis1 | cis2 d | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g2 a:m7 | b:m a:m7 | g a:m7 | g b:7 | e a | \myEndLine
		e a | e a4 e | cis1 | cis2 d | g2 a:m7 | b:m g | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		b:m e:m/b | b:m6 e:m/b | b:m e:m/b | b:m6 e:m/b | \myEndLine
		b:m e:m/b | b:m6 e:m/b | b:m a:m7 | d a:m7 | d1:7 | d:7 | \myEndLine
		\endPart

		\myMark "A'"
		\startPart
		g2 a:m7 | b:m a:m7 | g a:m7 | g b:7 | \myEndLine
		e a | e a | e a4 e | cis1 | cis | \myEndLine
		cis2 d | g a:m7 | g d:m7 | g a:m7 | \myEndLine
		g c |
	} \alternative {
		{
			g1 | g | b2:m a:m7 | \myEndLineVoltaNotLast
		}
		{
			g4 c2:7 d4:7 | g1 | \myEndLineVoltaLast
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

	\partial 4 d4 |

	\repeat volta 2 {

	%% part "A"
		g4 g a g8 a | b8 d4.~ d4 r8 d, | b'4 b8 a~ a b a4 | g2 fis | e4 e cis4. r8 |
		e4 e cis4. cis8 | e4 e cis e | eis1~ | eis2 fis |

	%% part "A"
		g4 g a g8 a | b8 d4.~ d4 r | b4 b8 a~ a b a4 | g2 fis | e4 e cis8 cis4 cis8 |
		e8 e4 e8 cis cis cis cis | e4 e cis e | eis1~ | eis2 fis | g1~ | g2 r |

	%% part "B"
		fis4 d8 b d4 b8 d | fis2 e8 fis e b | d1~ | d4 r e8 fis e b |
		d4 b8 d fis2~ | fis e8 fis e b | d4 b8 d e4 c8 e | fis4 d8 fis g4 e8 g | a4 fis8 a c2~ | c r4 d, |

	%% part "A"
		g g a g8 a | b8 d4.~ d4 r8 d, | b'4 b8 a~ a b a4 | g2 fis |
		e4 e cis4. r8 | e4 e cis4. cis8 | e e4 e8 cis4 e | eis1 | \xNote { \tuplet 3/2 { b'4 b b } g e } |
		r2 fis4 fis | g1~ | g4 r f f | g1~ |
		g4 r e4 e |
	} \alternative {
		{
			g1~ | g2 r | r1 |
		}
		{
			g1~ | g4 r r2 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Oh, I Got Plen -- ty O' Nut -- tin', __ an' nut -- tin's plen -- ty fo' me. I got no car,
	got no mule, I got no mis -- er -- y. __ De

%% part "A"
	folks wid plen -- ty o' plen -- ty __ got a lock __ on de door, _
	faid some -- bod -- y's a go -- in' to rob 'em while dey's out a mak -- in' more. __
	What for? __

%% part "B"
	I got no lock on de door, (dat's no way to be.) __ Day kin steal de rug from de floor, __ dat's o -- keh wid
	me, 'cause de things dat I prize, like de stars in de skies, all are free. __

%% part "A"
	Oh, I Got Plen -- ty O' Nut -- tin; __
	an' nut -- tin's plen -- ty fo' me.
	I got a gal, got my song, got heb ben the whole day long.
	No use com -- plain -- in'! Got my gal, __ got my Lawd, __
	go my song. __
	song. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
	got the sun, got the moon, _ got the deep blue sea. __ De folks wid plen -- ty o' plen -- ty __
	got to pray __ all de day, _ __ Seems wid plen -- ty you sure got to wor -- ry how to
	keep the debbel a -- way, __ a -- way. __ I ain't a -- fret -- tin' 'bout
	hell 'til de time ar -- rive. __ Nev -- er wor -- ry long as I'm well, __ nev -- er one to strive to be good, to be bad, what the hell?
	I is glad I's a live. __
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
		\smaller \smaller { "Copyright © 1935 by Gershwin Publishing Corporation" }
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

