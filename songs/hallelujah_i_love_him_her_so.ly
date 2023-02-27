

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
% title: Hallelujah I Love Him (Her) So
% style: Jazz
% composer: Ray Charles
% poet: Ray Charles
% piece: Moderately
% copyright: 1956 & 1959 by Hill & Range Snogs, Inc.
% copyrightextra: Copyright renewed, all rights controlled by Unichappell Music, Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: d387ae5e-a26e-11df-9edf-0019d11e5a41
% structure: ABA
% location: jfb:141
% idyoutuberemark1: Ray Charles live!
% idyoutube1: Cf0X7QuK4LI
% idyoutuberemark2: The original version
% idyoutube2: rWGG6MdGdlg
% lyricsurl: http://www.lyrics007.com/Peggy%20Lee%20Lyrics/Hallelujah,%20I%20Love%20Him%20So%20Lyrics.html
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
	      \underline \sans "Hallelujah I Love Him (Her) So"
	      \fontsize #1 \lower #1  "- Ray Charles"
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

  \tocItem \markup "Hallelujah I Love Him (Her) So / Ray Charles"


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
	f2 f/a | bes b4:dim7 c:7 | f2 f/a | bes b4:dim7 c:7 | \myEndLine
	f1 | f2.:7 f4:7.5+ | bes1 | b:dim7 | \myEndLine
	f2 a:7 | d:m bes:7 | g:7 c:7.11 | f1 | \myEndLine

	\myMark "B"
	bes1:6 | b:dim7 | f | f:7 | \myEndLine
	bes:7.9 | aes:9 | g:7 | c:7 | \myEndLine

	\myMark "A"
	f2 f/a | bes b4:dim7 c:7 | f2 f/a | bes b4:dim7 c:7 | \myEndLine
	f1 | f2.:7 f4:7.5+ | bes1 | b:dim7 | \myEndLine
	f2 a:7 | d:m bes:7 | g:7 c:7.11 | f bes:7 | f1 | \myEndLine

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key f \major

%% part "A"
	r8. c'16[ d8. c16] aes8.[ g16 f8. d16] | f4 f8 aes~ aes r r4 |
	r8. c16[ d8. c16] aes8.[ g16 f8. d16] | f4 f8 d~ d8. c16 r4 |
	r4 d'8. c16 aes8.[ g16 f8. d16] | f4 f8 f~ f r r4 |
	r8. d16[ f8. d16] f8.[ d16 f8. d16] | f4 f8 f~ f8.[ c16 d8. f16] |
	a8 c4. r4 a8. a16 | g8 f4. r4 aes8. g16 |
	aes8.[ g16 f8. d16] f4 f8 f~ | f r r4 r2 |

%% part "B"
	r8. d16[ f8. d16] f8.[ d16 f8. d16] | f8. f16 f4 r2 |
	r4 a d8.[ c16 a8. f16] | a4 f8 g~ g4 r |
	r f8. d16 f8.[ d16 f8. d16] | f4 f8 f~ f r r4 |
	r8. d16[ g8. d16] r2 | g8 a4 d8~ d4 c |

%% part "A"
	r4 d8. c16 aes8.[ g16 f8. d16] | f4 f8 aes~ aes r r4 |
	r4 d8. c16 aes8.[ g16 f8. d16] | f4 f8 d~ d8. c16 r4 |
	r8. c'16[ d8. c16] aes8.[ g16 f8. d16] | f4 f8 f~ f r r4 |
	r8. d16[ f8. d16] f8.[ d16 f8. d16] | f4 f8 f~ f8.[ c16 d8. f16] |
	a8 c4. r4 a8. a16 | g8 f4. r4 aes8. g16 |
	aes8.[ g16 f8. d16] f4 f8 f~ | f1~ | f2 r |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	_ Let me tell you 'bout a boy I know. __
	He is my ba -- by and he lives next door __ _
	Ev -- 'ry morn -- ing 'fore the sun comes up __
	he brings my cof -- fee in my fav -- 'rite cup __
	That's why I know, __ _ yes, I know, __ _ Hal -- le -- lu -- jah, I just love him so. __

%% part "B"
	Now if I call him on the tel -- e -- phone,
	and tell him that I'm all a -- lone, __
	by the time I count from one to four, __
	I hear him on my door. __ _

%% part "A"
	In the eve -- ning when the sun goes down, __
	when there is no -- bod -- y else a -- round __ _
	he kiss -- es me __ _ and he holds me tight. __
	He tells me "\"Ba" -- by ev -- 'ry -- thing's all "right.\""
	That's why I know, __ _ yes, I know. __ _ Hal -- le -- lu -- jah, I just love him so. __
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
		\smaller \smaller { "Copyright © 1956 & 1959 by Hill & Range Snogs, Inc." }
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

