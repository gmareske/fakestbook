

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
% title: The Girl From Ipanema
% style: Jazz
% subtitle: Garota De Ipanema
% composer: Antonio Carlos Jobim
% poet: Vincius De Moraes, Norman Gimbel
% piece: Moderate Bossa Nova
% copyright: 1963, Antonio Carlos Jobim and Vincius De Moraes, Brazil
% copyrightextra: Sole Selling Agent Duchess Music Corporation (MCA), New York, NY for all. English speaking countries
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 2c3b337c-a26f-11df-b7d1-0019d11e5a41
% structure: AABA
% location: rbk1:171,jfb:132
% idyoutuberemark1: Tom Jobim and Joan Gilberto
% idyoutube1: DmV0TcTNJ3o
% idyoutuberemark2: Frank!
% idyoutube2: NldPFVKYmiw
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/girl+from+ipanema+the_10121534.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderate Bossa Nova"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "The Girl From Ipanema"
	      \fontsize #1 \lower #1  "- Vincius De Moraes, Norman Gimbel / Antonio Carlos Jobim"
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

  \tocItem \markup "The Girl From Ipanema / Antonio Carlos Jobim, Vincius De Moraes, Norman Gimbel"


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

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f1*2:maj7 | g:7 | \myEndLine
		g1:m7 | ges:7 |
	} \alternative {
		{
			f1:maj7 | ges:7.5- | \myEndLineVoltaNotLast
		}
		{
			f1*2:maj7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	ges1*2:maj7 | ces:7.9 | \myEndLine
	fis:m7 | d:7.9 | \myEndLine
	g:m7 | ees:7.9 | \myEndLine
	a1:m7 | d:7.5-.9- | g:m7 | c:7.5-.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f1*2:maj7 | g:7 | \myEndLine
	g1:m7 | ges:7.5- | f:maj7 | ges:7 | \myEndLine
	f:maj7 | ges:7 | f1*2:maj7 | \myEndLine
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
	\key f \major

%% part "A"
	\repeat volta 2 {
		g'4. e8 e4 d8 g~ | g4 e8 e~ e e d g~ | g4 e e d8 g~ | g g e e~ e e d f~ |
		f d4 d8~ d d c e~ | e c4 c8~ c c bes4 |
	} \alternative {
		{
			r c2.~ | c2 r |
		}
		{
			r4 c2.~ | c2 r |
		}
	}

%% part "B"
	f1~ | \tuplet 3/2 {f4 ges f} \tuplet 3/2 {ees f ees} |
	des4. ees8~ ees2~ | ees2. r8 gis~ |
	gis1~ | \tuplet 3/2 {gis4 a gis} \tuplet 3/2 {fis gis fis} |
	e4. fis8~ fis2~ | fis2. r8 a~ |
	a1~ | \tuplet 3/2 {a4 bes a} \tuplet 3/2 {g a g} |
	f4. g8~ g2~ | g2 \tuplet 3/2 {r4 a bes} |
	\tuplet 3/2 {c c, d} \tuplet 3/2 {e f g} | gis2. a4 |
	\tuplet 3/2 {bes bes, c} \tuplet 3/2 {d e f} | fis2. r4 |

%% part "A"
	g4. e8 e4 d8 g~ | g4 e8 e~ e e d g~ | g4 e e d8 g~ | g g e e~ e e d a'~ |
	a4. f8 f f d c'~ | c4. e,8 \tuplet 3/2 {e4 e d} | e1 | r4 r8 e \tuplet 3/2 {e4 e d} |
	e1 | r4 r8 e \tuplet 3/2 {e4 e d} | e1~ | e2. r4 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Tall and tan and young __ and love -- __ ly,
	the Girl __ From I -- pa -- ne -- __ ma goes walk -- __ ing,
	and when __ she pass -- __ es, each one __ she pass -- __ es goes "\"ah!\"" __

%% part "volta"
	_

%% part "B"
	Oh, __ but I watch her so sad -- ly. __
	How __ can I tell her I love her? __
	Yes, __ I would give my heart glad -- ly, __
	but each day when she walks to the sea,
	she looks straight a -- head not at me.

%% part "A"
	Tall and tan and young __ and love -- __ ly,
	The Girl __ From I -- pa -- ne -- __ ma goes walk -- __ ing,
	and when __ she pass -- es I smile, __
	but she does -- n't see.
	She just does -- n't see.
	No, she does -- n't see. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	When she walks she's like __ a sam -- __ ba
	that swings __ so cool and sways __ _ so gen -- __ tle,
	that when __ she pass -- __ es, each one __ she pass -- __ es goes _ "\"ah!\"" __
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
		\smaller \smaller { "Copyright © 1963, Antonio Carlos Jobim and Vincius De Moraes, Brazil" }
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

