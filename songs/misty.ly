

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
% title: Misty
% style: Jazz
% composer: Errol Garner
% poet: Johnny Burke
% piece: Slowly, with a smooth swing
% copyright: 1955. Renewed 1983 Marke Music, Limerick Music, Reganesque
% copyrightextra: Music and Time-Co Music
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: bb21d126-f210-11e0-9b64-0019d11e5a41
% structure: AABA
% location: rbk1:296,jfb:252
% idyoutuberemark1: great version by Ella Fitzgerald
% idyoutube1: mQouJdvB80U
% idyoutuberemark2: Garner himself! what an amazing piano...
% idyoutube2: nAaZzQWk8V4
% lyricsurl: http://www.lyrics007.com/Ella%20Fitzgerald%20Lyrics/Misty%20Lyrics.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly, with a smooth swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Misty"
	      \fontsize #1 \lower #1  "- Johnny Burke / Errol Garner"
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

  \tocItem \markup "Misty / Errol Garner, Johnny Burke"


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
		ees1:maj7 | bes2:m7 ees:7.9- | aes1:maj7 | aes2:m7 des:9 | \myEndLine
		ees:maj7 c:m7 | f:m7 bes:7.9- |
	} \alternative {
		{
			g:7 c:7 | f:7 bes4:7 bes8:9 e:7.9+ | \myEndLineVoltaNotLast
		}
		{
			ees2 aes4:m7 des:9 | ees2.:6 a4:dim7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	bes1:m7 | bes2:m7 ees:7.9- | aes:maj7 aes:6 | aes1:6 | \myEndLine
	a2:m7 d:7 | c:m7 f:7 | g2:m7 c:7 | f:m7 bes4:7.9- bes8:9 e:7.9+ | \myEndLine
	\endPart

	\myMark "Coda"
	\startPart
	ees4 ges:9 f:m7 e:maj7 | ees1:maj7 |
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
	\tempo "Andante" 4 = 88
	\time 2/2
	\key ees \major

	\partial 4 bes'8 g |

%% part "A"
	\repeat volta 2 {
		d2. bes8 c | des c' c c c bes g ees | c2 \tuplet 3/2 { r8 g aes c ees g } | bes bes bes aes bes4. aes8 |
		g4~ \tuplet 3/2 { g8 aes bes } ees,4~ \tuplet 3/2 { ees8 f g } | aes8 c,4 c8 \tuplet 3/2 { d4^\markup {To Coda \musicglyph #"scripts.coda"} ees f } |
	} \alternative {
		{ g1~ | g2 r4 bes8 g | }
		{ ees1 | \tuplet 3/2 { r4 ees f } \tuplet 3/2 { g bes c } | }
	}

%% part "B"
	des8 des des des~ des2~ | des4 des8 ees \tuplet 3/2 { fes4 ees des } | c8 c c c~ c2 | \tuplet 3/2 { r4 ees, f aes bes c } |
	d8 d d c d2~ | d8 d d c \tuplet 3/2 { f4 d c } | bes1~ | bes2 r4 bes8^\markup {D.S. al Coda} g |

%% part "Coda"
	ees1~ | ees
}



 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	








\lyricmode {
	Look at me,
	I'm as help -- les as a kit -- ten up a tree
	and I feel like I'm cling -- ing to a cloud,
	I can't __ un -- der -- stand, __
	I get Mist -- y just hold -- ing your hand. __

	Walk my
}



}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	









\lyricmode {
	Walk my way and a thou -- sand vi -- o -- lins be -- gin to play,
	or it might be the sound of your hel -- lo,
	that mu -- sic I hear, __
	I get Mist -- y the mo -- ment you're _ _ _ near.

	You can say that you're lead -- ing me on, __
	but it's just what I want you to do. __
	Don't you no -- tice how hope -- less -- ly I'm lost, __
	that's why I'm fol -- low -- ing you. __

	On my love.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	










\lyricmode {
	On my own, would I wan -- der through this won -- der -- land a -- lone,
	nev -- er know -- ing my right foot from my left,
	my hat __ from my glove, __
	I'm too Mist -- y and too much in
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
		\smaller \smaller { "Copyright © 1955. Renewed 1983 Marke Music, Limerick Music, Reganesque" }
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

