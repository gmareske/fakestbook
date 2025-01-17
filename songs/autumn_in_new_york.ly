

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
% title: Autumn In New York
% style: Jazz
% composer: Vernon Duke
% poet: Vernon Duke
% piece: Brightly
% copyright: 1934 by Kay Duke Music.
% copyrightextra: Copyright Renewed. All Rights Administered by BMG Songs, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 9677b522-7463-11e1-a57d-bbc28ffad085
% structure: ABAC
% structureremark: I determined it was ABAC although the part A does not repeat exactly. It is good enough
% location: rbk1:33,hlrjb:34
% idyoutuberemark1: Virtuoso Sonny Stitt
% idyoutube1: Nn11v07Db3s
% idyoutuberemark2: The classic Billie Holiday...
% idyoutube2: cl_e7UW-bz8
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Autumn-in-New-York-lyrics-Frank-Sinatra/C779DB117665DFD94825691F00067AD0
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
	      \fontsize #1 \lower #1 \rotate #7 "Brightly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Autumn In New York"
	      \fontsize #1 \lower #1  "- Vernon Duke"
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

  \tocItem \markup "Autumn In New York / Vernon Duke"


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
	g2:m7 a:m7 | bes:6 c:7 | f:maj7 g:m7 | a:m7 d:7.9- | \myEndLine
	g:m7 a:m7 | bes:6 c:7 | a1:m7.5- | d:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	g:m7 | bes2:m7 ees:7 | aes1.:maj7 d2:m7.5- | \myEndLine
	c1:m7 | d2:m7 g:7.9- | c1:maj7 | c2.:7 c4:7.5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2:m7 a:m7 | bes:6 c:7 | f:maj7 g:m7 | a:m7 d4:7.9- des:7 | \myEndLine
	c2:m7 d:m7 | ees:m6 f:7 | bes:m6 aes:m7 | ges1:7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	f2:m7 c:7 | f:m aes:7 | des:maj7 aes:7 | des2.:maj7 aes4:7 | \myEndLine
	g2:m7 a:m7 | bes:m6 c:7.9- | f1*2:m | \myEndLine
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
	\tempo "Andante" 4 = 76
	\time 4/4
	\key f \major

%% part "A"
	a'8 g f d c2 | r8 d f bes d d4 c8 | d2 a | r1 |
	a8 g f d c2 | r8 d f bes d d4 c8 | d2 a | r1 |

%% part "B"
	c8 c4 a8 a4. f8 | aes8 aes4 f8 ees4. des8 | ees b4 c8 ees2~ | ees f |
	g8 d4 ees8 g2~ | g b | g1~ | g2. gis4 |

%% part "A"
	a8 g! f d c2 | r8 d f bes d d4 c8 | d2 a | r1 |
	d8 c bes g f2~ | f8 ges bes c des ees4 c8 | des1~ | des2. r4 |

%% part "C"
	c8 aes4 c8 e4 e | c2. bes4 | aes8 f4 aes8 c4 c | aes2. aes4 |
	a!8 g f d c2~ | c8 bes des f aes bes4 g8 | f1 | r1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% lyrics are taken from the fake book and adjusted for the real one
\lyricmode {

%% part "A"
	Au -- tumn In New York,
	why does it seem so in -- vit -- ing?
	Au -- tumn In New York,
	it spells the thrill of first night -- ing.

%% part "B"
	Glit -- ter -- ing crowds and shim -- mer -- ing clouds
	in can -- yons of steel, __
	they're mak -- ing me feel __
	I'm home. __

%% part "A"
	It's Au -- tumn In New York,
	that brings the pro -- mise of new love;
	Au -- tumn In New York __
	is of -- ten min -- gled with pain. __

%% part "C"
	Dream -- ers with emp -- ty hands
	may sigh for ex -- ot -- ic lands;
	It's Au -- tumn In New York, __
	it's good to live it a -- gain.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Au -- tumn In New York,
	the gleam -- ing roof -- tops at sun -- down.
	Au -- tumn In New York,
	it lifts you up when you're run -- down.

%% part "B"
	Jad -- ed rou -- es and gay di -- vor -- cees
	who lunch at the Ritz __
	will tell you that "\"it's" __
	di -- "vine!\"" __

%% part "A"
	This Au -- tumn In New York,
	trans -- forms the slums in -- to May -- fair;
	Au -- tumn In New York, __
	you'll need no cas -- tles in Spain. __

%% part "C"
	Lov -- ers that bless the dark
	on bench -- es in Cen -- tral Park
	greet Au -- tumn In New York, __
	it's good to live it a -- gain.
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
		\smaller \smaller { "Copyright © 1934 by Kay Duke Music." }
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

