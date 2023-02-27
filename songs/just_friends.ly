

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
% title: Just Friends
% style: Jazz
% composer: John Klenner
% poet: Sam M. Lewis
% piece: Medium Swing
% copyright: 1931 (renewed 1959) EMI Robbins Catalog, Inc.
% copyrightextra: Used by by Persmission of CPP/Belwin, Inc., Miami, FL. International Copyright Secured.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 2f6e2740-f29e-11e0-9ede-0019d11e5a41
% structure: AB
% location: rbk1:249,nrbk3:193
% idyoutuberemark1: the fabulous Chet Baker
% idyoutube1: 88CqlgFAJ-k
% idyoutuberemark2: fast and furious Trane
% idyoutube2: 9W_XQCLD_I0
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Just-Friends-lyrics-Frank-Sinatra/FA2BFD6A414238734825691F000AC7E7
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Just Friends"
	      \fontsize #1 \lower #1  "- Sam M. Lewis / John Klenner"
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

  \tocItem \markup "Just Friends / John Klenner, Sam M. Lewis"


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

	\partial 4 g4:7 |

	\myMark "A"
	\startPart
	c1*2:maj7 | c1:m7 | f:7 | \myEndLine
	g1*2:maj7 | bes1:m7 | ees:7 | \myEndLine
	a:m7 | d:7 | b:m7 | e:m7 | \myEndLine
	a1*2:7 | a1:m7 | d2:7 des:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1*2:maj7 | c1:m7 | f:7 | \myEndLine
	g1*2:maj7 | bes1:m7 | ees:7 | \myEndLine
	a:m7 | d:7 | b:m7 | e:m7 | \myEndLine
	a:7 | a2:m7 d:7 | g1:6 | \LPC d2:m7 \RPC g:7 | \myEndLine
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
	\tempo "Allegro" 4 = 168
	\time 4/4
	\key g \major

	\partial 4 b'4 |

%% part "A"
	b1~ | b2 \tuplet 3/2 { a4 b a } | ees1~ | ees2 a |
	a1~ | a4 a \tuplet 3/2 { g a g } | des1~ | des2. g4 |
	g4. e8 g4. e8 | fis2. fis4 | fis4. d8 fis4. d8 | e4 fis g b |
	e2 b~ | b4 e, \tuplet 3/2 { e fis g } | b2 a~ | a b |

%% part "B"
	b1~ | b2 \tuplet 3/2 { a4 b a } | ees1~ | ees2 a |
	a1~ | a4 a \tuplet 3/2 { g a g } | des1~ | des2. g4 |
	g4. e8 g4. e8 | fis2. a4 | a4. fis8 a4. fis8 | g4 a b d |
	e2 e, | d' b | g1 | r2 b |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	Just friends, __ lov -- ers no more __
	Just friends, __ but not like be -- fore. __
	To think of what we've been and not to kiss a -- gain seems like
	pre -- tend -- ing __ it is -- n't the end -- ing. __

%% part "B"
	Two friends __ drift -- ing a -- part, __
	Two friends __ but one brok -- en heart. __
	We loved, we laughed, we cried and sud -- den -- ly love died.
	The sto -- ry ends and we're just friends.
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
		\smaller \smaller { "Copyright © 1931 (renewed 1959) EMI Robbins Catalog, Inc." }
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

