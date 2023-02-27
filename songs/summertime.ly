

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
% title: Summertime
% style: Jazz
% composer: George Gershwin
% poet: DuBose Heyward
% piece: Slowly
% copyright: 1935 by Gershwin Publishing Corporation
% copyrightextra: Copyright Renewed. Assigned to Chappell & Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 2615b7ec-a26f-11df-b010-0019d11e5a41
% structure: AB
% location: rbk2:323,jfb:370,ja54:4
% idyoutuberemark1: Janis!
% idyoutube1: mzNEgcqWDG4
% idyoutuberemark2: Ella Fitzgerald with Louis
% idyoutube2: MIDOEsQL7lA
% lyricsurl: http://www.stlyrics.com/songs/g/georgegershwin8836/summertime299720.html
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
	      \underline \sans "Summertime"
	      \fontsize #1 \lower #1  "- DuBose Heyward / George Gershwin"
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

  \tocItem \markup "Summertime / George Gershwin, DuBose Heyward"


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

	\partial 2 s2 |

	\myMark "A"
	\startPart
	a:m6 e:7/b | a:m6/c e:7/b | a:m6 e:7/b | a:m6/c e4:7/b a:m6 | \myEndLine
	d2:m f | f2.:maj7 dis4:dim | e2 b:7 | e e8:m6 e4.:7.5- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	a2:m6 e:7/b | a:m6/c e:7/b | a:m6 e:7/b | a:m d:7 | \myEndLine
	c a:m | d d:m7/g | a1:m | a2:m a:m7+ | a:m6 a:m7+ | d:9 e:5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	a2.:m6 e4:7/b | a2:m6/c e:7/b | a:m6 e:7/b | a:m6/c e4:7/b a:m6 | \myEndLine
	d2:m f | f2.:maj dis4:dim | e2 b:7 | e e4:m6 e:7.5- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	a2:m6 e:7/b | a:m6/c e:7/b | a:m6 e:7/b | a:m d:7 | \myEndLine
	c a:m | d d:m7/g | a1:m | d2 f | c f:9 | bes e:13.11 | a1:m | \myEndLine
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
	\tempo "Moderato" 4 = 108
	\time 2/2
	\key a \minor

	\partial 2 e'4 c |

%% part "A"
	e1~ | e8 r d8. c16 d8. e16 c4 | a2 e~ | e4 r e' c |
	d8 d4.~ d2 | r4 c8. a16 c8. a16 c4 | b1~ | b2 r8 e4 c8 |

%% part "B"
	e8 e4 e8~ e2 | r4 d8. c16 d8. e16 c4 | a2 e~ | e r4 e |
	g e8 g a4 c | e8 d4. c2 | a1~ | a1~ | a4 r4 r2 | r \tuplet 3/2 { e'4 e c } |

%% part "A"
	e4 e2. | r8. e16 d8. c16 d8. e16 c4 | a2 e~ | e e'4 c |
	d8 d4 d8~ d2 | r4 c8. a16 c8. a16 c4 | b1~ | b2 r8 e e c |

%% part "B"
	e8 e4.~ e2 | r4 d8. c16 d8. e16 c4 | a2 e~ | e r4 e |
	g e8 g a4 c | e8 d4. c2 | a1~ | a1~ | a1~ | a1~ | a2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	








\lyricmode {

%% part "A"
	Sum -- mer -- time __
	an' the liv -- in' is eas -- y, __
	fish are jump -- in'; __
	an' the cot -- ton is high. __

%% part "B"
	Oh, yo' dad -- dy's rich, __
	an' yo' ma is good look -- in', __
	so hush, lit -- tle ba -- by, __
	don' __ _ yo' cry. __

%% part "A"
	One of these morn -- in's __
	you goin' to rise __ _ up sing -- in', __
	then you'll spread yo' wings __
	an' you'll take __ _ the sky. __

%% part "B"
	But 'til that morn -- in' __
	there's a -- noth -- in' can harm you __
	with dad -- dy an' mam -- my
	stand -- _ in' by. __
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
		\smaller \smaller { "Copyright © 1935 by Gershwin Publishing Corporation" }
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

