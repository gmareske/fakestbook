

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
% title: I'll Remember April
% style: Jazz
% composer: Don Raye, Gene De Paul, Pat Johnson
% poet: Don Raye, Gene De Paul, Pat Johnson
% piece: Moderately
% copyright: 1941, 1942 by MCA Music Publishing, A Division of MCA, Inc.
% copyrightextra: Renewed 1969, 1970 Pic Corp.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 84142766-dba0-11e3-9e62-bb6aa0505531
% structure: ABA
% location: jfb:168-169
% idyoutuberemark1: Caterina Valente & Chet Baker
% idyoutube1: 2YZ4FGEGom8
% idyoutuberemark2: Sonny Stitt blasts away...
% idyoutube2: VHbwr4ieI2U
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/ill+remember+april_20055817.html
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
	      \underline \sans "I'll Remember April"
	      \fontsize #1 \lower #1  "- Don Raye, Gene De Paul, Pat Johnson"
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

  \tocItem \markup "I'll Remember April / Don Raye, Gene De Paul, Pat Johnson"


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
	g1 | g:6 | c1*2:9 | \myEndLine
	f:maj7 | e1:m7 | a:7 | \myEndLine
	a:m7.5- | d2:7 d:7/c | b1:m7 | e:9 | \myEndLine
	a:m7 | d:7.9- | g:maj7 | g:6 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c:m7 | f:7 | bes:maj7 | g:m7 | \myEndLine
	c:m7 | f:7 | bes:maj7 | bes:6 | \myEndLine
	a:m11 | d:7 | g:maj7 | g:6 | \myEndLine
	fis:m11 | b:9 | e2:maj7 e:6 | a:m7 d:7 | \myEndLine
	\endPart

%%\myMark "Coda"
	\mark \markup { \musicglyph #"scripts.coda" }
	\startPart
	a1:m7.5- | d2:7 d:7/c | b1:m7 | e:9 | \myEndLine
	a:m7 | d:7.9- | g2 a:m7 | aes:maj7 g:6.9 | \myEndLine
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

%% part "A"
	r4 b' c d | c b a g | a2. g4 | fis e2. |
	r4 a bes c | bes a g f! | g8 a g2.~ | g2 r4 g^\markup {To Coda \musicglyph #"scripts.coda"} |
	a2. a4 | a a b4. c8 | d4 d2.~ | d4 r e4. d8 |
	b4 c d c~ | c2 b4 ais | b1~ | b2 r4 b |

%% part "B"
	g g g2~ | g4 a bes c | d2. c4 | bes4 g2 f!4 |
	g g g2~ | g4 a bes c | d d d2~ | d4 d \tuplet 3/2 { d d d } |
	d2. d4 | e c d4. b8 | a4 b2.~ | b4 b d c |
	b b2.~ | b4 r \tuplet 3/2 { b a gis } | b1~ | b^\markup {D.C. al Coda} |

%% part "Coda"
	a4. a8 a2~ | a4 a \tuplet 3/2 { a b c } | d d2.~ | d4 r e4. d8 |
	b4 c d c~ | c2 b4 b | g1~ | g2 r |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	This love -- ly day will leng -- then in -- to ev -- 'ning,
	we'll sign good -- bye to all we've ev -- er had. __
	A -- lone, where we have walked to -- geth -- er, __
	I'll Re -- mem -- ber A -- pril __ and be glad. __

%% part "B"
	I'll be con -- tent __ you loved me once in A -- pril.
	your lips were warm __ and love and Spring were new. __
	But I'm not a -- fraid of Au -- tumn and her sor -- row, __
	for I'll Re -- mem -- ber __ A -- pril and you. __

%% part "Coda"
	won't for -- get, __ but I won't be lone -- ly, __
	I'll Re -- mem -- ber A -- pril, __ and I'll smile. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	The fire will dwin -- dle in -- to glow -- ing ash -- es,
	for flames and love live such a lit -- tle while. __
	I
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
		\smaller \smaller { "Copyright © 1941, 1942 by MCA Music Publishing, A Division of MCA, Inc." }
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

