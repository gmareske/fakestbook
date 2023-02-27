

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
% title: My Foolish Heart
% style: Jazz
% composer: Victor Young
% poet: Ned Washington
% piece: Slowly & Expressively
% copyright: 1949 by Anne-Rachel Music Corp.
% copyrightextra: Copyright Renewed, Young interest conrolled by Chappel & Co., Inc. Intersong Music, Publisher
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ce9be996-a26e-11df-bf2c-0019d11e5a41
% structure: AB
% location: jfb:260-261
% idyoutube1: a2LFVWBmoiw
% idyoutube2: neXL51g8P-M
% lyricsurl: http://www.oldielyrics.com/lyrics/frank_sinatra/my_foolish_heart.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly & Expressively"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "My Foolish Heart"
	      \fontsize #1 \lower #1  "- Ned Washington / Victor Young"
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

  \tocItem \markup "My Foolish Heart / Victor Young, Ned Washington"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		bes2:maj7 ees:maj7 | d:m7 g:7 | c1:m7 | f:7.9- | \myEndLine
		bes2:maj7 d:7.9+ | g1:m7 | c:m7 | f:7 | \myEndLine
		bes1:maj7 | bes2:7 bes:7.5- | ees1:6 | a2:m7.5- d:7.9- | \myEndLine
		g2:m7 d:7.5+ | g:m7 c:7 | f1:maj7 | f:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		bes2:maj7 ees:maj7 | d:m7 g:7 | c1:m7 | f:7.9- | \myEndLine
		bes2:maj7 d:7.9+ | g1:m7 | c:m7 | a2:m7.5- d:7.5- | \myEndLine
		g1:m7 | ges:7 | bes2:maj7 ees:maj7 | d:m7.5- g:7 | \myEndLine
		c1:m7 | c:m7/f |

	} \alternative {
		{
			bes2 g:m7 | c:m7 f:7 | \myEndLineVoltaNotLast
		}
		{
			bes1*2 | \myEndLineVoltaLast \endPart
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
	\tempo "Moderato" 4 = 108
	\time 4/4
	\key bes \major

	\partial 4 f4 |

	\repeat volta 2 {

	%% part "A"
		f2~ f8 bes, d f | g a g2 g4 | g2~ g8 c, ees g | a2. a4 |
		a2~ a8 d, f a | bes c bes2 bes4 | bes2~ bes8 ees, g bes | c2. bes8 c |
		d4. d16 d d8 d d d | d4 d~ d8 d c bes | c4 c8 c c d c bes | c2. bes8 a |
		bes8 bes4 bes8 bes c a g | bes4 bes2 g8 gis | a4 a8 a a a g f | a2. g4 |

	%% part "B"
		f2~ f8 bes, d f | g a g2 g4 | g2~ g8 c, ees g | a2. a4 |
		a2~ a8 d, f a | bes c bes2 bes4 | bes2~ bes8 ees, g bes | d2. c4 |
		bes4 bes8 bes bes a g a | bes4 bes2 bes8 c | d4 d8 d d d c bes | d,2. g4 |
		bes2~ bes8 ees, g bes | c4 d bes c |
	} \alternative {
		{ bes1~ | bes4 r r f | }
		{ bes1~ | bes1 | }
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	The night __ is like a love -- ly tune,
	be -- ware __ My Fool -- ish Heart!
	How white __ the ev -- er con -- stant moon;
	take care __ My Fool -- ish Heart!

	There's a line be -- tween love and fas -- ci -- na -- tion __
	that's hard to see on an eve -- ning such as this,
	for they both give the ver -- y same sen -- sa -- tion
	when you're lost in the mag -- ic of a kiss.

%% part "B"
	His lips __ are much to close to mine,
	be -- ware __ My Fool -- ish Heart
	but should __ our ea -- ger lips com -- bine
	then let __ the fire _ start

	for this time it is -- n't fas -- ci -- na -- tion,
	or a dream that will fade and fall a -- part,
	it's love __ this time, it's love,
	My Fool -- ish Heart. __ The

	Heart. __
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
		\smaller \smaller { "Copyright © 1949 by Anne-Rachel Music Corp." }
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

