

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
% title: That's All
% style: Jazz
% composer: Alan Brandt, Bob Haymes
% poet: Alan Brandt, Bob Haymes
% piece: Slowly, with expression
% copyright: 1952 Renewed 1982 Mixed Bag Music, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b0685520-db92-11e3-a96d-4fe96cfbc3fb
% structure: AABA
% location: jfb:380-381
% idyoutuberemark1: Nat King Cole cannonical version
% idyoutube1: sooSaQpGnMM
% idyoutuberemark2: Frank Sinatra cannonical version
% idyoutube2: SINfqtCq0lY
% lyricsurl: http://www.metrolyrics.com/thats-all-lyrics-nat-king-cole.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly, with expression"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "That's All"
	      \fontsize #1 \lower #1  "- Alan Brandt, Bob Haymes"
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

  \tocItem \markup "That's All / Alan Brandt, Bob Haymes"


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
	\repeat volta 2 {
		c2 d:m7 | e:m7 f4:m7 g:7 | e2:m7 a:9 | d:m7 g:7 | \myEndLine
		fis:m7.5- f:m7 | e:m7 ees:dim7 |
	} \alternative {
		{
			e:m7 a:7.9- | d:7.5- g:7 | \myEndLineVoltaNotLast
		}
		{
			e4:m7 a:7.9- d:m7 g:7.9- | c1 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	g2:m7 c:9 | f:maj7.9 d:9 | g:m7 c:9 | f:maj7 f:6 | \myEndLine
	a:m7 d:9 | g:maj7.9 e:9 | a:m7 d:9 | d:m7 g:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c2 d:m7 | e:m7 f4:m7 g:7 | e2:m7 a:9 | d:m7 g:7 | \myEndLine
	fis:m7.5- f:m7 | e:m7 ees:dim7 | e4:m7 a:7.9- d:m7 g:7.9- | c1 | \myEndLine
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
	\tempo "Andante" 4 = 90
	\time 2/2
	\key c \major

	\partial 4 e8 f |

%% part "A"
	\repeat volta 2 {
		g b g e g b g e | g g~ g2 e8 f | g b g e g b g e | g2. a8 b |
		c e c a c4. a8 | c e c a c4. a8 |
	} \alternative {
		{
			g2. e4 | d2. e8 f |
		}
		{
			g2. e4 | c2. c8 c' |
		}
	}

%% part "B"
	a4 c,8 c' a4 c,8 c' | a4 a2 c,8 c' | a4 c,8 c' a4 c,8 c' | a2. d,8 d' |
	b4 d,8 d' b4 d,8 d' | b4 b2 d,8 d' | b4 d,8 d' b4 d,8 b' | g2. e8 f |

%% part "A"
	g b g e g b g e | g g~ g2 e8 f | g b g e g b g e | g2. a8 b |
	c e c a c4. a8 | c e c a c4. a8 | g2. e4 | c1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I can on -- ly give you love that lasts for -- ev -- er, __
	and the prom -- ise to be near each time you call;
	and the on -- ly heart I own, for you and you a -- lone, That's All, That's All. I can
	_ _ _ _ _
%%All, That's All.

%% part "B"
	those I am sure who have told you
	they would give you the world for a toy.
	All I have are these arms to en -- fold you
	and a love time can nev -- er de -- stroy.

%% part "A"
	If you're won -- d'ring what I'm ask -- ing in re -- turn dear, __
	you'll be glad to know that my de -- mands are small:
	say it's me that you'll a -- dore,
	for now and ev -- er -- more,
	That's All, That's All.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _
	on -ly give you coun -- try walks in spring -- time, __
	and a hand to hold when leaves be -- gin to fall;
	and a love whose burn -- ing light,
	will warm the win -- ter night,
	That's
	_ _ _ _ _
	All, That's All. There are
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
		\smaller \smaller { "Copyright © 1952 Renewed 1982 Mixed Bag Music, Inc." }
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

