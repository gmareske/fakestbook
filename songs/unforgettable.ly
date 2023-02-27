

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
% title: Unforgettable
% style: Jazz
% composer: Irving Gordon
% poet: Irving Gordon
% piece: Moderately
% copyright: 1951, Bourne Co. Copyright Renewed.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 3162420a-a26f-11df-aacf-0019d11e5a41
% structure: AB
% location: jfb:406-407
% idyoutuberemark1: Nat King Cole the unforgettable...
% idyoutube1: S1UEzL9poPM
% idyoutuberemark2: Nat King Cole with Natalie Cole duet...
% idyoutube2: 2uRtNMFfF-g
% lyricsurl: http://www.sing365.com/music/lyric.nsf/unforgettable-lyrics-nat-king-cole/afdec7063791226248256af1000bbaa6
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
	      \underline \sans "Unforgettable"
	      \fontsize #1 \lower #1  "- Irving Gordon"
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

  \tocItem \markup "Unforgettable / Irving Gordon"


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
	g1 | g:maj7 | g1*2:dim7 | \myEndLine
	c1 | c:maj7 | a2:7.9 e:m7 | a1:7.9 | \myEndLine
	f:6 | f:m7 | c2 e:m7.5-/b | a1:7 | \myEndLine
	d:7.9 | d2.:7.9 des4:7 | d1*2:7 | \myEndLineVolta
	\endPart

	\myMark "B"
	\startPart
	g1 | g:maj7 | g1*2:dim7 | \myEndLine
	c1 | c:maj7 | a2:7.9 e:m7 | a1:7.9 | \myEndLine
	f:6 | f:m | c | a2:7 a:7.9 | \myEndLine
	d1:7.9 | d2:m7 g:7 | c d4:m7 des:maj7 | c1:6.9 | \myEndLineVolta
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
	\tempo "Allegro" 4 = 130
	\time 4/4
	\key g \major

	\repeat unfold 2 {
		d4 e e8 fis4 fis8~ | fis2 \tuplet 3/2 { d4 e g } | fis1~ | fis2. r4 |
		g4 a a8 b4 b8~ | b2 \tuplet 3/2 { g4 a c } | b1~ | b2. r4 |
		c d d c | c d8 ees~ ees d c4 | g a a g | g a8 b~ b a g4 |
	} \alternative {
		{
			e e a e~ | e2. f4 | fis? fis c' fis,~ | fis2. r4 |
		}
		{
			d e e d | d e8 g~ g e d4 | c1~ | c2. r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {
	Un -- for -- get -- ta -- ble, __ that's what you are, __
	Un -- for -- get -- ta -- ble, __ tho' near or far. __
	Like a song of love that clings __ to me,
	how the thought of you does things __ to me,
	nev -- er be -- fore __ has some -- one been more __

	Un -- for -- get -- ta -- ble, __ in ev -- 'ry way, __
	and for -- ev -- er more, __ that's how you'll stay. __
	That's why, dar -- ling, it's in -- cred -- i -- ble,
	that some -- one so Un -- for -- get -- __ ta -- ble,
	thinks that I am Un -- for -- get -- __ ta -- ble too. __
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
		\smaller \smaller { "Copyright © 1951, Bourne Co. Copyright Renewed." }
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

