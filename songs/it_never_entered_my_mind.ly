

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
% title: It Never Entered My Mind
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Moderately Slow
% copyright: 1940 by Chappell & Co., Inc. Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 3ff5de34-5e09-11e5-83ea-3860779cb560
% structure: AABA
% location: jfb:187
% idyoutuberemark1: Sarah Vaughan in a great orchestral version
% idyoutube1: u37lgz7b3lQ
% idyoutuberemark2: I like this version by Miles. So cool.
% idyoutube2: -Np8PJDGq_A
% lyricsurl: http://www.azlyrics.com/lyrics/franksinatra/itneverenteredmymind.html
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
	      \underline \sans "It Never Entered My Mind"
	      \fontsize #1 \lower #1  "- Lorenz Hart / Richard Rodgers"
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

  \tocItem \markup "It Never Entered My Mind / Richard Rodgers, Lorenz Hart"


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
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | f a:m | g1:m7 | g2:m ees4:7/g c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | f a:m | g1:m7 | a2:m c:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f2 f4:6 g:m7 | g2.:m7 c4:7 | f2:maj7 f4:6 g:m7 | g2.:m7 c4:7 | \myEndLine
		f2:6 c:7 | f b:dim7 | c:7 bes4 a:m7 | bes2 a4:m c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 a:m | f a:m | f a:m | f a:m | \myEndLine
		f a:m | a:m7.5- d:7 | g:m7 c4:7.11 c:7 | f4 f2.:maj7 | \myEndLine
		g2.:m7 c4:7 |
		\endPart

	} \alternative {
		{
			f2:6 g4:7 c:7 | \myEndLineVoltaNotLast
		}
		{
			f1:6 | \myEndLineVoltaLast
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
	\tempo "Andante" 4 = 76
	\time 4/4
	\key f \major

	\repeat volta 2 {

	%% part "A"
		a'4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | f e8 c~ c2 | r8. d16[ f8. g16] a8 f a g~ | g2. r4 |

	%% part "A"
		a4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | f e8 c~ c2 | r8. d16[ f8. g16] a8 f a c~ | c2. r4 |

	%% part "B"
		d2 f,4 f~ | f2. e4 | g2 f4 f~ | f2 r4 e |
		a8 a4. bes8 bes4. | c8 c4. d8 d4. | e2 c4 c~ | c2. r4 |

	%% part "A"
		a4 a a a | r8. a16[ g8. f16] e4 e | r8. f16[ e8. d16] c4 c | f e8 c~ c2 |
		r8. f16[ e8. d16] c4 c | c'4 bes8 a~ a2 | r8. bes16[ a8. g16] f4 e | a e8 e~ e2 |
		r8. d16[ f8. g16] a8 f g f~ |
	} \alternative {
		{
			f2 r |
		}
		{
			f2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Once I laughed when
	I heard you say -- ing
	that I'd be play -- ing
	sol -- i -- taire, __
	un -- eas -- y in my
	eas -- y chair, __
	It Nev -- er En -- tered My Mind. __

%% part "A"
	Once you told me
	I was mis -- tak -- en
	that I'd a -- wak -- en
	with the sun __
	and or -- der or -- ange juice for one, __
	It Nev -- er En -- tered My Mind. __

%% part "B"
	You have what __
	I lack my -- self, __
	and now I e -- ven have to scratch
	my back my -- self. __

%% part "A"
	Once you warned me
	that if you scorned me
	I'd sing the maid -- en's
	pray'r a -- gain, __
	and with that you were there a -- gain __
	to get in -- to my hair a -- gain __
	It Nev -- er En -- tered My Mind. __
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
		\smaller \smaller { "Copyright © 1940 by Chappell & Co., Inc. Copyright Renewed" }
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

