

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
% title: I'll Close My Eyes
% style: Jazz
% composer: Billy Reid
% poet: Buddy Kaye
% piece: Medium Swing
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: e7277c50-a26e-11df-863c-0019d11e5a41
% structure: AB
% structureremark: this tunes structure could also be thought of as ABAC since the begining of the A and part B (the first 8 bars) under the AB interpretation is exactly the same.
% location: rbk3:130
% remark: the My version is from Amit Golan
% idyoutube1: 7Oh-Dl-KbF0
% idyoutube2: u6lXbfx1hHw
% lyricsurl: http://lyricsplayground.com/alpha/songs/i/illclosemyeyes.shtml
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium Swing"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "I'll Close My Eyes"
	      \fontsize #1 \lower #1  "- Buddy Kaye / Billy Reid"
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

  \tocItem \markup "I'll Close My Eyes / Billy Reid, Buddy Kaye"


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

	\partial 8*5 s8 s2 |

	\myMark "A"
	\startPart
	f1*2:maj7 | e1:m7.5- | a:7.9- | \myEndLine
	d:m7 | g:7 | c:m7 | f:7 | \myEndLine
	bes:maj7 | ees:7 | f1*2:maj7 | \myEndLine
	b1:m7.5- | e:7 | a2:m7 aes:dim7 | g:m7 ges:7/c | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	f1*2:maj7 | e1:m7.5- | a:7.9- | \myEndLine
	d:m7 | g:7 | c:m7 | f:7 | \myEndLine
	bes:maj7 | ees:7 | a1:m7.5- | d:7.9- | \myEndLine
	g:m7 | c:7 | f2:maj7 d:7 | g:m7 c:7 | \myEndLine
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
	\tempo "Allegro" 4 = 150
	\time 4/4
	\key f \major

	\partial 8*5 c8 bes'4 c8 a~ |

%% part "A"
	a1 | r4 r8 c, bes'4 a | a4 g8 e8~ e2 | r4 a, g'4 a8 f~ |
	f1 | r4 r8 f a4 f8 ees8~ | ees1 | r2 r4 ees |
	des d c'2 | r4 r8 bes f4 g | a1 | r2 r4 a |
	gis1 | r4 r8 e g4 f | e1 | r4 r8 c bes'4 c8 a~ |

%% part "B"
	a1 | r4 r8 c, bes'4 a | a4 g8 e8~ e2 | r4 a, g'4 a8 f~ |
	f1 | r4 r8 f a4 f8 ees8~ | ees1 | r2 r4 ees |
	des d c'2 | r4 r8 bes f4 g | a1 | r4 r8 a c4 b |
	bes4. d,8 e4 f | g2 a | f1~ | f2 r2 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	







\lyricmode {

%% part "A"
	I'll Close My Eyes __
	To eve -- ry -- one but you __
	And when I do __
	I'll_see_you stand -- ing there __

	I'll lock my heart
	To any_other ca -- ress
	I'll_never_say yes
	To_a_new love af -- fair

%% part "B"
	Then_I'll Close My Eyes __
	To eve -- ry -- thing that's gay __
	If you_are not there __
	Oh,_to_share_each love -- ly day __

	And through the years
	In_those moments When_we're_far apart
%%Do -- n't you know
	I'll Close My Eyes
	And I'll see you_with my heart __
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
		\smaller \smaller { "-- help me fill it out this copyright notice --" }
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

