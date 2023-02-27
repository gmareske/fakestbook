

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
% title: Easy To Love
% style: Jazz
% subtitle: From 'Born To Dance'
% composer: Cole Porter
% poet: Cole Porter
% piece: Ballad
% copyright: 1936 by Chappell & Co., Inc.
% copyrightextra: Copyright Renewed, Assigned to John F. Wharton, Trustee of the Cole Porter Musical & Literary Property Trusts Chappell & Co., Inc., owner of publication and allied rights throughout the world
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ac74c90e-0d62-11e1-816c-0019d11e5a41
% structure: ABAC
% structureremark: Can also think of this tune as AB
% location: rbk1:130,jfb:107
% idyoutuberemark1: Ella
% idyoutube1: uYnqy84ZY9Q
% idyoutuberemark2: Billie Holiday
% idyoutube2: izaZR89BJBo
% lyricsurl: http://www.sing365.com/music/lyric.nsf/Easy-To-Love-lyrics-Ella-Fitzgerald/3040B6936D6C386048256AAB00074FEE
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Easy To Love"
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

  \tocItem \markup "Easy To Love / Cole Porter"


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
		d1:m7 | g:m7 | d:m7 | g:7 | \myEndLine
		c:maj7 | f:maj7 | e:m7 |
	} \alternative {
		{
			f:7 | \myEndLine
			\endPart

			\myMark "B"
			\startPart
			d:m7 | g:7 | c:maj7 | a:m7 | \myEndLine
			d:m7 | g:7 | e:m7 | a:7 | \myEndLineVolta
			\endPart
		}
		{
			a:7 | \myEndLine
			\endPart

			\myMark "C"
			\startPart
			d:m7 | f:m6 | c:maj7 | e2:7 ees:dim | \myEndLine
			d1:m7 | g:7 | c1*2:6 | \myEndLineVolta
			\endPart
		}
	}

	\endSong
	\endChords
}



}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Moderato" 4 = 108
	\time 4/4
	\key c \major

%% part "A"
	\repeat volta 2 {
		a'1 | d,2. e4 | f2 e4. f8 | b2. a4 |
		g2 fis4 g | d' des c b | a2 gis4. a8 |
	} \alternative {
		{
			g'!1 |

		%% part "B"
			g | a,2. b4 | e e e2~ | e4 r r2 |
			r4 g g,4. g8 | aes aes4 aes8 a4 a8 b~ | b4 b b2~ | b4 r r2 |
		}
		{
			a'2. e4 |

		%% part "C"
			g2. d4 | f2. c4 | e2 b4 c | d des c b |
			a2 e' | e ees4 d | c1~ \mark \markup { \italic { Fine } } | c4 r r2 |
		}
	}
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	You'd be so Eas -- y To Love,
	So eas -- y to i -- dol -- ize,
	All oth -- ers a -- bove

%% part "B"
	So worth the yearn -- ing for, __
	So swell to keep ev -- 'ry home -- fire burn -- ing for __

	shame

%% part "C"
	that you can't see
	your fu -- ture with me,
	'cause you'd be oh, so Eas -- y To Love! __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	We'd be so grand at the game
	So care -- free to -- get -- her,
	that it does seem a
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
		\smaller \smaller { "Copyright © 1936 by Chappell & Co., Inc." }
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

