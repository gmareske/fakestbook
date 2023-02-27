

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
% title: Angel Eyes
% style: Jazz
% composer: Matt Dennis
% poet: Earl Brent
% piece: Slow Blues
% copyright: 1946 (Renewed 1973) Dorsey Brothers Music
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 0a43bee4-e044-11e3-9617-b76a2faa3d0b
% structure: AABA
% location: jfb:45
% idyoutuberemark1: Chet Baker in a very good version
% idyoutube1: shuy1hpUGvQ
% idyoutuberemark2: Stings version (I like this one...)
% idyoutube2: QS1MgqJ7B3Y
% lyricsurl: http://www.metrolyrics.com/angel-eyes-lyrics-ella-fitzgerald.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slow Blues"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Angel Eyes"
	      \fontsize #1 \lower #1  "- Earl Brent / Matt Dennis"
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

  \tocItem \markup "Angel Eyes / Matt Dennis, Earl Brent"


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
		c2:m7 aes:7/c | c:m6 aes:9/c | c:m9 a:m7.5- | ees4:13 aes:maj7 g:7.5- d:m11 | \myEndLine
		c2:m9 aes:7/c | c:m6 aes:9/c | d:7.9- aes4:9 g:7.9- |
	} \alternative {
		{
			c2:m7 aes4:9 g:7.9- | \myEndLineVoltaNotLast
		}
		{
			c1:m | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	bes2:m9 ees:7.9- | aes:maj7.9 f:7.9- | bes:m9 ees:7.9- | aes2.:maj7.9 des4:maj7.9 | \myEndLine
	a2:m9 d:7.9- | g2.:maj7 c4:maj7.9 | cis2:m7 fis:7.5+ | d:m7 g:7.5+ | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c2:m9 aes:7/c | c:m6 aes:9/c | c:m9 a:m7.5- | d:m7 g4:7.5- g:7 | \myEndLine
	c2:m9 aes:7/c | c:m6 aes:9/c | d:7.9- aes4:9 g:7.5+ | c2:m c:m/bes | aes:9 g:7.5+ | c1:m7+ | \myEndLine
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
	\tempo "Andante" 4 = 88
	\time 4/4
	\key c \minor

%% part "A"
	\repeat volta 2 {
		r8. c16 g'8 ges8~ ges4. f8 | ees4 \tuplet 3/2 { ees8 c ees~ } ees2 |
		r8. c16 ees8 g d'8. d16 c8 g~ | g1 |
		r8. c,16 g'8 ges8~ ges4. f8 | ees8. ees16 c8 ees8~ ees4. c8 |
		ees8. c16 ees8. c16 ees4 ees8 c~ |
	} \alternative {
		{
			c2 r |
		}
		{
			c2. c'4 |
		}
	}

%% part "B"
	c8 c4.~ c8 c bes ees,~ | ees ees4.~ ees2 | c'8 c4 c16 bes c4 bes8 ees,~ | ees2. c'4 |
	b2~ b8 a4 b16 a | d,8 d4.~ d4 r8 e | fis8. fis16 fis8 fis~ fis4 fis8 g~ | g1 |

%% part "A"
	r8. c,16 g'8 ges8~ ges4. f8 | ees4 \tuplet 3/2 { ees8 c ees~ } ees2 |
	r8. c16 ees8 g d'8. d16 c8 g~ | g1 |
	r8. c,16 g'8 ges8~ ges4. f8 | ees8. ees16 c8 ees8~ ees4. c8 |
	ees8. c16 ees8. c16 ees4 ees8 c~ | c1 |
	ees8. c16 ees8. c16 bes'8. g16 f8 g~ | g1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Try to think __
	that love's not a -- round __
	still it's un -- com -- fort -- 'bly near. __
	My old heart __
	ain't gain -- in' no ground __
	be -- cause my An -- gel Eyes ain't here. __
	_

%% part "B"
	So drink up __ all you peo -- ple, __
	or -- der an -- y -- thing you see. __
	Have fun, __ you hap -- py peo -- ple __
	the drink and the laugh's __ on me. __

%% part "A"
	Par -- don me, __
	but I got -- ta run, __
	the fact's un -- com -- mon -- ly clear. __
	Got -- ta find __ who's now "\"Num" -- ber "One\""__
	and why my An -- gel Eyes ain't here. __
	'Scuse me while I di -- s -- ap -- pear. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	An -- gel Eyes __
	that old dev -- il sent, __
	they glow un -- bear -- a -- bly bright. __
	Need I say __ that my love's mis -- spent, __
	mis -- spent with An -- gel Eyes to -- night. __
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
		\smaller \smaller { "Copyright © 1946 (Renewed 1973) Dorsey Brothers Music" }
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

