

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
% title: Opus One
% style: Jazz
% composer: Sy Oliver
% poet: Sy Oliver
% piece: Moderate Jump Tempo
% copyright: 1943 (Renewed) Embassy Music Corporation, New York.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 31cf66b6-11b8-11e4-bcfe-f76051fd87b1
% structure: AABA
% structureremark: The A's are just a little bit different
% location: jfb:291
% idyoutuberemark1: Nat King Cole swings
% idyoutube1: a33vdj7zoB0
% idyoutuberemark2: Tommy Dorsey's Orchestra swings
% idyoutube2: rV9LhjTr5Bc
% lyricsurl: http://www.songlyrics.com/the-mills-brothers/opus-one-lyrics/
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderate Jump Tempo"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Opus One"
	      \fontsize #1 \lower #1  "- Sy Oliver"
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

  \tocItem \markup "Opus One / Sy Oliver"


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

	\partial 8 s8 |

	\myMark "A"
	\startPart
	g1*2 | c:9 | \myEndLine
	a1:9 | a2:m7 d:9 | g bes:dim7 | a:m7 d4:9 d:aug | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g1*2 | c:9 | \myEndLine
	a1:9 | a2:m7 d:9 | g c:9 | g1 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	bes2 g:m7 | c:m7 f:7.9- | bes:6 g:7.5+ | c:9 f:9.5+ | \myEndLine
	des bes:m7 | ees:m7 aes:7.9- | des2..:6 des8 | des8 d2..:13 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g1*2 | c:9 | \myEndLine
	a1:9 | a2:m7 d:9 | g c:9 | g4 ees:9 g2 | \myEndLine
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
	\tempo "Allegro" 4 = 168
	\time 2/2
	\key g \major

	\partial 8 d8 |

%% part "A"
	e g fis4 e4. d8 | e g fis e~ e4. d8 | e g fis4 e4. d8 | e g fis e~ e4. d8 |
	e g fis4 e4. d8 | e g fis e~ e4. d8 | e g fis4 e8 g fis4 | e8 g fis e~ e4. d8 |

%% part "A"
	e g fis4 e4. d8 | e g fis e~ e4. d8 | e g fis4 e4. d8 | e g fis e~ e4. d8 |
	e g fis4 e4. d8 | e g fis e~ e4. d8 | e g e d e g e g~ | g4. b8~ b d b g |

%% part "B"
	f! bes4 r8 bes4. g8 | c4 c c8 d4 bes8~ | bes4. g8~ g4. g8~ | g4. g8~ g4. g8 |
	aes des4 r8 des4. bes8 | ees4 ees ees8 f4 des8~ | des2~ des4. des8~ | des8 d4.~ d4. d,8 |

%% part "A"
	e g fis4 e4. d8 | e g fis e~ e4. d8 | e g fis4 e4. d8 | e g fis e~ e4. d8 |
	e g fis4 e4. d8 | e g fis e~ e4. d8 | e g e d e g e g~ | g2~ g8 r r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	I'm wrack -- in' my brain, to think of a name, __
	to give to this tune, so Per -- ry can croon, __
	and may -- be ol' Bing will give it a fling. __
	And that -- 'll start ev -- 'ry -- one hum -- min' the thing. __

%% part "A"
	The mel -- o -- dy's dumb, re -- peat an' re -- peat. __
	But if you can swing, it's got a good beat. __
	And that's the main thing, to make with the feet. __
	'Cause ev -- 'ry -- one is swing -- in' to day. __

%% part "B"
	So, __ I'll call it O -- pus One! It's not for Sam -- my Kaye. __
	Hey! __ hey! __ hey! __ It's O -- pus One! It's got to swing,
	not sway. __ May -- be, __

%% part "A"
	if Mis -- ter Les Brown could make it re -- nown, __
	and Ray An -- tho -- ny could swing it for me. __
	There's nev -- er a doubt you'll knock your -- self out. __
	When -- ev -- er you can hear O -- pus One. __
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
		\smaller \smaller { "Copyright © 1943 (Renewed) Embassy Music Corporation, New York." }
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

