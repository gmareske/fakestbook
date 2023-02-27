

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
% title: My Favorite Things
% style: Jazz
% subtitle: From 'The Sound Of Music'
% composer: Richard Rodgers
% poet: Oscar Hammerstein II
% piece: Lively, with spirit
% copyright: 1959 by Richard Rodgers and Oscar Hammerstein II. Copyright Renewed.
% copyrightextra: Williamson Music Co., owner of publication and allied right throughout the Westen Hemisphere and Japan. All Rights Administered by Chappell & Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 02c22208-a26f-11df-98fd-0019d11e5a41
% structure: AABA
% location: rbk1:306,jfb:260
% idyoutuberemark1: Sarah Vaughan
% idyoutube1: dusavln6Cjw
% idyoutuberemark2: The great version by Coltrane
% idyoutube2: 0I6xkVRWzCY
% lyricsurl: http://www.stlyrics.com/songs/s/soundofmusic9841/myfavouritethings323514.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Lively, with spirit"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "My Favorite Things"
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

  \tocItem \markup "My Favorite Things / Richard Rodgers, Oscar Hammerstein II"


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
		e2.:m7 | fis:m7 | e:m7 | fis:m7 | \myEndLine
		c2.*4:maj7 | \myEndLine
		a2.:m7 | d:7 | g:maj7 | c:maj7 | \myEndLine
		g:maj7 | c:maj7 | fis:m7.5- | b:7 | \myEndLine
	}
%% removed in order to show the repeat sign...
%%\endPart

	\myMark "A"
	\startPart
	e2.:maj7 | fis:m7 | e:maj7 | fis:m7 | \myEndLine
	a2.*4:maj7 | \myEndLine
	a2.:m7 | d:7 | g:maj7 | c:maj7 | \myEndLine
	g:maj7 | c:maj7 | fis:m7.5- | b:7.9- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	e2.*2:m7 | fis2.:m7.5- | b:7 | \myEndLine
	e2.*2:m7 | c:maj7 | \myEndLine
	c:maj7 | a:7 | \myEndLine
	g2.:maj7 | c2.*2:maj7 | d2.:7 | \myEndLine
	g:6 | c:maj7 | g:6 | c:maj7 | \myEndLine
	g:maj7 | c:maj7 | fis:m7.5- | b:7 | \myEndLine
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
	\key g \major

%% part "A"
	\repeat volta 2 {
		\repeat unfold 2 { e4 b' b | fis e e | b e e | fis e2 | }
		e4 b' a | e fis d | d a' g | c,2. |
		b4 c d | e fis g | a b a | dis,2. |
	}

%% part "A"
	\repeat unfold 2 { e4 b' b | fis e e | b e e | fis e2 | }
	e4 b' a | e fis d | d a' g | c,2. |
	b4 c d | e fis g | a ais b | c2. |

%% part "B"
	r4 b b | b2 e,4 | r a a | a2 dis,4 |
	r g g | g2 b,4 | e2.~ | e2 e4 |
	e fis e | fis e fis | g a g |
	a2 g4 | b c b | c2.~ | c | b |
	g~ | g~ | g~ | g |
	r | r | r | r |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	Rain -- drops on ros -- es and whisk -- ers on kit -- tens,
	bright cop -- per ket -- tles and warm wool -- en mit -- tens;
	brown pa -- per pack -- ag -- es tied up with string,
	these are a few of My Fa -- vor -- ite Things.

%% part "A"
	Girls in white dress -- es with blue sat -- in sash -- es,
	snow -- flakes that stay on my node and eye -- lash -- es,
	sil -- ver white win -- ters that melt in to spring.
	These are a few of My Fa -- vor -- ite Things.

%% part "B"
	When the dog bites, when the bee stings,
	when I'm feel -- ing sad, __
	I sim -- ply re -- mem -- ber My Fa -- vor -- ite things
	and then I don't feel so bad. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	cream col -- ored po -- nies and crip ap -- ple strud -- els,
	door -- bells and sleigh -- bell and schnitz -- el with noo -- dles;
	wild geese that fly with the moon on the wings,
	these are a few of My Fa -- vor -- ite Things.
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
		\smaller \smaller { "Copyright © 1959 by Richard Rodgers and Oscar Hammerstein II. Copyright Renewed." }
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

