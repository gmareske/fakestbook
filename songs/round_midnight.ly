

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
% title: 'Round Midnight
% style: Jazz
% composer: Cootie Williams, Thelonious Monk
% poet: Bernie Hanighen
% piece: Ballad
% copyright: 1944 (Renewed) Warner Bros. Inc. and Thelonian Music
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 1c99c334-a26f-11df-b3cb-0019d11e5a41
% structure: AABA
% location: rbk1:364,jfb:322
% idyoutuberemark1: Ella's vocal version
% idyoutube1: DEaDj6TXiQQ
% idyoutuberemark2: Monk. What can I say?
% idyoutube2: OMmeNsmQaFw
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Round-Midnight-lyrics-Ella-Fitzgerald/F7F9D0761ABE750348256AAB0009FEEA
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "'Round Midnight"
	      \fontsize #1 \lower #1  "- Bernie Hanighen / Cootie Williams, Thelonious Monk"
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

  \tocItem \markup "'Round Midnight / Cootie Williams, Thelonious Monk, Bernie Hanighen"


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
	%% the bes:7 on the next line should be altered
		ees2:m c:m7.5- | f:m7.5- bes:7 | ees:m7 aes:7 | b4:m7 e:7 bes:m7 ees:7 | \myEndLine
		aes2:m7 des:7 | ees:m7 aes:7 |
	} \alternative {
		{
			b1:7 | bes:7 | \myEndLineVoltaNotLast
		}
		{
			b2:7 bes:7 | ees1:m7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	c2:m7.5- f:7.9- | bes1:7 | c2:m7.5- f:7.9- | bes1:7 | \myEndLine
	aes4:m7 des:7 ges2:maj7 | ces:7 bes:7 | ees:7 des:7 | ces:7 bes:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
%% the bes:7 on the next line should be altered
	ees2:m c:m7.5- | f:m7.5- bes:7 | ees:m7 aes:7 | b4:m7 e:7 bes:m7 ees:7 | \myEndLine
	aes2:m7 des:7 | ees:m7 aes:7 | ces:7 bes:7 | ees1:m | \myEndLine
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
	\time 4/4
	\key ees \minor

%% part "A"
	\repeat volta 2 {
		r4 bes16 ees f bes ges4. bes,8 | ees4. d16 ees bes'8 aes r4 |
		r ees16 ges bes des c4. ees,8 | a8 fis16 d gis4 aes8 f16 des g4 |
		r4 aes16 ces ees ges f4. ces8 | bes4 \tuplet 3/2 { ees,8 d des } c aes'4 ees16 f |
	} \alternative {
		{
			\tuplet 3/2 { fis8 fis fis fis f dis } f4. dis8 | d bes r4 r2 |
		}
		{
			fis'4 f8 dis f4 ees8 des | ees2. ees8 f |
		}
	}

%% part "B"
	ges4 f8 ees f4. ees8 | d bes' r4 r ees,8 f | ges4 f8 ees f4. ees8 | d bes r4 r bes'4 |
	ces4. ces8 bes4. bes8 | aes4 ges f4. bes8 | ees ees ees4 des8 des des4 | ces ees,8 d bes' aes e d |

%% part "A"
	r4 bes16 ees f bes ges4. bes,8 | ees4. d16 ees bes'8 aes r4 |
	r ees16 ges bes des c4. ees,8 | a8 fis16 d gis4 aes8 f16 des g4 |
	r4 aes16 ces ees ges f4. ces8 | bes4 \tuplet 3/2 { ees,8 d des } c aes'4 ees16 f |
	ges4 f8 ees f4 ees8 des | ees1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	It be -- gins to tell, 'round midnight, mid -- _ _ night.
	I do pre -- tty well, till af -- _ _ ter sun -- _ _ down,
	Sup -- per -- time I'm fee -- lin' sad; _ _ _ _ _
	But it real -- ly gets _ _ _ bad, 'round mid -- night.

%% part "Volta"

	mid -- _ _ night knows it, too.

%% part "B"
	When a quar -- rel we had needs men -- ding,
	Does it mean that our love is end -- ing.
	Dar -- lin' I need you, lately I find
	You're out of my heart,
	And I'm out of my mind. _ _ _

%% part "A"
	Let our hearts take wings' 'round midnight, mid -- _ _ night.
	Let the an -- gels sing, for your -- _ _ re tur -- _ _ ning.
	Till our love is safe and sound. _ _ _ _ _
	And old mid -- _ _ night comes a -- round.
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Memo -- ries al -- ways start 'round midnight, mid -- _ _ night.
	Ha -- ven't got the heart to stand -- _ _ those me -- _ _ mories,
	When my heart is still with you, _ _ _ _ _
	And ol'
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
		\smaller \smaller { "Copyright © 1944 (Renewed) Warner Bros. Inc. and Thelonian Music" }
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

