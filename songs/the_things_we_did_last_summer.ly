

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
% title: The Things We Did Last Summer
% style: Jazz
% composer: Sammy Chan, Jule Styne
% poet: Sammy Chan, Jule Styne
% piece: Slow Ballad
% copyright: 1946 by Edwin H. Morris & Co., Inc
% copyrightextra: Copyright renewed, assigned to Producers Music Pub. Co., Inc. (Chappell & Co., Inc., administrator) and Cahn Music Co. for the U.S.A. only
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 31587e4e-ab0c-11e1-9dc8-3765c038b685
% structure: AABA
% structureremark: This is not a perfect AABA (last A is a little different) but very very close
% location: jfb:392-393
% idyoutuberemark1: Fats Navaro blowing cool
% idyoutube1: extdr--C3jI
% idyoutuberemark2: The classic Dean Martin version
% idyoutube2: yRWfc-8wLm4
% idyoutuberemark3: The classic Sinatra version
% idyoutube3: f_88dKZHeF4
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/the+things+we+did+last+summer_20055125.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slow Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "The Things We Did Last Summer"
	      \fontsize #1 \lower #1  "- Sammy Chan, Jule Styne"
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

  \tocItem \markup "The Things We Did Last Summer / Sammy Chan, Jule Styne"


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

%% Intro
	\partial 8 s8 |

	\myMark "A"
	\startPart
	g2 e:7 | a:m7 d:7 | g1 | b2:m7.5- e:7.9- | \myEndLine
	a:m7 d:7 | g e:m7 | a:m7 d:7 | g d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 e:7 | a:m7 d:7 | g1 | b2:m7.5- e:7 | \myEndLine
	a:m7 d:7 | g e:m7 | a:m7 d:7 | g1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	d2:m7 g:7 | d:m7 g:7 | c g:7 | c1 | \myEndLine
	e2:m7 a:7 | e:m7 a:7 | d a:7.9- | d1:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 e:7 | a:m7 d:7 | g1 | b2:m7.5- e:7 | \myEndLine
	a:m7 d:7 | b:m7 e:7 | a:m7 d:7 | g1 | \myEndLine
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
	\tempo "Adagio" 4 = 66
	\time 4/4
	\key g \major

%% Intro
	\partial 8 b8 |

%% part "A"
	d8.[ e16 b8. c16] d4. b'8 | b8.[ c16 e,8. g16] a4. b8 | a8.[ g16 d'8. b16] a8.[ g16 fis8. d16] | f!2. r8 e |
	c4 b' b a | d, d2 a'8. g16 | d4 d~ d8. a'16 g8. fis16 | e2. r8 b |

%% part "A"
	d8.[ e16 b8. c16] d4. b'8 | b8.[ c16 e,8. g16] a4. b8 | a8.[ g16 d'8. b16] a8.[ g16 fis8. d16] | f!2. r8 e |
	c4 b' b a | d, d2 a'8. g16 | d4 d~ d8. a'16 g8. fis16 | g2. r8 gis |

%% part "B"
	a8.[ d,16 e8. f!16] g4. gis8 | a8.[ d,16 e8. f!16] g4. dis8 | e8.[ g16 a8. c16] b4 g8 e~ | e2. r8 ais |
	b8.[ e,16 fis8. g16] a4. ais8 | b8.[ e,16 fis8. g16] a4. g8 | fis[ d d d] g4 e8 a~ | a2. r8 b,8 |

%% part "A"
	d8.[ e16 b8. c16] d4. b'8 | b8.[ c16 e,8. g16] a4. b8 | a8.[ g16 d'8. b16] a8.[ g16 fis8. d16] | f!2. r8 e |
	c4 b' b a | d, d2 b'8. b16 | b4 c~ c8. a16 g8. fis16 | g2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	The boat rides we would take,
	the moon -- light on the lake,
	the way we danced and hummed our fav -- 'rite song.
	The Things We Did Last Sum -- mer
	I'll re -- mem -- ber __ all win -- ter long.

%% part "A"
	The mid -- way and the fun,
	the kew -- pie dolls we won,
	the bell I/you rang to prove that I/you was/were strong;
	The Things We Did Last Sum -- mer
	I'll re -- mem -- ber __ all win -- ter long.

%% part "B"
	The ear -- ly morn -- ing hike.
	The rent -- ed tan -- dem bike.
	The lunch -- es that we used to pack: __
	We nev -- er could ex -- plain
	that sud -- den sum -- mer rain.
	The looks we got when we got back. __

%% part "A"
	The leaves be -- gan to fade
	like prom -- is -- es we made.
	How could a love that seemed so right go wrong?
	The Things We Did Last Sum -- mer
	I'll re -- mem -- ber __ all win -- ter long.
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
		\smaller \smaller { "Copyright © 1946 by Edwin H. Morris & Co., Inc" }
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

