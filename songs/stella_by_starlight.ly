

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
% title: Stella By Starlight
% style: Jazz
% composer: Victor Young
% poet: Ned Washington
% piece: Slowly, with Expression
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: afea10ce-edc0-11e0-9cc4-0019d11e5a41
% structure: AB
% location: rbk1:408
% remark: there are a couple of different lyric versions for this song
% idyoutube1: Iqs3w1Q5sto
% idyoutube2: IbzxJuvbH08
% lyricsurl: http://www.lyrics007.com/Ella%20Fitzgerald%20Lyrics/Stella%20By%20Starlight%20Lyrics.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly, with Expression"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Stella By Starlight"
	      \fontsize #1 \lower #1  "- Ned Washington / Victor Young"
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

  \tocItem \markup "Stella By Starlight / Victor Young, Ned Washington"


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
	e1:m7.5- | a:7.9- | c:m7 | f:7 | \myEndLine
	f:m7 | bes:7 | ees:maj7 | aes:7 | \myEndLine
	bes:maj7 | e2:m7.5- a:7.9- | d1:m7 | bes2:m7 ees:7 | \myEndLine
	f1:maj7 | e2:m7.5- a:7 | a1:m7.5- | d:7.9- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	g1*2:7.5+ | c:m7 | \myEndLine
	aes:7 | bes:maj7 | \myEndLine
	e1:m7.5- | a:7.9- | d:m7.5- | g:7.9- | \myEndLine
	c:m7.5- | f:7.9- | bes1*2:maj7 | \myEndLine
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
	\key bes \major

	\partial 4 bes'4 |

%% part "A"
	a1~ | a4 g a bes | f1~ | f2. f4 |
	g1~ | g4 f f g | bes,1~ | bes2. c4 |
	ees d c bes | d2. e4 | g4. f8 f2~ | f2. g4 |
	bes a g f | g2 a4 bes | d4. c8 c2~ | c d |

%% part "B"
	ees1~ | ees4 ees ees d | f1~ | f4 ees \tuplet 3/2 { d c bes } |
	d2 d2~ | d4 c bes a | c1~ | c2. bes4 |
	a1~ | a4 g a bes | f1~ | f4 f f ees |
	ges1~ | ges4 ges ges f | f1~ | f1 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	The song a rob -- in sings,
	Through years of end -- less springs,
	The mur -- mur of a brook at even -- ing tides.
	That rip -- ples through a nook where two lov -- ers hide.

%% part "B"
	That great sym -- pho -- nic theme,
	That's Stel -- la by star -- light,
	And not a dream,
	My heart and I ag -- ree,
	She's eve -- ry -- thing on_this earth to me.
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

