

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
% title: Lullaby of birdland
% style: Jazz
% composer: George Shearing
% poet: George David Weiss
% piece: Relaxed Swing
% copyright: 1952, 1953, 1954 Adam R. Levy & Father Ent., Inc., New York NY. Copyrights Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f9668406-a26e-11df-8542-0019d11e5a41
% structure: AABA
% location: rbk1:277,jfb:234
% idyoutuberemark1: The famous Ella version
% idyoutube1: UY8zK4R9oE8
% idyoutuberemark2: George Shearing himself! Amazing!
% idyoutube2: LKXvMbAKAmY
% lyricsurl: http://www.bluesforpeace.com/lyrics/lullaby-birdland.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Relaxed Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Lullaby of birdland"
	      \fontsize #1 \lower #1  "- George David Weiss / George Shearing"
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

  \tocItem \markup "Lullaby of birdland / George Shearing, George David Weiss"


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
	f2:m6 d:m7.5- | g:7.9- c:7.9- | f:m7 des:maj7 | bes:m7 ees:7 | \myEndLine
	c:m7 f:m7 | bes:m7 ees:7.9- | aes:maj7 des:9 | g:m7.5- c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2:m6 d:m7.5- | g:7.9- c:7.9- | f:m7 des:maj7 | bes:m7 ees:9 | \myEndLine
	c:m7 f:m7 | bes:m7 ees:7.9- | aes:maj7 ees:7 | aes1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c2:m7.5- f:7.9- | bes1:m7 | bes2:m7 ees:7.9- | aes1:maj7 | \myEndLine
	c2:m7.5- f:7.9- | bes1:m7 | ees:7.9- | aes2:maj7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f2:m6 d:m7.5- | g:7.9- c:7.9- | f:m7 des:maj7 | bes:m7 ees:9 | \myEndLine
		c:m7 f:m7 | bes:m7 ees:7.9- |
	} \alternative {
		{
			aes:maj7 des:9 | g:m7.5- c:7 | \myEndLineVoltaNotLast
		}
		{
			aes1:maj7 | bes2:m7 ees:9 | aes1:maj7 | bes2:m7 a4:maj7 aes:maj7.9 | \myEndLineVoltaLast
		}
	} \myEndLine
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
	\time 4/4
	\key f \minor

%% part "A"
	c'8 c bes aes g f4. | d4 f8 e~ e2 | c4 g'8 f~ f2 | des4 c'8 bes~ bes2 |
	ees8 ees des c bes aes4. | f8 c' bes e,~ e c' bes ees,~ | ees2~ ees8 bes' aes des,~ | des aes' g c,~ c2 |

%% part "A"
	c'8 c bes aes g f4. | d4 f8 e~ e2 | c4 g'8 f~ f2 | des4 c'8 bes~ bes2 |
	ees8 ees des c bes aes4. | f8 c' bes e,~ e c' bes ees,~ | ees2~ ees8 ees g aes~ | aes1 |

%% part "B"
	c4 des8 d ees c ees des~ | des bes4.~ bes2 | bes4 b8 c des bes des c~ | c1 |
	c4 des8 d ees c ees des~ | des bes4.~ bes2 | bes4 b8 c des bes des c~ | c des c bes~ bes2 |

%% part "A"
	\repeat volta 2 {
		c8 c bes aes g f4. | d4 f8 e~ e2 | c4 g'8 f~ f2 | des4 c'8 bes~ bes2 |
		ees8 ees des c bes aes4. | f8 c' bes e,~ e c' bes ees,~ |
	} \alternative {
		{
			ees2~ ees8 bes' aes des,~ | des aes' g c,~ c r r4 |
		}
		{
			ees2~\repeatTie ees8 e f des'~ | des2 c4 c8 aes~ | aes1~ | aes2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Lul -- la -- by Of Bird -- land
	that's what I __
	al -- ways hear __
	when you sigh. __
	Nev -- er in my word -- land could there be ways __ to re -- veal __ __ in a phrase __ how I feel! __

%% part "A"
	Have you ev -- er heard two tur -- tle doves __
	bill and coo __
	when they love? __
	That's the kind of mag -- ic mu -- sic we make __ with our lips __ __ when we kiss! __

%% part "B"
	And tere's a weep -- y old wil -- low; __
	he real -- ly knows how to cry! __
	That's how I'd cry in my pil -- low __
	if you should tell me fare -- well __ and good -- bye! __

%% part "A"
	Lul -- la -- by Of Bird -- land whis -- per low, __
	kiss me sweet __
	and we'll go __
	fly -- in' high in Bird -- land, high in the sky __ up a -- bove __ __ all be -- cause __ we're in love! __

	_ all be -- cause __ we're in love. __ __
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
		\smaller \smaller { "Copyright © 1952, 1953, 1954 Adam R. Levy & Father Ent., Inc., New York NY. Copyrights Renewed." }
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

