

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
% title: Honeysuckle Rose
% style: Jazz
% composer: Thomas 'Fats' Waller
% poet: Andy Razaf
% piece: Medium, with a lift
% copyright: 1929 Santly Bros., Inc.
% copyrightextra: Copyright Renewed, Waller's Interet controller by Chappell & Co., Inc. (Interson Music, Publisher), Razaf's interest controlled by Razaf Music Co., co/o The Songwriters Guild
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 1afdbda2-da81-11e3-a538-a3a8bef9e7c8
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
	      \fontsize #1 \lower #1 \rotate #7 "Medium, with a lift"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Honeysuckle Rose"
	      \fontsize #1 \lower #1  "- Andy Razaf / Thomas 'Fats' Waller"
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

  \tocItem \markup "Honeysuckle Rose / Thomas 'Fats' Waller, Andy Razaf"


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

	\repeat volta 2 {

		\myMark "A"
		\startPart
		g2:m7 c:7 | g:m7 c:7 | g:m7 c:7 | g:m7 c:7 | \myEndLine
		f d:m7 | g2:m7 c:7 | f1 | a2:m7.5- d:7.9- | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g:m7 c:7 | g:m7 c:7 | g:m7 c:7 | g:m9 c:7 | \myEndLine
		f aes:dim7 | g:m7 c:7 | f des:7 | g:m7 f | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		f:7 c:m7 | f:dim f:7 | bes f:9 | ges4:9 f:9 bes2 | \myEndLine
		g:7 d:m7 | g:dim g:7 | c:7 g:m7 | aes4:9 g:9 c2:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		g:m7 c:7 | g:m7 c:7 | g:m7 c:7 | g:m9 c:7 | \myEndLine
		f gis:dim7 | g:m7 c:7 |
	} \alternative {
		{
			f1 | a2:m7.5- d:7.9- | \myEndLineVoltaNotLast
		}
		{
			f2 des:7 | g4:m7 ges:7 f2:6 | \myEndLineVoltaLast
		}
	}
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
	\time 2/2
	\key f \major

	\repeat volta 2 {

	%% part "A"
		c'8 bes d, f a2 | c8 bes d, f a2 | c8 bes d, f a4 a | a2 a8 g f d |
		f4 f f2~ | f a8 g f d | f1~ | f4 r r2 |

	%% part "A"
		c'8 bes d, f a2 | c8 bes d, f a2 | c8 bes d, f a4 a | a2 a8 g f d |
		f4 f f2~ | f a8 g f d | f1~ | f4 r r2 |

	%% part "B"
		f2 g | gis a | r4 bes8 c~ c bes c4 | des c8 bes~ bes2 |
		g a | ais b | r4 c8 d~ d c d4 | ees d8 c~ c2 |

	%% part "A"
		c8 bes d, f a2 | c8 bes d, f a2 | c8 bes d, f a4 a | a2 a8 g f d |
		f4 f f2~ | f a8 g f d |
	} \alternative {
		{
			f1~ | f4 r4 r2 |
		}
		{
			f1~ | f2~ f8 r8 r4 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Ev -- 're hon -- ey bee fills with jeal -- ous -- y when they see you out with me, I don't blame them, good -- ness knows, __
	Hon -- ey -- sucke -- le Rose. __ When you're pass -in' by, flow -- ers droop and sigh, and I know the rea -- son
	why; You're much sweet -- er good -- ness knows, __ Hon -- ey -- suck -- le Rose. __ Don't buy sug -- ar,
	you just have to touch my cup. __ You're my sug -- ar, it's sweet when you stir it up. __
	When I'm tak -- in' sips from your tas -- ty lips, seems the hon -- ey fair -- ly drips. You're con -- fec -- tion, good -- ness knows, __
	Hon -- ey -- suck -- le rose. __
	Rose. __
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
		\smaller \smaller { "Copyright © 1929 Santly Bros., Inc." }
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

