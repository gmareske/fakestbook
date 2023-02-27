

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
% title: Here's That Rainy Day
% style: Jazz
% composer: James Van Heusen
% poet: Johnny Burke
% piece: Slowly
% copyright: 1953 by BOURCE CO. and DORSEY BROS. MUSIC, INC. Copyright Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 4c69df80-cd7f-11e1-8c91-4b6b0349580b
% structure: ABAC
% structureremark: You can also think of this as AB
% location: rbk1:191,jfb:147
% idyoutuberemark1: Nat King Cole in a great vocal version
% idyoutube1: yokM-Hfu5Gc
% idyoutuberemark2: The great Bill Evans
% idyoutube2: cJzIvj9IKcM
% lyricsurl: http://kokomo.ca/pop_standards/heres_that_rainy_day_lyrics.htm
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
	      \underline \sans "Here's That Rainy Day"
	      \fontsize #1 \lower #1  "- Johnny Burke / James Van Heusen"
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

  \tocItem \markup "Here's That Rainy Day / James Van Heusen, Johnny Burke"


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
		g2.:maj9 g4:maj9/fis | bes2:7/f e:7.5- | ees1:maj7 | ees:6 | \myEndLine
		a:m7 | d2.:7 d4:7.5-.9- | g1:maj7 | d2:m7 g:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c1:m7 | f:9 | bes2.:maj7 e4:9 | ees1:maj7 | \myEndLine
		a:m7 | d2.:9 d4:7.9- | g1:maj7 | a2:m7 d:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g2.:maj9 g4:maj9/fis | bes2:7/f e:7.5- | ees1:maj7 | ees:6 | \myEndLine
		a:m7 | d2.:7 d4:7.5-.9- | g1:maj9 | d2:m7 g:9.5+ | \myEndLine
		\endPart

		\myMark "C"
		\startPart
		c1:maj7 | a2:m7 d4:7 d:7/c | b2:m7 e:m7 | a:7.5- a:7 | \myEndLine
		a1:m7 | d2:7 a4:m7 d:7.9- |
	} \alternative {
		{
			g2 e:m7 | a:m7 d:9 | \myEndLineVoltaNotLast
		}
		{
			g1 | bes:6 | ees2:maj7 aes:maj7 | g1:6 | \myEndLineVoltaLast
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
	\tempo "Allegro" 4 = 130
	\time 2/2
	\key g \major

	\repeat volta 2 {

	%% part "A"
		d4 d2 d4 | d f bes d | d2 c4. b!8 | c1 |
		d,4 d2 d4 | d fis a c | b1~ | b2. r4 |

	%% part "B"
		ees2 ees | ees4 g, aes a | d2 f,4 fis | g2 f4 g |
		c c8 c c4 c8 c | c4 e, eis fis | b1~ | b2. r4 |

	%% part "A"
		d,4 d2 d4 | d f bes d | d2 c4. b!8 | c1 |
		d,4 d2 d4 | d fis a c | b1~ | b2. r4 |

	%% part "C"
		e4 e2 e4 | e a, b c | d2 fis,4 g | a1 |
		d,4 d2 d4 | d fis a b |
	} \alternative {
		{
			g1~ | g4 r r2 |
		}
		{
			g1~ | g~ | g~ | g2. r4 |
		}
	}
}





 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	May -- be I should have saved those left -- ov -- er dreams;
	fun -- ny, but Here's That Rain -- y Day. __

%% part "B"
	Here's That Rain -- y Day they told me a -- bout,
	and I laughed at the thought that it might turn out this way. __

%% part "A"
	Where is that worn out wish that I threw a -- side,
	Af -- ter it brought my lov -- er near? __

%% part "C"
	Fun -- ny how love be -- comes a cold rain -- y day.
	Fun -- ny that rain -- y day is here. __
%% volta
	here. __
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
		\smaller \smaller { "Copyright © 1953 by BOURCE CO. and DORSEY BROS. MUSIC, INC. Copyright Renewed." }
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

