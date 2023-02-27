

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
% title: The Man I Love
% style: Jazz
% composer: George Gershwin
% poet: Ira Gershwin
% piece: Slowly
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: e8ff288e-2233-11e1-9b9f-0019d11e5a41
% structure: AABA
% location: rbk2:229
% idyoutuberemark1: Classic Billie Holiday
% idyoutube1: uzJMTSaAl8g
% idyoutuberemark2: Ella Fitzgerald with Tommy Flanagan on the piano
% idyoutube2: ySszeu4H4QI
% lyricsurl: http://www.sing365.com/music/lyric.nsf/The-Man-I-Love-lyrics-Ella-Fitzgerald/8EE600AB304A9C6948256AAB0009579B
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
	      \underline \sans "The Man I Love"
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

  \tocItem \markup "The Man I Love / George Gershwin, Ira Gershwin"


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

	\myMark "Intro"
	\startPart
	ees1:6 | b2:7 bes:7 | \myEndLine
	\endPart

	\repeat volta 2 {

		\myMark "A"
		\startPart
		ees2. ees4:7 | ees1:m7 | bes:m | c2:7.5+ c:7 | \myEndLine
		aes1:m6 | bes:7 | ees2 aes:maj7 | g:m bes:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		ees2. ees4:7 | ees1:m7 | bes:m | c2:7.5+ c:7 | \myEndLine
		aes1:m6 | bes2:7 bes4:7.11 bes:7 | ees2 aes | ees aes4:7 g:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		c1:m7 | d2:7 bes4:7 d:dim | c1:m | g:7 | \myEndLine
		c:m7 | d2:7 bes4:7 d:dim | c2:m g:dim | aes bes:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		ees2. ees4:7 | ees1:m7 | bes:m | c2:7.5+ c:7 | \myEndLine
		aes1:m | bes2:7 bes4:7.11 bes:7 | ees2 aes |
	} \alternative {
		{
			ees bes:7 | \myEndLineVoltaNotLast
		}
		{
			ees1 | \myEndLineVoltaLast
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
	\tempo "Andante" 4 = 76
	\time 4/4
	\key ees \major

%% part "Intro"
	r8. bes'16[ c8. bes16] c8.[ bes16 ees,8. f16] | ges8-. ges-. ges-. ges-. ges-> f~ f4 |

	\repeat volta 2 {

	%% part "A"
		r8 bes c bes c bes des4 | r8 bes c bes des2 | r8 bes c bes c bes des4 | r8 aes bes aes c2 |
		r8 aes bes aes bes aes ces4 | r8 g aes g bes4 aes | g2 g | g1 |

	%% part "A"
		r8 bes c bes c bes des4 | r8 bes c bes des2 | r8 bes c bes c bes des4 | r8 aes bes aes c2 |
		r8 aes bes aes bes aes ces4 | r8 g aes g bes4 g | ees2 ees | ees1 |

	%% part "B"
		ees8 f g fis g4 ees' | ees d bes b | d c g a | b1 |
		ees,8 f g fis g4 ees' | ees d bes b | d c bes! aes | g f g aes |

	%% part "A"
		r8 bes c bes c bes des4 | r8 bes c bes des2 | r8 bes c bes c bes des4 | r8 aes bes aes c2 |
		r8 aes bes aes bes aes ces4 | r8 g aes g bes4 g | ees2 ees |
	} \alternative {
		{
			ees f |
		}
		{
			ees1 |
		}
	}
}




 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% these are lyrics from the internet adjusted for the real book
\lyricmode {

%% part "Intro"
	_ _ _ _ _ _ _ _ _ _ _ _ _

%% part "A"
	Some -- day he'll come a -- long, the man I love
	And he'll be big and strong, the man I love
	And when he comes my way
	I'll do my best to make him stay

%% part "A"
	He'll look at me and smile, I'll un -- der -- stand
	And in a lit -- tle while he'll take my hand
	And though it seems ab -- surd
	I know we both won't say a word

%% part "B"
	May -- be I shall meet him Sun -- day
	May -- be Mon -- day, may -- be not
	Still I'm sure to meet him one day
	May -- be Tues -- day will be my good news day

%% part "A"
	He'll build a lit -- tle home, just meant for two
	From which we'll ne -- ver roam; Who would, would you?
	And so all else a -- bove
	I'm wait -- ing for the man I love
%% Volta
	_ love
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

