

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
% title: Caravan
% style: Jazz
% composer: Duke Ellington, Juan Tizol
% poet: Irving Mills
% piece: Bright Latin and Swing
% copyright: 1937 (renewed 1965) Mills Music c/o EMI Music Publishing
% copyrightextra: Used by Permission of CPP/Belwin, Inc., Miami, FL ALL Right Reserved
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 160af5b0-ebe1-11e2-937c-bb8193c610fc
% structure: AABA
% location: nrbk3:73
% idyoutuberemark1: A great performance by Ella
% idyoutube1: s4VjltPMfds
% idyoutuberemark2: Jazz messengers with an intro by Blakey
% idyoutube2: eP12RhmBIRw
% lyricsurl: http://www.metrolyrics.com/caravan-lyrics-ella-fitzgerald.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Bright Latin and Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Caravan"
	      \fontsize #1 \lower #1  "- Irving Mills / Duke Ellington, Juan Tizol"
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

  \tocItem \markup "Caravan / Duke Ellington, Juan Tizol, Irving Mills"


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
%%\mark "Bright Latin"
	\startPart
	\repeat volta 2 {
		c1*4:7 | \myEndLine
		c1*4:7 | \myEndLine
		c1*4:7 | \myEndLine
		f1*4:m6 | \myEndLine
	}
%% so I would see the repeat marks
%%\endPart

	\myMark "B"
%%\mark "Swing"
	\startPart
	f1*4:9 | \myEndLine
	bes1*4:9 | \myEndLine
	ees1*4:7 | \myEndLine
	aes1*2:6 | c1*2:7 | \myEndLine
	\endPart

	\myMark "A"
%%\mark "Bright Latin"
	\startPart
	c1*4:7 | \myEndLine
	c1*4:7 | \myEndLine
	c1*4:7 | \myEndLine
	f1*4:m6 | \myEndLine
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
	\tempo "Prestissimo" 4 = 220
	\time 2/2
	\key f \minor

%% part "A"
	\repeat volta 2 {
		c'1~ | c~ | c4 des c g | bes c e g, |
		bes1~ | bes~ | bes4 c des c | des c b g |
		bes!1~ | bes~ | bes4 c b bes | a aes g ges |
		f1~ | f~ | f | r |
	}

%% part "B"
	f'1 | d2 c4. g8~ | g1~ | g4. f8 e4-. f-. |
	c'1 | g2 f4. c8~ | c1 | r2 bes'8 c des d |
	ees1 | c2 bes4. f8~ | f1~ | f2 g4-. ees-. |
	c'4. aes8~ aes2~ | aes bes4-. aes-. | g2 g4. g8~ | g2 r |

%% part "A"
	c1~ | c~ | c4 des c g | bes c e g, |
	bes1~ | bes~ | bes4 c des c | des c b g |
	bes!1~ | bes~ | bes4 c b bes | a aes g ges |
	f1~ | f~ | f | r |
}




 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	






% these lyrics are from the Ella Firtgerald performance and adjusted for this tune...
\lyricmode {

%% part "A"
	Night __ and stars that shine ab -- ove so bright __
	The ma -- gic of their fa -- ding light __
	That shines u -- pon our Ca -- ra -- van __

%% part "B"
	You are so exciting, __ _ _ _
	This is so inviting __ _ _ _ _
	Res -- ting in my_arms __
	As I thrill to the magic charms __ _ _

%% part "A"
	Of_you be -- side me here, be -- neath the blue __
	My dream of love is com -- ing true __
	With -- in our de -- sert Ca -- ra -- van __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	







\lyricmode {

%% part "A"
	Sleep __ u -- pon my shou -- lder as we creep __
	Ac -- ross the sand so I may keep __
	This mem -- 'ry of our Ca -- ra -- van __
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
		\smaller \smaller { "Copyright © 1937 (renewed 1965) Mills Music c/o EMI Music Publishing" }
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

