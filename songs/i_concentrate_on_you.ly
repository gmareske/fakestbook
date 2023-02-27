

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
% title: I Concentrate On You
% style: Jazz
% composer: Cole Porter
% poet: Cole Porter
% piece: Slowly
% copyright: 1939 by Chappell & Co., Inc.
% copyrightextra: Copyright Renenwed, Assigned to John F. Wharton, Trustee of the Cole Porter Musical & Literary Propery Trusts
% copyrightextraextra: Chappell & Co., Inc. owner of publication and allied rights throughout the World.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 74865056-6f44-11e5-89f9-3860779cb560
% structure: AA'BA''
% location: jfb:152
% idyoutuberemark1: Sinatra in an old school orchestrated version
% idyoutube1: Nir7Yw6mTxM
% idyoutuberemark2: Ella with orchestra
% idyoutube2: u8j79CB2_Bo
% lyricsurl: http://www.azlyrics.com/lyrics/franksinatra/iconcentrateonyou.html
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
	      \underline \sans "I Concentrate On You"
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

  \tocItem \markup "I Concentrate On You / Cole Porter"


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
		ees1:6 | ees:maj7 | bes1*2:7 | ees1:m7 | des2:m7 ges:9 | ces1:6 | aes2:m7 aes:m7/ges | \myEndLine
		f1:m7.5- | bes:7 | ees:m6 | c:m7.5- | f:7 | bes:7 | ees:6 | f2:m7 bes:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		ees1:6 | ees:maj7 | bes1*2:7 | ees1:m7 | des2:m7 ges:9 | ces1:6 | ces2:6 ces/bes | \myEndLine
		aes1:m7 | des:7 | ges:maj7 | b:maj7 | f:7 | bes:7 | ees2:6 aes:6 | ees ees:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		aes1:maj7 | aes:m7 | ees | g2:m7 c:7 | f1:m7 | bes:7 | ees:maj7 | ees:7 | \myEndLine
		aes:maj7 | des:7 | ges2:maj7 ges/f | ees:m7 ees:m/des | c1:m7.5- | f:7 | bes2 bes:maj7 | bes1:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		ees | ees:maj7 | a:m7.5- | d:7 | bes:m7 | ees2:7 aes:maj7 | d1:m7.5- | g:7 | \myEndLine
		g:m7.5- | c:7.5+ | f:m | fis:dim7 | f:7.5-/ces | bes:7 |
	} \alternative {
		{
			ees | f2:m7 bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees2:6 aes:6 | ees1:6 | f1*2:m7 | bes1:7.9- | bes2:7.9- e:9 | ees1*4:6.9 | \myEndLineVoltaLast
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
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		r4 bes c ees | d2. c4 | d4. d8 d2~ | d2. r4 | r ees \tuplet 3/2 { ges aes bes } | aes2. ges4 | aes1~ | aes2. r4 |
		r aes \tuplet 3/2 { aes bes ces } | bes a aes2 | r4 aes ges f | ges1 | r4 f aes g | ges f2 ees4~ | ees1~ | ees2. r4 |

	%% part "A"
		r bes c ees | d2. c4 | d4. d8 d2~ | d2. r4 | r ees \tuplet 3/2 { ges aes bes } | aes2. ges4 | aes1~ | aes2. r4 |
		r aes \tuplet 3/2 { ces des ees } | des c! ces2 | r4 b bes a | bes1 | r4 f aes g | ges f2 ees4~ | ees1~ | ees4 r ees ees |

	%% part "B"
		c'2. c4 | b2. b4 | b2 bes2~ | bes bes,4. bes8 | aes'2. aes4 | aes2 g4. fis8 | g1~ | g2 ees4. ees8 |
		c'2 c4 c | ces2 \tuplet 3/2 { ces4 des ces } | ces2 bes~ | bes4 bes bes bes | bes2. bes4 | c2. bes8 c | d1~ | d2. r4 |

	%% part "A"
		r ees ees ees | d2. bes4 | c4. c8 c2~ | c2. r4 | r c b c | bes!2 \tuplet 3/2 { bes,4 c ees } | g1~ | g2. r4 |
		r g bes a | aes!2. g4 | g f e4. f8 | c'1 | r4 f, aes g | ges f2 ees4~ |
	} \alternative {
		{
			ees1~ | ees2. r4 |
		}
		{
			ees1~ | ees2 ees | f4. f8 f2~ | f f | g4. g8 g2~ | g bes | bes1~ | bes~ | bes4 r r2 | r1 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	When -- ev -- er skies look grey to me __
	and trou -- ble be -- gins to brew, __
	when -- ev -- er the win -- ter winds be -- come too strong,
	I Con -- cen -- trate On You. __

%% part "A"
	When for -- tune cries "\"nay," "nay!\"" to me __
	and peo -- ple de -- clare "\"You're" "through,\"" __
	when -- ev -- er the blues be -- come my on -- ly song,
	I Con -- cen -- trate On You. __

%% part "B"
	On your smile so sweet, so ten -- der, __
	when at first my kiss you de -- cline. __
	On the light in your eyes,
	when you sur -- ren -- der __ and once a -- gain our arms in -- ter -- twine. __

%% part "A"
	And so when wise -- men say to me __
	that love's young dream nev -- er comes true. __
	To prove that e -- ven wise -- men can be wrong,
	I Con -- cen -- trate On You. __
	_ I con -- cen -- trate, __ and con -- cen -- trate __ on you. __
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
		\smaller \smaller { "Copyright © 1939 by Chappell & Co., Inc." }
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

