

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
% title: Once I Loved
% style: Jazz
% composer: Antonio Carlos Jobim
% poet: Vinicius DeMoraes, Ray Gilbert
% piece: Bossa
% copyright: 1965, Ipanema Music. Used By Permission.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 18294374-a26f-11df-a5f0-0019d11e5a41
% structure: AAB
% location: rbk1:329,nrbk1:250
% idyoutuberemark1: Joe Henderson accompanied by guitar doing Bossa...
% idyoutube1: rJxHFW2S-Eo
% idyoutuberemark2: Astrud Gilberto (original Bossa Style with Orchestra)
% idyoutube2: BwP0eIRU-dQ
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Once-I-Loved-lyrics-Ella-Fitzgerald/24CD6F6E245519E348256AAB0009C557
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
	      \fontsize #1 \lower #1 \rotate #7 "Bossa"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Once I Loved"
	      \fontsize #1 \lower #1  "- Vinicius DeMoraes, Ray Gilbert / Antonio Carlos Jobim"
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

  \tocItem \markup "Once I Loved / Antonio Carlos Jobim, Vinicius DeMoraes, Ray Gilbert"


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
		g1:m7 | c:7.5+ | f:maj7 | fis:dim7 | \myEndLine
		g:m7 | gis:dim7 | a:m7 | a:m7/g | \myEndLine
		f:m7 | bes:7.5+ | ees1*2:maj7 | \myEndLine
		e1:m7.5- | a:7.9- |
	} \alternative {
		{
			d:maj7 | d:7.9- | \myEndLineVoltaNotLast
		}
		{
			d:maj7 | g:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	c1:maj7 | f:7 | bes1*2:maj7 | \myEndLine
	b1:dim7 | bes:m6 | a:m6 | aes:7.5- | \myEndLine
	g:7 | g2:m7 a:7.9- | d1:m6 | d2:m6 \OPC d:7 | \myEndLine
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
	\tempo "Allegro" 4 = 144
	\time 4/4
	\key f \major

%% part "A"
	\repeat volta 2 {
		d'1~ | d2~ d8 c4 a8~ | a1~ | a2 \tuplet 3/2 { r4 bes c } |
		\tuplet 3/2 { d d d } \tuplet 3/2 { d d d } | d2 \tuplet 3/2 { f4 e d } |
		\tuplet 3/2 { e c a~ } a2~| a2. r4 |
		c1~ | c2~ c8 bes4 g8~ | g1~ | g2 \tuplet 3/2 { r4 g a } |
		\tuplet 3/2 { bes bes a } \tuplet 3/2 { c c bes } | a2 \tuplet 3/2 { g4 bes a } |
	} \alternative {
		{
			g8 fis4 fis8~ fis2~ | fis r
		}
		{
			g8 fis4 a8~ a2 | g8 f!4 a8~ a g4 e8~ |
		}
	}

%% part "B"
	e1 | g2~ g8 f4 d8~ | d1~ | d2 \tuplet 3/2 { r4 d e } |
	\tuplet 3/2 { f f e~ } \tuplet 3/2 { e g ges } | f2~ f8 f4 des8 | e4 d8 d~ d2~ |
	d2 \tuplet 3/2 { r4 d e } | \tuplet 3/2 { f f e~ } \tuplet 3/2 {e g ges } |
	f2~ f8 f4 cis8 | e4. d8 d2~ | d1 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {
	Once __ __ I loved, __ __
	And I gave so much love to this love,
	You were the world to me; __ __

	Once __ __ I cried __ __
	at the thought I was fool -- ish and proud
	and let you say good -- bye. __ __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {
	Then __ __ one day, __ __
	From my in -- fi -- nite sad -- ness you came
	and brought me love a -- gain; __ __
	Now __ __ I know __ __
	that no mat -- ter what -- ev -- er be -- falls
	I'll nev -- er _ _ _ let you go, __

	I will hold __ you close, __
	Make __ you stay; __ __
	Be -- cause love is the __ sad -- dest thing __
	when it goes a -- way, __ __
	Be -- cause love is the __ sad -- dest thing __
	when it goes a -- way, __
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
		\smaller \smaller { "Copyright © 1965, Ipanema Music. Used By Permission." }
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

