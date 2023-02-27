

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
% title: Blue Bossa
% style: Jazz
% composer: Kenny Dorham
% poet: Joan Cartwright
% piece: Bossa Nova
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f7fdc5e0-db41-11e0-a31c-0019d11e5a41
% structure: A
% location: rbk1:51
% remark: Play last 4 bars twice more to end
% idyoutube1: EhQfGODnvww
% idyoutube2: -0mNSP1452o
% idyoutube3: 6sr7BXinJMw
% idyoutube4: lKEEVECH58Q
% lyricsurl: http://fyicomminc.bizland.com/music/lyrics/bluebossa.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Bossa Nova"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Blue Bossa"
	      \fontsize #1 \lower #1  "- Joan Cartwright / Kenny Dorham"
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

  \tocItem \markup "Blue Bossa / Kenny Dorham, Joan Cartwright"


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

	\repeat volta 3 {

		\myMark "A"
		\startPart
		c1*2:m7 | f:m7 | \myEndLine
		d1:m7.5- | g:7 | c1*2:m7 | \myEndLine
		ees1:m7 | aes:7 | des1*2:maj | \myEndLine
		d1:m7.5- | g:7 |
	} \alternative {
		{
			c1:m7 | d2:m7.5- g:7 | \myEndLineVoltaNotLast
		}
		{
			c1:m7 | c:m7 | \myEndLineVoltaLast
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
	\tempo "Allegro" 4 = 150
	\time 4/4
	\key c \minor

	\partial 4 g'4 |

%% part "A"
	\repeat volta 3 {
		g'4. f8 ees d4 c8~ | c2. bes4 | aes2 g'4. f8~ | f1 |
		f4. ees8 d c4 bes8~ | bes2. aes4 | g2 f'4. ees8~ | ees1 |
		ees4. des8 c bes4 aes8~ | aes2. ges4 | ges f8 bes~ bes f aes4~ | aes1 |
		aes4 g8 bes~ bes2 | aes4 g8 bes~ bes4. aes8 |
	} \alternative
	{
		{
			g1~ | g2. g4 |
		}
		{
			g1~ | g2. r4 |
		}
	}
}



 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the internet adjusted for the real book.
\lyricmode {

%% part "A"
	A place in -- side my heart __
	Is where you live __
	Mem -- ories of our start __
	The love you give __

	Days when we're a -- lone __
	And you are in my arms __
	The_blue -- ness of the_true -- ness of our love __
}



}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ Nights of moon -- lit skies __
	A gen -- tle kiss __
	Some -- thing in your eyes __
	Fills me with bliss __

	Hold me in your arms __
	And then I will re -- call __
	The_blue -- ness of the_true -- ness of our love __

	The
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	






\lyricmode {

%% part "A"
	The thought of how we met __
	Still lin -- gers on __
	How can I for -- get __
	That mag -- ic dawn __

	All the warm de -- sire __
	The fi -- re in your touch __
	The_blue -- ness of the_true -- ness of our love __
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

