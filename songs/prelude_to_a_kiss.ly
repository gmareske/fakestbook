

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
% title: Prelude To A Kiss
% style: Jazz
% composer: Duke Ellington
% poet: Irving Gordon and Irving Mills
% piece: Slowly
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 1a21cdfc-da80-11e3-8e64-13828462b6b5
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
	      \underline \sans "Prelude To A Kiss"
	      \fontsize #1 \lower #1  "- Irving Gordon and Irving Mills / Duke Ellington"
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

  \tocItem \markup "Prelude To A Kiss / Duke Ellington, Irving Gordon and Irving Mills"


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
	\startSong
	\startChords

	\myMark "A"
	\startPart
	d2:9 g:7.5+ | c:9 f:maj7 | b:7 e:7 | a:7 d:m |
	d:m7 g:7 | c d:7 d:m7 g:7.9- | c a:7 |
	\endPart

	\myMark "A"
	\startPart
	d2:9 g:7.5+ | c:9 f:maj7 | b:7 e:7 | a:7 d:m |
	d:m7 g:7 | c d:7 d:m7 g:7.9- | c1 |
	\endPart

	\myMark "B"
	\startPart
	e2 cis:m | fis:m7 b:7 | e2 cis:m | fis:m7 b:7 | e2 cis:m |
	fis:m7 b:7 | e4. a:7 d4:9 |
	d:m7 dis:m7 e:m7 a:7.9- |
	\endPart

	\myMark "A"
	\startPart
	d2:9 g:7.5+ | c:9 f:maj7 | b:7 e:7 | a:7 d:m |
	d:m7 g:7 | c d:7 d:m7 g:7.9- | c1 |
	\endPart

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante Moderato" 4 = 88
	\time 4/4
	\key c \major

%% part "A"
	b'4 bes a gis | g a8 e~ \tuplet 3/2 { e4 f g } | gis4 g fis f | e f8 d~ d2 |
	\tuplet 3/2 { g4 g g } \tuplet 3/2 { g gis a } | c,4 d'8 b~ b2 | d,8 e f gis~ gis4 gis8 a~ | a2. r4 |

%% part "A"
	b4 bes a gis | g a8 e~ \tuplet 3/2 { e4 f g } | gis4 g fis f | e f8 d~ d2 |
	\tuplet 3/2 { g4 g g } \tuplet 3/2 { g gis a } | c,4 d'8 b~ b2 | d,8 e f gis~ gis4 a8 c,~ | c2. r4 |

%% part "B"
	r4 ais'8 b dis, e dis' cis | b a c,2 cis4 | r fis8 fis fis4 e |
	r4 a8 a a2 | r4 ais8 b dis, e dis' cis | b a c,2 cis4 | e8 e4 e8~ e4 e8 e |
	g4 gis a ais |

%% part "A"
	b4 bes a gis | g a8 e~ \tuplet 3/2 { e4 f g } | gis4 g fis f | e f8 d~ d4 d |
	\tuplet 3/2 { g4 g g } \tuplet 3/2 { g gis a } | c,4 d'8 b~ b2 | d,8 e f gis~ gis4 a8 c,~ | c1 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	If you hear a song in blue __ like a flow -- er cry -- ing for the dew __
	that was my heart ser -- e -- nad -- ing you __ my Pre -- lude To A Kiss. __ If you hear a
	song that grows from my ten -- der sen -- ti -- men -- tal woes __ That was my heart try -- ing to com -- pose __
	a Pre -- lude To A Kiss. __ Though it's just a sim -- ple mel -- o -- dy with noth -- ing fan -- cy,
	noth -- ing much you could turn it to a sym -- pho -- ny a Schu -- bert tune __ with a
	Gersh -- win touch. Oh! How my love song gen -- tly cries __ for the ten -- der -- ness with --
	in your eyes __ my love is a pre -- lude that nev -- er dies __ a Pre -- lude To A Kiss. __
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

