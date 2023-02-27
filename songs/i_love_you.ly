

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
% title: I Love You
% style: Jazz
% composer: Cole Porter
% poet: Cole Porter
% piece: Slowly
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b806ce6c-b405-11e1-9daf-1fdf93f5ba36
% structure: AB
% location: rbk1:215
% idyoutuberemark1: John Coltrane in a great version
% idyoutube1: MzSVV1sI57g
% idyoutuberemark2: Peter Bernstein on guitar
% idyoutube2: C9gT-6K-cgE
% lyricsurl: http://www.lyricstime.com/cole-porter-i-love-you-lyrics.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "I Love You"
	      \fontsize #1 \lower #1  "- Cole Porter"
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

  \tocItem \markup "I Love You / Cole Porter"


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

	\partial 4 s4 |

	\myMark "A"
	\startPart
	g1:m7.5- | c:7.9- | f1*2:maj7 | \myEndLine
	g1:m7 | c:7 | f1*2:maj7 | \myEndLine
	g1:m7.5- | c:7.9- | f:maj7 | b2:m7 e:7 | \myEndLine
	a1:maj7 | b2:m7 e:7 | a1*2:maj7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	g1:m7 | c:7 | f1*2:maj7 | \myEndLine
	a1:m7.5- | d:7.9- | g:7 | c:7 | \myEndLine
	g1:m7.5- | c:7.9- | f:maj7 | a2:m7.5- d:7 | \myEndLine
	g1:7 | g2:m7 c:7 | f1*2:6 | \myEndLine
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
	\tempo "Allegro" 4 = 160
	\time 4/4
	\key f \major

	\partial 4 c'4 |

%% part "A"
	c2 des,~ | des bes'4. a8 | gis4. a8 a2~ | a r4 a |
	a2 bes,~ | bes \tuplet 3/2 { g'4 f e } | d1~ | d2 r4 c' |
	c2 des,~ | des4. bes'8 bes4. a8 | gis4. a8 a2~ | a a4 a |
	b4. cis8 cis2 | d2. e4 | e1~ | e2 r4 e |

%% part "B"
	f4. f8 f2~ | f4 e \tuplet 3/2 { e d c } | e4. e8 e2~ | e4 r c d |
	ees4. ees8 ees2~ | ees4. d8 c4 bes8 a | g1~ | g2 r4 c |
	c2 des,~ | des bes'4. a8 | gis4. a8 a2~ | a bes4 c |
	cis4. d8 d4 d, | a'2 a | f1 | r |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% these are lyrics from the internet adjusted for the real book
\lyricmode {

%% part "A"
	I love you __
	Hums the Ap -- ril breeze. __
	I love you __
	E -- cho the hills. __
	I love you __
	The gol -- den dawn ag -- rees __
	As once more she sees
	Daf -- fo -- dils. __

%% part "B"
	It's spring a -- gain __
	And birds on the wing a -- gain __
	Start to sing a -- gain __
	The old me -- lo -- dy. __
	I love you, __
	That's the song of songs __
	And it all be -- longs
	To you and me.
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

