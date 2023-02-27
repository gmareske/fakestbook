

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
% title: Dancing on the Ceiling
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Swing
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 2f047dae-e00d-11e3-98f7-03db92494d62
% structure: AABA
% location: rbk1:102
% idyoutuberemark1: Frank in a cannonical version
% idyoutube1: C406rXlRT6c
% idyoutuberemark2: Ella in a great version
% idyoutube2: qzBld5uHTiw
% lyricsurl: http://www.lorenzhart.org/ceilingsng.htm
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
	      \underline \sans "Dancing on the Ceiling"
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

  \tocItem \markup "Dancing on the Ceiling / Richard Rodgers, Lorenz Hart"


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
		f1:maj7 | f:7.5+ | bes2:maj7 b:dim | a:m7 aes:dim | \myEndLine
		g:m7 c:7 | a:m7.5- d:7.9- | g:m7 c:7 | f1:6 | \myEndLine
	}
	\endPart

	\myMark "B"
	\startPart
	g:m7 | c:7 | f:maj7 | a2:m7.5- d:7 | \myEndLine
	g1:m7 | c:7 | a2:m7.5- d:7 | g:m7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f1:maj7 | f:7.5+ | bes2:maj7 b:dim | a:m7 aes:dim | \myEndLine
	g1:m7 | c:7 | f | \mark \markup { \italic { Fine } } \LPC g2:m7 \RPC c:7 | \myEndLine
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
	\key f \major

%% part "A"
	\repeat volta 2 {
		r4 c d e | f g a2 | g4. f8 e4 d | c' c b!2 |
		bes!2. c4 | a1 | g2. a4 | f1 |
	}

%% part "B"
	r4 g g g | g8 g g a f4 g | a r c c~ | c1 |
	r4 g g g | g8 g a a f4 g | a r c c~ | c1 |

%% part "A"
	r4 c, d e | f g a2 | g4. f8 e4 d | c' c b!2 |
	bes!2 d~ | d e, | f1~ | f4 r r2 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	He dan -- ces o -- ver -- head
	on the ceil -- ing near my bed
	in my sight
	through the night

%% part "B"
	I whis -- per "\"go" a -- way my lo -- ver it's not "fair\"" __
	but I'm so grate -- ful to dis -- co -- ver he's till there __

%% part "A"
	lo -- ve my ceil -- ing more
	since it is a dan -- cing floor
	just for __ my love __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	I tried to hide in vain
	un -- der -- neath my coun -- ter -- pane
	there's my love up a -- bove
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

