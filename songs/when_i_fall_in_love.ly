

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
% title: When I Fall In Love
% style: Jazz
% composer: Victor Young
% poet: Edward Heyman
% piece: Moderately
% copyright: 1952 by Victor Young Publications, Inc. Copyright Renewed, Assigned to Chappell & Co., Inc. and Intersong -USA,Inc.
% copyrightextra: All Rights Administered by Chappell & Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 4e2019f6-f9ef-11e1-b796-174ce4bd9471
% structure: ABAC
% structureremark: You can think of this as AB but its really an ABAC tune
% location: jfb:423,rbk1:461
% idyoutuberemark1: Nat King Cole in an excellent lyric version
% idyoutube1: GfAb0gNPy6s
% idyoutuberemark2: Bill Evans Trio (Wow!)
% idyoutube2: adPpG0Dnxeg
% lyricsurl: http://www.lyricsfreak.com/n/nat+king+cole/when+i+fall+in+love_20098122.html
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
	      \underline \sans "When I Fall In Love"
	      \fontsize #1 \lower #1  "- Edward Heyman / Victor Young"
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

  \tocItem \markup "When I Fall In Love / Victor Young, Edward Heyman"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		ees2 c:7.9-.5+ | f:m7 bes:7 | ees c:7.9-.5+ | f:m7 bes:7 | \myEndLine
		ees1 | des2:9 c:9.5+ | f1:m7 | bes:7.9- | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		ees1 | f2:m7 bes:7 | g1:m7 | c:7 | \myEndLine
		f:m | c:7.9- | f:m7 | bes:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		ees2 c:7.9-.5+ | f:m7 bes:7 | ees c:7.9-.5+ | f:m7 bes:7 | \myEndLine
		ees1 | des2:9 c:9.5+ | f1:m7 | bes:7 | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		ees1 | aes | g2:m7 c:7 | f:m7 des:9 | \myEndLine
		ees c:7.9-.5+ | f:m7 bes:7 |
	} \alternative {
		{
			ees c:m7 | f:m7 bes:7.9- | \myEndLineVoltaNotLast
		}
		{
			ees1*2 | \myEndLineVoltaLast
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
	\tempo "Andante" 4 = 88
	\time 4/4
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		bes4 ees aes g | ees1 | bes4 ees aes g | ees f2. |
		bes,4 ees c' bes | aes2. g4 | f1~ | f2. g8 aes |

	%% part "B"
		bes4. ees,8 ees4 ees | g f2 g8 aes | \tuplet 3/2 { bes4 g aes } \tuplet 3/2 { bes g aes } | bes2. aes8 bes |
		c4. f,8 f4 f | aes g2 aes8 bes | \tuplet 3/2 { c4 aes bes } \tuplet 3/2 { c aes c } | bes1 |

	%% part "A"
		bes,4 ees aes g | ees1 | bes4 ees aes g | ees f2. |
		bes,4 ees c' bes | aes2. g4 | f1~ | f2. g8 aes |

	%% part "C"
		bes4. ees,8 ees4 ees | d' c2 c,4 | c' bes2 c4 | aes2. f4 |
		bes, ees aes g | ees2 f |
	} \alternative {
		{ ees1~ | ees4 r r2 | }
		{ ees1~ | ees2. r4 | }
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	When I Fall In Love
	it will be for -- ev -- er,
	or I'll nev -- er
	fall in love. __

%% part "B"
	in a rest -- less world like this is,
	love is end -- ed be -- fore it's be -- gun,
	and too man -- y moon -- light kiss -- es
	seem to cool in the warmth of the sun.

%% part "A"
	When I give my heart
	it will be com -- plete -- ly
	or I'll nev -- er
	give my heart. __

%% part "C"
	And the mo -- ment I can feel that
	you feel that way too,
	is When I Fall In
	Love with you. __

%% part "Volta"
	you. __
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
		\smaller \smaller { "Copyright © 1952 by Victor Young Publications, Inc. Copyright Renewed, Assigned to Chappell & Co., Inc. and Intersong -USA,Inc." }
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

