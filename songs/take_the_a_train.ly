

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
% title: Take the 'A' Train
% style: Jazz
% composer: Billy Strayhorn, The Delta Rhythm Boys
% poet: Joya Sherrill
% piece: Easy Swing
% copyright: 1941 and 1943 by Tempo Music, Inc. Copyright Renewed 1969
% copyrightextra: International Copyright Secured Made in U.S.A. All Rights Reserved
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 8e4bc138-da80-11e3-a96b-032e06c074f3
% structure: AABA
% location: jfb:379
% idyoutuberemark1: Original version by Duke
% idyoutube1: cb2w2m1JmCY
% idyoutuberemark2: Mingus and Dolphy together?!?
% idyoutube2: YuCbQCnoIzI
% lyricsurl: http://www.metrolyrics.com/take-the-a-train-lyrics-ella-fitzgerald.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Easy Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Take the 'A' Train"
	      \fontsize #1 \lower #1  "- Joya Sherrill / Billy Strayhorn, The Delta Rhythm Boys"
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

  \tocItem \markup "Take the 'A' Train / Billy Strayhorn, The Delta Rhythm Boys, Joya Sherrill"


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
		c1*2:6 | d:7.5- | \myEndLine
		d1:m7 | g:7 | c |
	} \alternative {
		{
			c | \myEndLineVoltaNotLast
		}
		{
			c | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f1*4:maj7 | \myEndLine
	d1*2:7 | d2:m9 g:9 | g:9 des:9 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c1*2:6 | d:7.5- | \myEndLine
	d1:m7 | g:7 | c8 c:7/e f4 aes2:7/ges | c4/g g:9 c:6 c:maj7.9 | \myEndLine
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
	\key c \major

%% part "A"
	\repeat volta 2 {
		g'1~ | g8 e'4. g,4 c | e8 aes,~ aes2.~ | aes1 |
		a! | a8 bes b e g, fis f cis' | c! e,~ e2.~ |
	} \alternative {
		{
			e1 |
		}
		{
			e2\repeatTie r |
		}
	}

%% part "B"
	a8 c~ c2. | e8 f,4. a4 c | e8 a,4.~ a2~ | a1 |
	a8 c~ c2. | e4 fis, a c | e8 a,~ a2.~ | a2 aes |

%% part "A"
	g1~ | g8 e'4. g,4 c | e8 aes,~ aes2.~ | aes1 |
	a! | a8 bes b e g, fis f cis' | c! e,~ e2.~ | e2 r2 |
%% These small cue notes were in the fake book, but splitting the voices
%% breaks the tie from the previous measure. Maybe some can find a fix?
%%<< { \teeny g8 a_\markup { \italic "(Instrumental)" } b c~ c4 c, } \\ { \normalsize e2 r2 } >> |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	You __ must take the "\"A\"" Train __ To go to Sug -- ar Hill way up in Har -- lem. __
	_

%% part "B"
	Hur -- ry, __ get on now it's com -- ing. __ Lis -- ten __ to those rails a --
	thrum -- ming. __ All

%% part "A"
	'board! __ Get on the "\"A\"" Train, __ soon
	you will be on Sug -- ar Hill in Har -- lem. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	If __ you miss the "\"A\"" Train, __ You'll find you've missed the quick -- est way to Har -- lem. __
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
		\smaller \smaller { "Copyright © 1941 and 1943 by Tempo Music, Inc. Copyright Renewed 1969" }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

