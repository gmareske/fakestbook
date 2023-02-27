

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
% title: Strangers In The Night
% style: Jazz
% composer: Bert Kaempfert
% poet: Charles Singleton, Eddie Snyder
% piece: Moderately Slow
% copyright: 1966 by Champion Music Corporation and Screen Gems-EMI
% copyrightextra: Sole Selling Agent MCA MUSIC PUBLISHING, A Division of MCA Inc., New York, NY
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 2af3e35c-e252-11e3-abb7-932771d3c7a0
% structure: AA'BA
% location: jfb:364-365
% idyoutuberemark1: Cannonical version by Frank
% idyoutube1: hlSbSKNk9f0
% idyoutuberemark2: Another version by Frank
% idyoutube2: nHuko5BCFzA
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/strangers+in+the+night_20056148.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately Slow"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Strangers In The Night"
	      \fontsize #1 \lower #1  "- Charles Singleton, Eddie Snyder / Bert Kaempfert"
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

  \tocItem \markup "Strangers In The Night / Bert Kaempfert, Charles Singleton, Eddie Snyder"


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
	f1*4:maj7 | \myEndLine
	f1:maj7 | f2/a aes:dim7 | g:m7 ees/g | g:m6 ees/g | \myEndLine
	\endPart

	\myMark "A'"
	\startPart
	g1*4:m7 | \myEndLine
	g1.:m7 g4:m7/c c:7.9- | f1*2:maj7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	a1*2:m7.5- | d:7.9- | \myEndLine
	g1:m7 | bes:m6 | f2 d:m7 | g:m7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f1*3:maj7 | f2:maj7 f4/a aes:dim7 | \myEndLine
	g1:m | c2:7.9- g4:m7/c c:7.9- | f1*2:6 | \myEndLine
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
	\key f \major

%% part "A"
	f8 g g f g2~ | g8 f g a g4 f | e8 f f e f2~ | f8 e f g f4 e |
	d8 e e d e2~ | e8 d e f e4 d | bes'1~ | bes2. r4 |

%% part "A'"
	g8 a a g a2~ | a8 g a bes a4 g | f8 g g f g2~ | g8 f g a g4 f |
	e8 f f e f2~ | f8 e f g f4 e | c'1~ | c |

%% part "B"
	c8 bes bes a a2~ | a8 bes bes c c bes bes a | c bes bes a a2~ | a8 bes bes c c bes bes a |
	bes a a g g2 | bes8 a a g g2 | bes8 a a g g f e f | a g g f f e d e |

%% part "A"
	f8 g g f g2~ | g8 f g a g4 f | e8 f f e f2~ | f8 e f g f4 e |
	d8 e e d e2~ | e8 e f g f4 e | f1~ | f2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Stran -- gers In The Night __ ex -- chang -- ing glanc -- es
	won -- d'ring in the night __ what were the chanc -- es
	we'd be shar -- ing love __ be -- fore the night was through. __

%% part "A'"
	Some -- thing in your eyes __ was so in -- vit -- ing,
	some -- thing in your smile __ was so ex -- cit -- ing,
	some -- thing in my heart __ told me I must have you. __

%% part "B"
	Stran -- gers In The Night, __ two lone -- ly peo -- ple we were
	Stran -- gers In The Night __ up tp the mo -- ment when we
	said our first hel -- lo. Lit -- tle did we know
	love was just a glance a -- way, a warm em -- brac -- ing dance a -- way and

%% part "A"
	ev -- er since that night __ we've been to -- geth -- er.
	Lov -- ers at first sight, __ in love for -- ev -- er.
	It turned out so right __ for Strang -- ers In The Night. __
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
		\smaller \smaller { "Copyright © 1966 by Champion Music Corporation and Screen Gems-EMI" }
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

