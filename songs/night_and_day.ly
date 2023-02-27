

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
% title: Night And Day
% style: Jazz
% composer: Cole Porter
% poet: Cole Porter
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: f3f8f010-3fda-11e2-ad72-a3725b0aaeaa
% structure: AAB
% location: kw:42,rbk1:320
% idyoutuberemark1: Cannonical version by Frank Sinatra
% idyoutube1: mGGirB4XOmI
% idyoutuberemark2: Cole Porter version
% idyoutube2: 5WX_fKVWX2s
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/night+day_20055251.html
% wiki: Night_and_Day_(song)
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
	      \fontsize #1 \lower #1 \rotate #7 ""
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Night And Day"
	      \fontsize #1 \lower #1  "- Cole Porter"
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

  \tocItem \markup "Night And Day / Cole Porter"


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

	\partial 2 s2 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		d1:m7.5- | g:7 | c1*2:maj7 | \myEndLine
		d1:m7.5- | g:7 | c1*2:maj7 | \myEndLine
		fis1:m7.5- | f:m7 | e:m7 | ees:dim7 | \myEndLine
		d:m7 | g:7 | c:maj7 |
	} \alternative {
		{
			c:maj7 | \myEndLineVoltaNotLast
		}
		{
			bes:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	ees1*2:maj7 | c:maj7 | \myEndLine
	ees:maj7 | c:maj7 | \myEndLine
	fis1:m7.5- | f:m7 | e:m7 | ees:dim7 | \myEndLine
	d:m7 | g2:7 d:m7 | c1:6 | \LPC d2:7 \RPC g:7 | \myEndLine
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
	\key c \major

	\partial 2 g'4 g8 g~ |

%% part "A"
	\repeat volta 2 {
		g1~ | g2 \tuplet 3/2 { f4 e dis } | e1~ | e2 g4 g8 g~ |
		g4 g g g | g f \tuplet 3/2 { f e dis } | e1~ | e2 e4. e8 |
		e4 e e e | ees2~ ees8 ees4 ees8 | d4 d d d | d des8 c~ c4 b |
		a4 aes8 g~ g2 | g g'4 g8 g~ | g1~ |
	} \alternative {
		{
			g2 g4 g8 g |
		}
		{
			g2 g4 g |
		}
	}

%% part "B"
	bes1~ | bes2 \tuplet 3/2 { g4 f ees } | g g8 g~ g2~ | g g4. g8 |
	bes c4 bes8 c4 bes8 c~ | c bes4 g8~ \tuplet 3/2 { g4 f ees } | g g8 g~ g2~ | g2 e!4. e8 |
	e4 e e e | ees2~ ees8 ees4 ees8 | d4 d d d | d8 des c b'~ b bes a4 |
	g4 g8 g~ g2~ | g c4 c8 c~ | c1 | r |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	Night And Day __
	You are the one __
	On -- ly you __ be -- nea -- th the moon
	And under the sun __
	Whe -- ther near to me or far __ _
	No mat -- ter, dar -- ling Where you are __ _
	I think of __ you
	Night And Day __

	Day and night __

%% part "B"
	_ Night And Day
	Un -- der the hide of me __
	There's an oh such a hun -- gry
	Year -- __ nin' bur -- __ nin' in -- side of me __
	And its tor -- ment won't be through __
	'Til you let me spend my life
	Mak -- ing love __ to you
	Day and night __
	Night And Day __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ _ _
	Why it is so __
	That this long -- __ ing for you
	Fol -- lows wher -- ever I go. __
	In the roa -- rin' tra -- ffic's boom __
	In the si -- lence of my lone -- ly room __ _
	I think of __ you
	Night And Day __
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

