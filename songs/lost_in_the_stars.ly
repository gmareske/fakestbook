

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
% title: Lost In The Stars
% style: Jazz
% subtitle: (Form 'Lost In The Stars')
% composer: Kurt Weill
% poet: Maxwell Anderson
% piece: Moderately
% copyright: 1946 Chappell & Co., Inc
% copyrightextra: Renewed Chappell & Co., Inc. & TRO-Hampshire House
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: a785ec42-da7f-11e3-b5cb-675e7f5a49ce
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Lost In The Stars"
	      \fontsize #1 \lower #1  "- Maxwell Anderson / Kurt Weill"
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

  \tocItem \markup "Lost In The Stars / Kurt Weill, Maxwell Anderson"


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

	\partial 8 s8 |

	\myMark "A"
	\startPart
	g2 bes:dim7 | d:7/a d:7 | g e:7.5+ | a:m7 d:7.9- | \myEndLine
	g c:maj7 | g1 | g2:/b bes:dim7 | a:m7 d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 bes:dim7 | d:7/a d:7 | g e:7.5+ | a:m7 d:7.9- | \myEndLine
	g c:maj7 | g e:7 | a:7 d:7 | g1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c2:m7 f:7 | bes g:m7 | c:m7.5- f:7 | bes g:m7 | \myEndLine
	c:m7 f:7 | bes g:m7 | c:m7.5- f4:7 f:7.5+ | e:7 ees2:7 d4:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 bes:dim7 | d:7/a d:7 | g e:7.5+ | a:m c:m6 | \myEndLine
	g1 | c:m6 | g | c:m6 | \myEndLine
	d2:7 a4:m7 d:7 | g1 | e2:m7 ees:7 | g bes:dim7 | \myEndLine
	d:7/a a4:m7 d:7 | g1 | e2:m7 ees:7 | g bes:dim7 |
	d:7/a d:7 | g ees:7 | g1:6 |
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
	\key g \major

	\partial 8 cis8 |

%% part "A"
	e4 d g cis,8 cis | e4 d8 d a'4 r8 cis, | e4 d8 d c'4 b8 c | b4 a8 gis a4 b8 c |
	d4 b8 g e d'4 c8 | c4 b b r8 d, | e4 e8 e e4 fis8 g | a2. cis,8 cis |

%% part "A"
	e4 d g8 g cis, cis | e4 d a' r8 cis,16 cis | e8 e d4 c' b8 c | b4 a8 gis a4 b8 c |
	d4 b8 g e d'4 c8 | c4 b8. ais16 b4 r8 d,16 d | e8 e e4 a4. g8 | g2. g8 g |

%% part "B"
	bes4 bes bes a8 g | f4. d8 bes4 c8 d | ees4 ees ees bes8 c | d4. d8 d4 r8 g |
	bes4 bes8 bes a4 g | f8. f16 f8 d bes4 c8 d | ees4 ees8 ees d4 cis | d2. r8 cis |

%% part "A"
	e4 d g8. g16 cis,8 cis | e4 d8. d16 a'4 r8 cis,16 cis | e4 d c'8 c b c | b4 a8 gis a4 r8 b16 c |
	d4 d8 d d4 c8 b | a4 a8 a a4. a8 | d4 cis8 d e d c b | a4. a8 a2 |
	r4 cis,8 d c'4 c | \tuplet 3/2 { c8 b ais } b2. | b16 a g8~ g4 bes8 g4. | b8. b16 a8 g e2 |
	r4 cis8 d c'4 c | \tuplet 3/2 { c8 b ais } b2. | b16 a g8~ g4 bes8 g4. | b8. b16 c8 d e2 |
	r4 cis,8 d a'4 a | \tuplet 3/2 { a8 g fis } g2.~ | g1 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Be -- fore Lord God made the sea and the land, He held all the stars in the palm of His hand, and they
	ran through His fin -- gers like grains of sand, and one lit -- tle star fell a -- lone. Then the
	Lord God hunt -- ed through the wide night air for the lit -- tle dark star on the wind down _ there. And he
	stat -- ed and prom -- ised He'd take spec -- ial care so it would -- n't get lost a -- gain. Now a
	man don't mind if the stars grow dim and the clouds blow o -- ver and dark -- en him. So
	long as the Lord God's watch -- ing o -- ver them keep -- ing track how it all goes on. But
	I've been walk -- ing through the night, and the day, 'till my eyes get wear -- y and my head turn _ grey, And _
	some -- times it seems may -- be God's gone a -- way, for -- get -- ting the prom -- ise that we heard Him say,
	And we're lost out here in the stars, lit -- tle stars, big stars, blow -- ing through the night.
	And we're lost out here in the stars, lit -- tle stars, big stars, blow -- ing through the night.
	And we're lost out here in the stars. __
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
		\smaller \smaller { "Copyright © 1946 Chappell & Co., Inc" }
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

