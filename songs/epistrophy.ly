

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
% title: Epistrophy
% style: Jazz
% composer: Thelonius Monk
% piece: Bop
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 736a8ed2-ea4b-11e3-8549-ff0ac7b12d0d
% structure: ABCB
% location: rbk1:138
% idyoutuberemark1: Monk live!
% idyoutube1: dZ9El7k4mNo
% idyoutuberemark2: Monk and Coltrane
% idyoutube2: K_h1geOaLvY
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
	      \fontsize #1 \lower #1 \rotate #7 "Bop"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Epistrophy"
	      \fontsize #1 \lower #1  "- Thelonius Monk"
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

  \tocItem \markup "Epistrophy / Thelonius Monk"


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
	cis2:7 d:7 | cis:7 d:7 | cis:7 d:7 | cis:7 d:7 | \myEndLine
	dis:7 e:7 | dis:7 e:7 | dis:7 e:7 | dis:7 e:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	dis:7 e:7 | dis:7 e:7 | dis:7 e:7 | dis:7 e:7 | \myEndLine
	cis:7 d:7 | cis:7 d:7 | cis:7 d:7 | cis:7 d:7 | \myEndLine
	\endPart

	\myMark "C"
	\startPart
	fis1*4:m | \myEndLine
	b1*2:7 | des1:7 | d:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	dis2:7 e:7 | dis:7 e:7 | dis:7 e:7 | dis:7 e:7 | \myEndLine
	cis:7 d:7 | cis:7 d:7 | cis:7 d:7 | \mark \markup { \musicglyph #"scripts.coda" } cis:7 d:7 | \myEndLine
	\endPart

%%\myMark "Coda"
	\mark \markup { \musicglyph #"scripts.coda" }
	\startPart
	cis:7 d:7 | ges1:7.11+ | \myEndLine
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

%% part "A"
	r4 cis8 d ais' b4. | cis,8 d ais' b~ b4 r | r cis,8 d bes' e,4. | cis8 d bes' e,~ e4 r |
	r4 dis8 e c' cis4. | dis,8 e c'! cis~ cis4 r | r dis,8 e c'! fis,!4. | dis8 e c' fis,~ fis4 r |

%% part "B"
	r4 dis8 e c' cis4. | dis,8 e c'! cis~ cis4 r | r dis,8 e c'! fis,!4. | dis8 e c' fis,~ fis4 r |
	r4 cis8 d ais' b4. | cis,8 d ais' b~ b4 r | r cis,8 d bes' e,4. | cis8 d bes' e,~ e4 r |

%% part "C"
	fis,4-> fis-> cis'8 dis fis gis | a4 gis8 a fis4 dis | fis,-> fis-> cis'8 dis fis a | r a4 gis8 fis4 dis |
	b-> b-> cis8 dis fis gis | b4 a8 b a4 fis | f!8 aes ces ees~ ees ces4. | fis,8 a c! e~ e c4. |

%% part "B"
	r4 dis,8 e c' cis4. | dis,8 e c'! cis~ cis4 r | r dis,8 e c'! fis,!4. | dis8 e c' fis,~ fis4 r |
	r4 cis8 d ais' b4. | cis,8 d ais' b~ b4 r | r cis,8 d bes' e,4. | cis8 d bes' e,~ e4 r |

%% part "Coda"
	cis8 d ais' b~ b4 a!8 c~ | c1\fermata |
}
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

