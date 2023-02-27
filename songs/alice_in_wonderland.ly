

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
% title: Alice In Wonderland
% style: Jazz
% composer: Sammy Fain
% poet: Bob Hilliard
% piece: Med.
% copyright: 1951 Walt Disney Music Company
% copyrightextra: Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 718a13e0-023a-11e1-924f-0019d11e5a41
% structure: AABA
% location: rbk1:12
% idyoutuberemark1: An amzing version by Oscar Peterson
% idyoutube1: TSNPzm_wYLY
% idyoutuberemark2: Bill Evans in the amazing Village Vanguard version
% idyoutube2: bSXRvgFea-0
% lyricsurl: http://www.stlyrics.com/lyrics/aliceinwonderland/aliceinwonderland.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Med."
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Alice In Wonderland"
	      \fontsize #1 \lower #1  "- Bob Hilliard / Sammy Fain"
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

  \tocItem \markup "Alice In Wonderland / Sammy Fain, Bob Hilliard"


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
	\repeat volta 2 {
		d2.:m7 | g:7 | c:maj7 | f:maj7 | \myEndLine
		b:m7.5- | e:7 | a:m7 | ees:7 | \myEndLine
		d:m7 | g:7 | e:m7 | a:m7 | \myEndLine
		d:m7 | g:7 |
	} \alternative {
		{
		%% the chords a:m7 d:7 are a mistake in the real book
			e4.:m7 a:7 | d:m7 g:7 | \myEndLineVoltaNotLast
		}
		{
			c2.:maj7 | a:m7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	d2.:7 | g:7 | e:m7 | a:m7 | \myEndLine
	d:m7 | g:7 | c:maj7 | f:maj7 | \myEndLine
	fis:m7.5- | b:7.9- | e:m7 | a:7 | \myEndLine
	d2:m7 a4:7 | d2:m7 a4:7 | d2:m7 aes4:7 | g2.:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	d2.:m7 | g:7 | c:maj7 | f:maj7 | \myEndLine
	b:m7.5- | e:7 | a:m7 | ees:7 | \myEndLine
	d:m7 | g:7 | e:m7 | a:m7 | \myEndLine
	d:m7 | g:7 | c2.*2:maj7 | \myEndLine
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
	\time 3/4
	\key c \major

%% part "A"
	\repeat volta 2 {
		g'2. | g'2 f4 | e2 c4 | g2. |
		d'4 e f | e2 d4 | e2 c4 | g2. |
		d'4 e f | e2 d4 | e2 g4 | c2 a4 |
		g2 f4 | e2 d4 |
	} \alternative {
		{ g2.~ | g | }
		{ c,2.~ | c2 cis4 | }
	}

%% part "B"
	d2. | a' | g | c, |
	d4 e f | g2 a4 | b2 g4 | e2. |
	fis | c' | b2 g4 | e2. |
	a2 g4 | f2 e4 | d2 c4 | b2. |

%% part "A"
	g2. | g'2 f4 | e2 c4 | g2. |
	d'4 e f | e2 d4 | e2 c4 | g2. |
	d'4 e f | e2 d4 | e2 g4 | c2 a4 |
	g2 f4 | e2 d4 | c2.~ | c |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% This is taken from the inetnet and adjusted for this tune
\lyricmode {

%% part "A"
	A -- lice In Won -- der -- land
	How do you get to won -- der -- land
	O -- ver the hill or un -- der -- land
	or just be -- hind the tree __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	When clouds go rol -- ling by
	They roll a -- way and leave the sky
	Where is the land be -- yond the eye
	That peo -- ple can -- not _ see __

%% part "B"
	And where do stars go
	Where is the sil -- ver cre -- scent moon
	They must be some -- where
	in the sun -- ny af -- ter -- noon

%% part "A"
	A -- lice In Won -- der -- land
	Where is the path to won -- der -- land
	O -- ver the hill or here or there
	I real -- ly won -- der where __
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
		\smaller \smaller { "Copyright © 1951 Walt Disney Music Company" }
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

