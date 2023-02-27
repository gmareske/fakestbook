

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
% title: Stormy Weather
% style: Jazz
% subtitle: Keeps Rainin' All the Time
% composer: Harold Arlen
% poet: Ted Koehler
% piece: Slowly
% copyright: 1933 MILLIS MUSIC, INC.
% copyrightextra: Renewed 1961 ARKO MUSIC CORP. This Arrangement 1987 ARKO MUSIC CORP. International Copyright Secured. All Rights Reserved.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 6204de70-da80-11e3-95e9-fbc293b14fcd
% structure: AABA
% location: jfb:363
% idyoutuberemark1: Ella in a great version
% idyoutube1: ezGHapF8-lY
% idyoutuberemark2: Ella in 1975 with Joe Pass
% idyoutube2: teXOPAFMOp0
% lyricsurl: http://www.lyricsfreak.com/b/billie+holiday/stormy+weather_20018077.html
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
	      \underline \sans "Stormy Weather"
	      \fontsize #1 \lower #1  "- Ted Koehler / Harold Arlen"
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

  \tocItem \markup "Stormy Weather / Harold Arlen, Ted Koehler"


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
		g2 gis:dim7 | a:m7 d:9 | g e:7 | a:m7 d:9 | \myEndLine
		g e:7 | a:m7 d:7.5+.9- |
	} \alternative {
		{
			g1 | a2:m7 d:9 | \myEndLineVoltaNotLast
		}
		{
			g2 c | g2 b4:m7 e:7 | a2:m7 d:7.9- | g d4:m7 g:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
%% Jazz Fakebook has the following d:7.5+.9- chord without the augmented, but
%% given the melody note, and the fact that this exact figure appears in
%% two other places augmented, I'm assumign this was a typo.
	c1:maj7 | g4/b a:m7 g2:maj7 | c1:maj7 | g2/b a4:m7 g:maj7 | \myEndLine
	c2 cis:dim7 | g/d e:7 | a4:m7 b:7 e2:m7 | a:7 a4:m7 d:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	g2 gis:dim7 | a:m7 d:9 | g e:7 | a:m7 d:9 | \myEndLine
	g e:7 | a:m7 d:7.5+.9- | g1 | a2:m7 d:7.5+.9- | \myEndLine
	g a4:m7 aes:maj7 | g:maj7 c g2:6 | \myEndLine
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
	\tempo "Andante" 4 = 80
	\time 2/2
	\key g \major

	\partial 4 ais'8 b |

%% part "A"
	\repeat volta 2 {
		d2.~ d8 ais16 b | d8 b d cis c4 ais8 b | d d,4.~ d2 | a'8. a16 a8. a16 a4~ a8 g16 e |
		g8 d4.~ d2 | c8 e g ais~ ais4. ais8 |
	} \alternative {
		{
			b8 g4.~ g2 | r2 r4 ais8 b |
		}
		{
			b8 g4.~ g4 g | e8 d4.~ d2 | c8 e g ais~ ais4. ais8 | b8 g4.~ g2 |
		}
	}

%% part "B"
	e8. fis16 \tuplet 3/2 { g8 a g~ } g8. g16 g8. g16 | g4. g8 b g4. |
	e8. fis16 \tuplet 3/2 { g8 a g~ } g8. g16 g8. g16 | g4. g8 e d4. | e8. fis16 \tuplet 3/2 { g8 a g~ } g8. g16 g8. g16 | g4. g8 c8 b4. |

%% part "A"
	d4 b8 a g4 e | a2. ais8 b | d2.~ d8 ais16 b | d8 b d cis c4 ais8 b |
	d d,4.~ d2 | a'8. a16 a8. a16 a4~ a8 g16 e | g8 d4.~ d2 | c8 e g ais~ ais4. ais8 |
	b g4.~ g2 | c,8 e g ais~ ais4. ais8 | b g4.~ g2~ | g2. r4 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Don't know

%% part "Volta"
	why __ there's no sun up in the sky, Storm -- y Weath -- er, __
	since my man and I __ ain't to -- geth -- er, __ keeps rain -- in' all __ the time. __ _
	Life is

	time, __ _ the time. __ _ So wear -- y all __ the time. __ _

%% part "B"
	When he went a -- way __ the blues walked in and met me. If he stays a -- way __ old rock -- in'
	chair will get me. All I do is pray __ the Lord a -- bove will let me walk in the sun once
	more.

%% part "A"
	Can't go on, __ ev -- 'ry -- thing I had is gone, Storm -- y Weath -- er, __
	since my man and I __ ain't to -- geth -- er, __ keeps rain -- in' all __ the time. __ _
	Keeps rain -- in' all __ the time. __ _
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _
	bare __ gloom and mis -- 'ry ev -- 'ry -- where, Storm -- y Weath -- er, __
	just can't get my poor __ self to -- geth -- er, __ I'm wear -- y all __ the
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
		\smaller \smaller { "Copyright © 1933 MILLIS MUSIC, INC." }
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

