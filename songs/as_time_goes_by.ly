

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
% title: As Time Goes By
% style: Jazz
% composer: Herman Hupfeld
% poet: Herman Hupfeld
% piece: Ballad
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 0a7b423c-7a4e-11e1-8d67-878c1414bdce
% structure: AABA
% location: rbk1:31
% idyoutuberemark1: Classic Billie Holiday
% idyoutube1: vYoet7-qDHI
% idyoutuberemark2: The classic Sinatra performance with the Casablanca footage
% idyoutube2: AY62QByUYJQ
% lyricsurl: http://www.lyrics007.com/Frank%20Sinatra%20Lyrics/As%20Time%20Goes%20By%20Lyrics.html
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
	      \underline \sans "As Time Goes By"
	      \fontsize #1 \lower #1  "- Herman Hupfeld"
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

  \tocItem \markup "As Time Goes By / Herman Hupfeld"


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

	\partial 8 s8 |

	\myMark "A"
	\startPart
	\repeat volta 2 {
		f2:m7 bes:7 | bes:m6 bes:7 | ees:6 f:m7 | fis:dim7 g:m7 | \myEndLine
		f1:7 | f2:m7 bes:7 |
	} \alternative {
		{
			ees1:maj7 | f2:m7 bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees1:6 | bes2:m7 ees:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	aes1:maj7 | c:7 | f:m | a:dim | \myEndLine
	c2:m aes:7 | f1:7 | bes2:7 bes:dim | bes1:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2:m7 bes:7 | bes:m6 bes:7 | ees:6 f:m7 | fis:dim7 g:m7 | \myEndLine
	f1:7 | g2:m7 c:7 | f:m7 bes:7 | ees4:6 des:7 ees:6 \OPC bes:7 | \myEndLine
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
	\tempo "Andante" 4 = 76
	\time 4/4
	\key ees \major

	\partial 8 g'8 |

%% part "A"
	\repeat volta 2 {
		aes g f ees f4. g8 | bes aes g f aes4. bes8 | ees d c bes c2 | r2 r4 d |
		f8 ees d c d4 ees | bes bes ees, f |
	} \alternative {
		{
			g1~ | g2 r4 r8 g |
		}
		{
			ees1~ | ees2 r |
		}
	}

%% part "B"
	ees8 f ees c'~ c4 c | c8 des c b c2 | f,8 g f c'~ c4 c | c8 des c b c2 |
	g8 aes g ees'~ ees4 ees | ees8 d ees d f4 d | c c g g | bes2. r8 g |

%% part "A"
	aes g f ees f f4 g8 | bes aes g f aes aes4 bes8 | ees d c bes c2 | r r4 d |
	f8 ees d c d4 ees | bes bes2 g4 | bes2 bes | ees2. r8 g, |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	You must re -- mem -- ber this
	A kiss is still a kiss
	A sigh is still a sigh
	The fun -- da -- men -- tal things app -- ly
	As Time Goes By __

%% part "A"
	And _

%% part "B"
	Moon -- light and love __ songs- nev -- er out of date
	Hearts full of pas -- __ sion- jea -- lou -- sy and hate
	Wo -- men needs man- __ and man must have his mate
	That no one can de -- ny

%% part "A"
	It's still the same old sto -- ry
	A fight for love and glo -- ry
	A case of do or die
	The world will al -- ways wel -- come lov -- ers
	As Time Goes By
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	And when two lov -- ers woo
	They still say: "\"I" love "you\""
	On that you can re -- ly
	No mat -- ter what the fu -- ture brings
	As Time Goes _ _ By __
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

