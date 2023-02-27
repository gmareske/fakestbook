

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
% title: Don't Blame Me
% style: Jazz
% composer: Jimmy McHugh
% poet: Dorothy Fields
% piece: Swing
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: d01b9fc8-e077-11e3-8a42-b3378bc59d8a
% structure: AABA
% location: rbk1:125
% idyoutuberemark1: Nat King Cole
% idyoutube1: CkqKURwl9m0
% idyoutuberemark2: Monk in a monked version of the tune
% idyoutube2: KshrtLXBdl8
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Don%27t-Blame-Me-1958-version-lyrics-Nat-King-Cole/C27E88B65E6C613D48256AF1000ED478
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
	      \fontsize #1 \lower #1 \rotate #7 "Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Don't Blame Me"
	      \fontsize #1 \lower #1  "- Dorothy Fields / Jimmy McHugh"
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

  \tocItem \markup "Don't Blame Me / Jimmy McHugh, Dorothy Fields"


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
		c2:6 f4:m7 bes:7 | e2:m7 a:7 | d:m7 g:7 | c:maj7 a:m7 | \myEndLine
		d:m7 g:7 | e:m7.5- a:7 |
	} \alternative {
		{
			d:m7 g:7 | c:6 d4:m7 g:7 | \myEndLineVoltaNotLast
		}
		{
			d2:m7 g:7 | c:6 g4:m7 c:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f1 | e:7 | a1*2:m7 | \myEndLine
	d:7 | d2:m7 aes:7 | g1:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c2 e:m7.5- | a1:7 | d2:m7 g:7 | c:maj7 a:m7 | \myEndLine
	d:m7 g:7 | e:m7.5- a:7 | d:m7 g:7 | c1:6 | \myEndLine
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
	\key c \major

%% part "A"
	\repeat volta 2 {
		g'2 bes | a2. g4 | \tuplet 3/2 { f4 f f } e e | d2. c4 |
		\tuplet 3/2 { f f f } e d | \tuplet 3/2 { g g g } f e |
	} \alternative {
		{
			a2 b | g1 |
		}
		{
			a2 a | c1 |
		}
	}

%% part "B"
	gis4 a gis a | ais b ais b | d2 c4 c~ | c1 |
	d2 c4 c~ | c2 \tuplet 3/2 { d,4 fis b } | a2 aes | g1 |

%% part "A"
	g2 bes | a2. g4 | \tuplet 3/2 { f4 f f } e e | d2. c4 |
	\tuplet 3/2 { f f f } e d | \tuplet 3/2 { g g g } f e | a2 a | c2. r4 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% these are lyrics from the internet adjusted for the real book
\lyricmode {

%% part "A"
	Don't Blame Me
	For fal -- ling in love with you.
	I'm un -- der your spell
	But how can I help it?
	Don't Blame Me.
	_ _ _

%% part "B"
	I can't help it
	If that dog -- gone moon a -- bove __
	Makes me want __
	Some -- one like you to love.

%% part "A"
	Blame your kiss
	As sweet as a kiss can be,
	And blame all your charms
	That melt in my arms,
	But Don't Blame Me.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Can't you see
	When you do the things you do
	If I can't con -- ceal
	The thrill that I'm fee -- ling,
	_ _ _ Don't Blame Me.
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

