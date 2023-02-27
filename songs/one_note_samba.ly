

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
% title: One Note Samba
% style: Jazz
% subtitle: Samba de uma nota so
% composer: Antonio Carlos Jobim
% poet: Newton Mendonca
% piece: Samba
% copyright: 1961, 1962 by Antonio Carlos Jobim and Mrs. Mendonca, Brazil
% copyrightextra: Sole Selling Agent Duchess Music Croporation (MCA), New York, NY for all English Speaking Countries
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 21bc8284-a26f-11df-a829-0019d11e5a41
% structure: ABA'
% location: jfb:289,rbk1:331
% idyoutuberemark1: Dizzy Gilespie in a great version
% idyoutube1: Jb7LqPmWBKw
% idyoutuberemark2: The only performance of Jobim in Japan
% idyoutube2: eEkMwotUuic
% lyricsurl: http://www.lyricsfreak.com/f/frank+sinatra/one+note+samba_10122272.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Samba"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "One Note Samba"
	      \fontsize #1 \lower #1  "- Newton Mendonca / Antonio Carlos Jobim"
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

  \tocItem \markup "One Note Samba / Antonio Carlos Jobim, Newton Mendonca"


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
	d1:m7 | des:7 | c:m7 | b:7.5- | \myEndLine
	d:m7 | des:7 | c:m7 | b:7.5- | \myEndLine
	f:m7 | bes:7 | ees:maj7 | aes:7 | \myEndLine
	d:m7 | des:7 | c2:m7 b:7.5- | bes1:6 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	ees:m7 | aes:7 | des1*2:maj7 | \myEndLine
	des1:m7 | ges:7 | ces:maj7 | c2:m7.5- b:7.5- | \myEndLine
	\endPart

	\myMark "A'"
	\startPart
	d1:m7 | des:7 | c:m7 | b:7.5- | \myEndLine
	d:m7 | des:7 | c:m7 | b:7.5- | \myEndLine
	f:m7 | bes:7 | ees:maj7 | aes:7 | \myEndLine
	des:6 | c:7 | b:maj7 | bes:6 | \myEndLine
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
	\key bes \major

	\partial 2 r8 f4 f8 |

%% part "A"
	f4 f8 f~ f f4 f8~ | f f4. r8 f4 f8 | f4 f8 f~ f f4 f8~ | f2 r8 f4 f8 |
	f4 f8 f~ f f4 f8~ | f f4. r8 f4 f8 | f4 f8 f~ f f4 f8~ | f2 r8 bes4 bes8 |
	bes4 bes8 bes~ bes bes4 bes8~ | bes bes4. r8 bes4 bes8 | bes4 bes8 bes~ bes bes4 bes8~ | bes4. r8 r f4 f8 |
	f4 f8 f~ f f4 f8~ | f f4 f8~ f f f4 | f f8 f~ f f4 bes8-^ | r1 |

%% part "B"
	bes8 c des ees des c bes aes | ges f ees des c des ees f | c4. bes8 r c des f | c4. bes8 r2 |
	aes'8 bes ces des ces bes aes ges | fes ees des ces bes ces des ees | bes4. aes8 r bes ces ees | ges4. f8 r f4 f8 |

%% part "A"
	f4 f8 f f~ f4 f8~ | f f4. r8 f4 f8 | f4 f8 f~ f f4 f8~ | f2 r8 f4 f8 |
	f4 f8 f~ f f4 f8~ | f f4. r8 f4 f8 | f4 f8 f~ f f4 f8~ | f2 r8 bes4 bes8 |
	bes4 bes8 bes~ bes bes4 bes8~ | bes bes4. r8 bes4 bes8 | bes4 bes8 bes~ bes bes4 bes8~ | bes2 r8 bes4 bes8 |
	bes4 bes8 bes~ bes bes4 bes8~ | bes bes4 bes8 bes4 bes~ | bes bes8 bes~ bes bes4 bes8-^ | r2 r8 <\parenthesize f>4 <\parenthesize f>8 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% these are lyrics copied from the internet and adjusted for real book
\lyricmode {

%% part "A"
	This is just a lit -- __ tle sam -- __ ba
	built up -- on a sin -- __ gle note. __
	Oth -- er notes are bound __ to fol -- __ low
	but the root is still __ that note. __
	Now the new one is __ the con -- __ sequence __
	of the one we've just __ been through __
	as I'm bound to be __ the un -- __ a -- void -- __ a -- ble
	con -- se -- quence __ of you. __

%% part "B"
	There's so man -- y peo -- ple who can talk and talk and talk
	and just say no -- thing or near -- ly no -- thing
	I have used up all the scale I know and at the end I've come to no -- thing
	or near -- ly no -- thing

%% part "A"
	So I come back to my first __ note as I must come back __ to you. __
	I will pour in -- to __ that one __ note all the love I feel __ for you __
	A -- ny -- one who wants __ the whole __ show, Re, Mi, Fa, Sol, La, __ Te, Doh. __
	he will find him -- self __ with no __ show.
	Bet -- ter play __ the note __ you know.
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
		\smaller \smaller { "Copyright © 1961, 1962 by Antonio Carlos Jobim and Mrs. Mendonca, Brazil" }
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

