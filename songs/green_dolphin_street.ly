

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
% title: Green Dolphin Street
% style: Jazz
% composer: Bronislau Kaper
% poet: Ned Washington
% piece: Latin/Swing
% copyright: 1947 (Renewed 1975) MGM/EMI Feist Catalog, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b93bdc7e-0207-11e1-9e68-0019d11e5a41
% structure: ABAC
% location: rbk1:179,tbk:227,gt:126,nrbk3:273
% idyoutuberemark1: Sarah Vaughan from a radio show
% idyoutube1: vHp0IvAEFMQ
% idyoutuberemark2: The great Coltrane
% idyoutube2: Ny1n5E4IdYY
% lyricsurl: http://www.lyricszoo.com/miles-davis/on-green-dolphin-street-miles-davis-washington-ned/
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
	      \fontsize #1 \lower #1 \rotate #7 "Latin/Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Green Dolphin Street"
	      \fontsize #1 \lower #1  "- Ned Washington / Bronislau Kaper"
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

  \tocItem \markup "Green Dolphin Street / Bronislau Kaper, Ned Washington"


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
		c1*2:maj7 | c:m7 | \myEndLine
		d1:7/c | d2:7/c des/c | c1*2:maj7 | \myEndLine
		\endPart
	} \alternative {
		{

			\myMark "B"
			\startPart
			d1:m7 | g:7 | c1*2:maj7 | \myEndLine
			f1:m7 | bes:7 | ees1.:maj7 \OPC g2:7 | \myEndLineVolta
			\endPart
		}
		{

			\myMark "C"
			\startPart
			d2:m7 d:m/c | b:m7.5- e:7.9- | a:m7 a:m/g | fis:m7.5- b:7 | \myEndLine
			e:m7 a:7 | d:m7 g:7 | c1:maj7 | \LPC d2:m7 \RPC g:7 | \myEndLineVolta
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
	\tempo "Allegro" 4 = 160
	\time 4/4
	\key c \major

%% part "A"
	\repeat volta 2 {
		c'2 c~ | c \tuplet 3/2 { b4 g e } | bes'1~ | bes |
		a2 a~ | a \tuplet 3/2 { aes4 f des } | g1~ | g |
	} \alternative {
		{

		%% part "B"
			r8 g4. d4 e | f g aes bes | g1~ | g |
			r8 bes4. f4 g | aes bes ces des | bes1~ | bes2 b |
		}
		{

		%% part "C"
			r8 g4. d4 e | f g gis e' | d4. c8~ c2 | c,4 d dis b' |
			a4. g8~ g2 | r8 g4. g4 g | g1~ | g |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Lo -- ver, __ one love -- ly day __
	A_love came __ plan -- ning to stay __
	Green Dol -- phin Street sup -- plied the setting __
	The_set -- ting for nights be -- yond for -- getting __ And

	When I re -- call the love I found on
	I'm_gonna kiss_the ground I found on Green Dol -- phin Street __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	through these __ mo -- ments a -- part __
	Love come __ here in my heart __
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
		\smaller \smaller { "Copyright © 1947 (Renewed 1975) MGM/EMI Feist Catalog, Inc." }
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

