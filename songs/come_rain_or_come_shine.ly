

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
% title: Come Rain Or Come Shine
% style: Jazz
% composer: Harold Arlen
% poet: Johnny Mercer
% piece: Moderately
% copyright: 1946, by A-M Music Corp. Copyright Renewed, all rights controlled by Chappell & Co., Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b109cd80-a26e-11df-8c11-0019d11e5a41
% structure: AB
% location: rbk2:63,jfb:86-87
% remark: the my set of chords is from Amit Golan
% idyoutube1: XqECFy_qzkM
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
	      \underline \sans "Come Rain Or Come Shine"
	      \fontsize #1 \lower #1  "- Johnny Mercer / Harold Arlen"
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

  \tocItem \markup "Come Rain Or Come Shine / Harold Arlen, Johnny Mercer"


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
	f2:maj7 b:m7.5- | e:m7.5- a:7.9- | d1:m7 | g:7.9 | \myEndLine
	g1:7.9 | g2:m7 c:7 | f1:7 | c2:m7 f:7 | \myEndLine
	bes1:m7 | f:m | bes2:m g:m7.5- | c:7.5- c4:7.5 c:7.5+ | \myEndLine
	d2:m7.5- g:7.9- | c1:m | c4:m7 f:7 bes:m7 ees:m7 | a2:m7 g4:m7 c:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f2:maj7 b:m7.5- | e:m7.5- a:7.9- | d1:m7 | g:7.9 | \myEndLine
	cis:m7.5- | fis2:m7 b:7 | a1:7 | bes2:7 a:7 | \myEndLine
	d2:7 ees:maj7 | d1:7 | g2:7 aes:7.9 | g2.:7.9 a4:7 | \myEndLine
	d2:m7 g4:7 g:7/f | e2:m7.5- a:7.9- | d1:m7 | g2:m7 c:7 | \myEndLine
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
	\tempo "Moderato" 4 = 100
	\time 4/4
	\key f \major

%% part "A"
	a'4 a8 a a a4 a8 | a4 a8 a a a4 a8 | a f f f~ f2~ | f1 |
	a4 a8 a a a4 a8 | c4 a8 a a a4 a8 | a f f f~ f2~ | f1 |
	bes2 bes4 aes8 bes | c4 f,2 f8 f | bes2 bes4 aes8 bes | c1 |
	d2 d4 c8 d | ees4 c2 c8 d | ees c d4 c bes8 g | a4 g2. |

%% part "B"
	a4 a8 a a a4 a8 | a4 a8 a a a4 a8 | a f f f~ f2~ | f1 |
	b4 b8 b b b4 b8 | b4 b8 b b b4 b8 | cis a a a~ a2~ | a1 |
	d4 d8 d d d4 d8 | d4 d,2 d4 | d' d8 d d d4 d8 | d4 d,2 e4 |
	a a8 bes b d4. | e4 e8 d e d e4 | d1~ | d2 r |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	I'm gon -- na love you like no -- bod -- y's loved you,
	Come Rain Or Come Shine.
	High as a moun -- tain and deep as a riv -- er,
	Come Rain Or Come Shine.

	I guess when you met me
	It was just one of those things.
	But don't ev -- er bet me,
	'Cause I'm gon -- na be true if you let me.

%% part "B"
	You're gon -- na love me like no -- bod -- y's loved me,
	Come Rain Or Come Shine.
	Hap -- py to -- geth -- er, un -- hap -- py to -- geth -- er
	And won't it be fine.

	Days may be cloud -- y or sun -- ny,
	We're in or we're out of the mon -- ey.
	But I'm with you al -- ways,
	I'm with you rain _ or shine!
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
		\smaller \smaller { "Copyright © 1946, by A-M Music Corp. Copyright Renewed, all rights controlled by Chappell & Co., Inc." }
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

