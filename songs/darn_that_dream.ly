

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
% title: Darn That Dream
% style: Jazz
% composer: Jimmy Van Heusen
% poet: Eddie DeLange
% piece: Slowly
% copyright: 1939 Bregman, Vocco and Conn, Inc. New York
% copyrightextra: Copyright Renewed, Assigned and Copyright 1968 by Scarsdale Music. Corporation and Van Heusen Music Corp., New York
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f0a5804c-eb83-11e0-aeb1-0019d11e5a41
% structure: AABA
% location: rbk1:103,jfb:94
% idyoutuberemark1: Theloneous Monk...:)
% idyoutube1: GsI4oNKGJPg
% idyoutuberemark2: Dexter Gordon, one of the great performances of this song...
% idyoutube2: upZ00qxXrBg
% lyricsurl: http://www.lyricsfreak.com/b/billie+holiday/darn+that+dream_20018018.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Darn That Dream"
	      \fontsize #1 \lower #1  "- Eddie DeLange / Jimmy Van Heusen"
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

  \tocItem \markup "Darn That Dream / Jimmy Van Heusen, Eddie DeLange"


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
	g2 bes4:m7 ees:7 | a2:m7 b:7.5- | e4:m7 e:m/d cis:m7 c:maj7 | b2:m7.5- e:7.9- | \myEndLine
	a:m7 f:7 | b:m7 bes:dim7 | a:m7 d:7 | b4:m7 e:7 a:m7 d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 bes4:m7 ees:7 | a2:m7 b:7.5- | e4:m7 e:m/d cis:m7 c:maj7 | b2:m7.5- e:7.9- | \myEndLine
	a:m7 f:7 | b:m7 bes:dim7 | a:m7 d:7.9- | g2 bes:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	ees2:6 c:m7 | f:m7 bes:7 | ees:maj7 c:7.9- | f:m7 bes4:7.9 bes:7.9- | \myEndLine
	ees2:6 c:m7 | g4:m7 g:m7/f e2:m7.5- | a:m7 d:7 | ees:7.9 d:7.9 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 bes4:m7 ees:7 | a2:m7 b:7.5- | e4:m7 e:m/d cis:m7 c:maj7 | b2:m7.5- e:7.9- | \myEndLine
	a:m7 f:7 | b:m7 bes:dim7 | a:m7 d:7.9- | g1 | \myEndLine
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
	\tempo "Adagio" 4 = 72
	\time 4/4
	\key g \major

%% part "A"
	d4 g ees4. ees8 | e4 a f4. fis8 | g4 b gis8 a b c | d4 e b2 |
	b4 d c8 b a g | fis4 a e ees | d2 fis | d r |

%% part "A"
	d4 g ees4. ees8 | e4 a f4. fis8 | g4 b gis8 a b c | d4 e b2 |
	b4 d c8 b a g | fis4 a e ees | d2 b' | g2. r4 |

%% part "B"
	r8 g4 g8 f4 ees | c' c8 bes~ bes4. c8 | d ees d des~ des4 ces | bes aes8 f~ f2 |
	r8 g4 g8 f4 ees | g a8 bes~ bes4. c8 | d d d d~ d4 d, | bes'2 b |

%% part "A"
	d,4 g ees4. ees8 | e4 a f4. fis8 | g4 b gis8 a b c | d4 e b2 |
	b4 d c8 b a g | fis4 a e ees | d2 b' | g2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Darn That Dream I dream each night,
	You say you love me and you hold me tight,
	but when I a -- wake you're out of sight.
	Oh, Darn That Dream.

%% part "A"
	Darn your lips and darn your eyes,
	they lift me high a -- bove the moon -- lit skies,
	then I tum -- ble out of Par -- a -- dise.
	Oh, Darn That Dream.

%% part "B"
	Darn that one- -- track mind of mine, __
	it can't un -- der -- stand __ that you don't care. __
	Just to change the mood I'm in, __
	I'd wel -- come a nice __ old night -- mare.

%% part "A"
	Darn That Dream and bless it too,
	with -- out that dream I nev -- er would have you.
	But it haunts me and it won't come true,
	Oh, Darn That Dream.
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
		\smaller \smaller { "Copyright © 1939 Bregman, Vocco and Conn, Inc. New York" }
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

