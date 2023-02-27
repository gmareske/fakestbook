

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
% title: It Might As Well Be Spring
% style: Jazz
% subtitle: From 'State Fair'
% composer: Richard Rodgers
% poet: Oscar Hammerstein II
% piece: Moderately
% copyright: 1945 by Williamson Music Co.
% copyrightextra: Copyright Renewed. All Rights Administered by Chappell & Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f4f39800-a26e-11df-b97a-0019d11e5a41
% structure: AABA
% location: jfb:189
% idyoutuberemark1: Astrud Gilberto in the classic version
% idyoutube1: 86MwK3TT9og
% idyoutuberemark2: Bill Evans the master himself
% idyoutube2: kUvIdEWiQms
% lyricsurl: http://www.lyricsondemand.com/soundtracks/s/statefairlyrics/itmightaswellbespringlyrics.html
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
	      \underline \sans "It Might As Well Be Spring"
	      \fontsize #1 \lower #1  "- Oscar Hammerstein II / Richard Rodgers"
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

  \tocItem \markup "It Might As Well Be Spring / Richard Rodgers, Oscar Hammerstein II"


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
	g2:6 c:9 | b4:m7 e:7 a:m7 d:7 | g1 | d2:m7 g:7 | \myEndLine
	c cis4:m7 fis:7 | b2:m7 e:7 | a:m7 d4:7 d:7/c | b:m7 e:7 a:m7 d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2:6 c:9 | b4:m7 e:7 a:m7 d:7 | g1 | d2:m7 g:7 | \myEndLine
	c cis4:m7 fis:7 | b2:m7 e:7 | a:m7 d:7 | g d4:m7 g:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1 | d:m7 | d2:m7 g:7 | c1 | \myEndLine
	a2:m7 a:m7/g | fis:7.5- b:7 | e:m7 a:7 | a:m7/d d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2:6 c:9 | b4:m7 e:7 a:m7 d:7 | g1 | d2:m7 g:7 | \myEndLine
	c cis4:m7 fis:7 | g2:6.9/b e:m7 | a:m7 d4:9 d:7/c | b2:7 e:7 | \myEndLine
	a1:7 | c2:m7 f:7 | b:m7 e4:m7 e:m7/d | a2:7/cis c4:m7 f:9 | \myEndLine
	b2:m7 e:m7 | a:m7 d:7 | g c:6 | g1 | \myEndLine
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
	\key g \major

	\partial 4 d8 d |

%% part "A"
	e d d d e d d g | e4 d2 d8 d | d8. b'16 d8. g,16 b8. d,16 g8. d16 | f2. f4 |
	e4 dis8 e fis!4. g8 | g4 d2 d8 d | c'4 c c fis, | b2. d,8 d |

%% part "A"
	e d d d e d d g | e4 d2 d8 d | d8. b'16 d8. g,16 b8. d,16 g8. d16 | f2. f4 |
	e4 dis8 e fis!4. g8 | g4 d2 d8 d | d'4 d d fis, | g1 |

%% part "B"
	c4 c c8 d c b | a4 f f2 | a8 f f f f4 e | g1 |
	c4 c c8 d c b | a4 fis! fis g8 a | b4 b cis cis | d2. d,8 d |

%% part "A"
	e d d d e d d g | e4 d2 d8 d | d8. b'16 d8. g,16 b8. d,16 g8. d16 | f2. f4 |
	e8 e dis e fis! fis eis fis | g4 g2 fis8 g | a4 a a fis | b2. b8 bis |
	cis4 a a a8 b | c a a a a4 a8 ais | b4 g g b | a2. g4 |
	d~ d8. b'16 g2 | d4~ d8. c'16 a2 | g1~ | g4 r r2 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

	I'm as

%% part "A"
	rest -- less as a wil -- low in a wind -- storm,
	I'm as jump -- y as a pup -- pet on a string.
	I'd say that I had spring fev -- er,
	but I know it is -- n't spring. I am

%% part "A"
	star -- ry eyed and vague -- ly dis -- con -- tent -- ed,
	like a night -- in -- gale with -- out a song to sing.
	Oh, why should I have spring fev -- er
	when it is -- n't e -- ven spring?

%% part "B"
	I keep wish -- ing I were some -- where else
	walk -- ing down a strange new street;
	hear -- ing words that I have nev -- er heard
	from a man I've yet to meet, I'm as

%% part "A"
	bu -- sy as a spi -- der spinn -- ing day -- dreams
	I'm as gid -- dy as a ba -- by on a swing.
	I have -- n't seen a cro -- cus or a rose -- bud,
	or a rob -- in on the wing.
	But I feel so gay in a mel -- an -- cho -- ly way
	that It Might As Well Be Spring.
	It Might __ _ As Well __ _ Be Spring! __
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
		\smaller \smaller { "Copyright © 1945 by Williamson Music Co." }
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

