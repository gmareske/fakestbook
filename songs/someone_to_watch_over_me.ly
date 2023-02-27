

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
% title: Someone To Watch Over Me
% style: Jazz
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Jazz Ballad
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 75cbb354-1411-11e0-9a9e-0019d11e5a41
% structure: AABA
% location: rbk2:331
% idyoutube1: CCTIpclVQe4
% idyoutube2: gLqsIIrk5wQ
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
	      \fontsize #1 \lower #1 \rotate #7 "Jazz Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Someone To Watch Over Me"
	      \fontsize #1 \lower #1  "- Ira Gershwin / George Gershwin"
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

  \tocItem \markup "Someone To Watch Over Me / George Gershwin, Ira Gershwin"


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
		aes2:maj7 aes:7 | d:m7.5- des:dim7 | c:m7 b:dim7 | bes:m6 c4:m7 f:7.5+ | \myEndLine
		bes2:m7 c4:m7 des:6 | d2:dim7 ees:7.4 |
	} \alternative {
		{
			c:m7 f:7 | bes:m7 ees:7 | \myEndLineVoltaNotLast
		}
		{
			aes1:maj7 | ees2:m7 aes:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
		des1:maj7 | des1:maj7 | des2:maj7 d:dim7 | aes1:maj7/ees | \myEndLine
		d:m7.5- | g:7 | c2:m7 f:7.9- | bes:m7 ees:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
		aes2:maj7 aes:7 | d:m7.5- des:dim7 | c:m7 b:dim7 | bes:m6 c4:m7 f:7.5+ | \myEndLine
		bes2:m7 c4:m7 des:6 | d2:dim7 ees:7.4 | aes:maj7 f:7 | bes:m7 ees:7 | \myEndLine
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
	\tempo "Andante" 4 = 92
	\time 4/4
	\key aes \major

%% part "A"
	\repeat volta 2 {
		r4 aes8 bes c ees f aes | bes bes4 aes8 g2 | aes8 aes4 g8 f2 | g8 g4 f8 ees2 |
		r4 f ees des | aes'2 aes,8 bes4. |
	} \alternative {
		{ c1~ | c2 r | }
		{ aes1 | r4 bes c ees | }
	}

%% part "B"
	g4 aes g aes | bes aes2 g4 | bes aes2 g4 | bes aes2 f4 |
	aes g2 f4 | aes g2 e4 | c1~ | c2 r |

%% part "A"
	r4 aes8 bes c ees f aes | bes bes4 aes8 g2 | aes8 aes4 g8 f2 | g8 g4 f8 ees2 |
	r4 f ees des | aes'2 aes,8 bes4. | aes1 | r |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% lyrics from the internet adjusted for the real book
\lyricmode {
%	There's a saying old, says that love is blind
%	Still we're often told, "seek and ye shall find"
%	So I'm going to seek a certain lad I've had in mind

%	Looking everywhere, haven't found him yet
%	He's the big affair I cannot forget
%	Only man I ever think of with regret

%	I'd like to add his initial to my monogram
%	Tell me, where is the shepherd for this lost lamb?

%% part "A"
	There's a some -- bo -- dy I'm lon -- gin' to see
	I hope that he, turns out to be
	Some -- one who'll watch o -- ver me

	me

%% part "B"
	Al -- though he may not be the man some
	Girls think of as hand -- some
	To my heart he car -- ries the key

%% part "A"
	Won't you tell him please to put on some speed
	Fol -- low my lead, oh, how I need
	Some -- one to watch o -- ver me

%	Won't you tell him please to put on some speed
%	Follow my lead, oh, how I need
%	Someone to watch over me

%	Someone to watch over me
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	I'm a lit -- tle lamb who's lost in the wood
	I know I could, al -- ways be good
	To one who'll watch o -- ver %% me
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

