

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
% title: All Of Me
% style: Jazz
% composer: Seymour Simons, Gerald Marks
% poet: Seymour Simons, Gerald Marks
% piece: Mod. Swing
% copyright: 1931 Bourne Co. Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 6dd0233c-03b8-11e1-b5a9-0019d11e5a41
% structure: AB
% structureremark: the structure of this tune could also be interpreted as ABAC since the 8 first bars of A and B are the same.
% location: rbk1:16,jfb:39
% idyoutuberemark1: Louis Armstrong with amazing rythm
% idyoutube1: wFzxo-XI8As
% idyoutuberemark2: Ella Firtzerald - amazing
% idyoutube2: Mx5b4AFVaT8
% idyoutuberemark3: Oscar - amazing version
% idyoutube3: aNLvaBCFHdE
% lyricsurl: http://www.lyrics007.com/Frank%20Sinatra%20Lyrics/All%20Of%20Me%20Lyrics.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Mod. Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "All Of Me"
	      \fontsize #1 \lower #1  "- Seymour Simons, Gerald Marks"
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

  \tocItem \markup "All Of Me / Seymour Simons, Gerald Marks"


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
	c1*2:maj7 | e:7 | \myEndLine
	a:7 | d:m | \myEndLine
	e:7 | a:m | \myEndLine
	d:7 | d1:m7 | g:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1*2:maj7 | e:7 | \myEndLine
	a:7 | d:m | \myEndLine
	f1 | f:m | c2:maj7 e:m7 | a1:7 | \myEndLine
	d:m7 | g:7 | c2:6 \LPC ees:dim | d:m7 \RPC g:7 | \myEndLine
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
	\time 4/4
	\key c \major

%% part "A"
	c'4 g8 e~ e2~ | e \tuplet 3/2 { c'4 d c } | b gis8 e~ e2~ | e1 |
	a4. g8 e2~ | e4 dis \tuplet 3/2 { e bes' a } | g2 f~ | f1 |
	e4. ees8 d2~ | d \tuplet 3/2 { e4 gis b } | d2 c~ | c1 |
	b4. bes8 a2~ | a \tuplet 3/2 { a4 d b } | a1 | b |

%% part "B"
	c4 g8 e~ e2~ | e \tuplet 3/2 { c'4 d c } | b gis8 e~ e2~ | e1 |
	a4. g8 e2~ | e4 dis \tuplet 3/2 { e bes' a } | g2 f~ | f1 |
	d'2 c4 b | d2. c4 | b2 e,4 g | b2. a4 |
	c2 a4 c | e2 e | c1~ | c |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	All of me __
	why not take all of me __
	Can't you see __
	I'm no good with -- out you __

	Take my lips __
	I want to lose them __
	Take my arms __
	I'll ne -- ver use them __

%% part "B"
	Your good -- bye __
	left me with eyes that cry __
	How can I __
	get a -- long with -- out you __

	You took the part
	that once was my heart
	So why not
	take all of me __
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
		\smaller \smaller { "Copyright © 1931 Bourne Co. Copyright Renewed" }
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

