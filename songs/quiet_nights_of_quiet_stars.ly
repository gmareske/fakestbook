

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
% title: Quiet Nights Of Quiet Stars
% style: Jazz
% subtitle: Corcovado
% composer: Antonio Carlos Jobim
% poet: Antonio Carlos Jobim, Gene Lees
% piece: Moderately Slow
% copyright: 1962, 1964 by Antonio Carlos Jobim, Brazil
% copyrightextra: Sole Selling Agent DUCHESS MUSIC CORPORATION (MCA), New York, NY for all English Speaking Countries
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f8098732-7367-11e5-bffe-3860779cb560
% structure: AA'
% location: jfb:309
% idyoutuberemark1: Jobim in Portugese
% idyoutube1: 6_F7MX1hGtU
% idyoutuberemark2: Frank Sinatra with Jobim
% idyoutube2: mCI65SsOhb8
% lyricsurl: http://www.azlyrics.com/lyrics/franksinatra/quietnightsofquietstarscorcovado.html
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
	      \underline \sans "Quiet Nights Of Quiet Stars"
	      \fontsize #1 \lower #1  "- Antonio Carlos Jobim, Gene Lees / Antonio Carlos Jobim"
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

  \tocItem \markup "Quiet Nights Of Quiet Stars / Antonio Carlos Jobim, Antonio Carlos Jobim, Gene Lees"


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
	d1*2:9 | aes:dim7 | \myEndLine
	g1:m7 | c8*5:7 ges4.:7 | f2:dim7 f:maj7 | f1:maj7 | \myEndLine
	f:m7 | bes:13 | e:m7 | a:7.5+ | \myEndLine
	d:9 | d2.:9 d4:m7 | d2.:m7 aes4:dim7 | aes1:dim7 | \myEndLine
	\endPart

	\myMark "A'"
	\startPart
	d1*2:9 | aes:dim7 | \myEndLine
	g1:m7 | c8*5:7 ges4.:7 | f2:dim7 f:maj7 | f1:maj7 | \myEndLine
	f:m7 | bes:7.5- | e:m7 | a:m7 | \myEndLine
	d:m7 | g:7.9- | e:m7 | a:7.5+ | \myEndLine
	d:m7 | g:9 | c1*2:6 | \myEndLine
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
	\time 2/2
	\key c \major

%% part "A"
	r8 e4 d8 e d4 e8~ | e d e2. | r8 e4 d8 e d4 e8~ | e d e2. |
	r8 d4 c8 d c4 d8~ | d c4 f8~ f e4 e8~ | e4. d8~ d2~ | d2. r4 |
	r8 g4 f8 g f4 g8~ | g f4 g8~ g2 | r8 f4 e8 f e4 f8~ | f e f2. |
	r8 e4 d8 e d4 e8~ | e d4 e8~ e d f4~ | f8 e4 f8 e4 f~| f8 e4 d8~ d c4. |

%% part "A'"
	r8 e4 d8 e d4 e8~ | e d4 e8~ e2 | r8 e4 d8 e d4 e8~ | e d e4~ e8 g4 d8~ |
	d2 \tuplet 3/2 { c4 d c } | d8 c4 f8~ f e4 e8~ | e4. d8~ d2~ | d2. r4 |
	r8 c'4 bes8~ bes aes g f | e4. d8~ d2 | r4 r8 b' a g f e | d4. c8~ c2 |
	r4 r8 a' g f e d | c b4 c8~ c d4 g8~ | g1~ | g2 r |
	r4 r8 a g f e d | c b4 c8~ c d4 c8~ | c1~ | c2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Qui -- et Nights Of Qui -- et Stars,
	qui -- et chords from my __ gui -- tar
	float -- ing on the si -- lence that __ sur -- rounds __ us. __
	Qui -- et thoughts and qui -- et dreas, __
	qui -- et walks by qui -- et streams,
	and a win -- dow look -- ing on __ the moun -- tains and the sea. __
	How love -- ly!

%% part "A'"
	This is where I want __ to be. __
	Here, with you so close __ to me __
	un -- til __ the fin -- al flick -- er of __ life's em -- ber. __
	I, who __ was lost and lone -- ly, __
	be -- liev -- ing life was on -- ly __
	a bit -- ter tra -- gic joke, have found __ with you, __
	the mean -- ing of ex -- ist -- ence.
	Oh, __ my love. __
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
		\smaller \smaller { "Copyright © 1962, 1964 by Antonio Carlos Jobim, Brazil" }
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

