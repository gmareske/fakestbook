

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
% title: Don't Explain
% style: Jazz
% composer: Billie Holiday
% poet: Arthur Herzog, Jr.
% piece: Slowly
% copyright: 1946 by Northern Music Company
% copyrightextra: Rights Administered by MCA Music Publishing, A Division of MCA INC., New York, NY. Copyright Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 070df83e-0676-11e1-b7fe-0019d11e5a41
% structure: AABA
% location: jfb:102,jltd:90
% idyoutuberemark1: Billie in a radio show
% idyoutube1: XxwJ9lh-id4
% idyoutuberemark2: The great Dexter Gordon at the height of his power
% idyoutube2: k2Lx3n10fkc
% lyricsurl: http://www.elyrics.net/read/b/billie-holiday-lyrics/don_t-explain-lyrics.html
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
	      \underline \sans "Don't Explain"
	      \fontsize #1 \lower #1  "- Arthur Herzog, Jr. / Billie Holiday"
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

  \tocItem \markup "Don't Explain / Billie Holiday, Arthur Herzog, Jr."


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
	d2:m d:m/c | g:m6/bes a:7 | d:m d:m/c | e:7/b bes4:7.5- a4:9 | \myEndLine
	ees2:9 d4:9.5+ d:7.5+.9- | des2:9 c:9 | f:maj7 bes4:maj7 a:m7 | bes:m6/des c:7.9- bes:7 a:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	d2:m d:m/c | g:m6/bes a:7 | d:m d:m/c | e:7/b bes4:7.5- a4:9 | \myEndLine
	ees2:9 d4:9.5+ d:7.5+.9- | des2:9 c:9 | f b:m7.5- | e:7.9- a:7.9- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	d:m7 g:m7 | c:7 f:maj7 | bes:maj7 e:m7.5- | bes:7 a:7 | \myEndLine
	d:m7 g:m7 | c:7 f:maj7 | bes:maj7 e:m7.5- | bes:7 a:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	d2:m d:m/c | g:m6/bes a:7 | d:m d:m/c | e:7/b bes4:7.5- a4:9 | \myEndLine
	ees2:9 d:9.5+ | des:9 c:9 | f bes:6 | f1 | \myEndLine
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
	\tempo "Adagio" 4 = 72
	\time 4/4
	\key f \major

%% part "A"
	d4 f2 a8 d, | e1 | d4 f2 e8 f | e1 |
	c'4 bes2. | bes4 a2 a8 d, | e1~ | e4 r r2 |

%% part "A"
	d4 f2 a8 d, | e1 | d4 f2 e8 f | e1 |
	c'4 bes2. | bes4 a2 a8 d, | f1~ | f |

%% part "B"
	a8 a c a bes bes4. | g8 g bes g a2 | f8 f a f g g4. | e8 f g g g f e4 |
	a8 a c a bes bes4. | g8 g bes g a2 | f8 f a f g g4. | e8 f g f e2 |

%% part "A"
	d4 f2 a8 d, | e1 | d4 f2 e8 f | e1 |
	c'4 bes2. | bes4 a2 a8 d, | f1~ | f |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Hush now, Don't Ex -- plain!
	Just say youl'll re -- main,
	I'm glad you're back,
	Don't Ex -- plain! __

%% part "A"
	Qui -- et, Don't Ex -- plain!
	What is there to gain?
	Skip that lip -- stick,
	Don't Ex -- plain! __

%% part "B"
	You know that I love you
	and what love en -- dures.
	All my thoughts are of you
	for I'm so com -- plete -- ly yours.
	Cry to hear folks chat -- ter,
	and I know you cheat.
	Right or wrong don't mat -- ter
	when you're with me, sweet.

%% part "A"
	Hush now, Don't Ex -- plain!
	You're my joy and pain.
	My life's yours love,
	Don't Ex -- plain! __
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
		\smaller \smaller { "Copyright © 1946 by Northern Music Company" }
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

