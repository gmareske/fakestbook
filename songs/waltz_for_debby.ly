

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
% title: Waltz For Debby
% style: Jazz
% composer: Bill Evans
% poet: Gene Lees
% piece: Moderately, in one
% copyright: 1964 and 1965 Acom Music Corp., New York, NY.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 010d881c-e348-11e3-bd2b-af99bf9a3980
% structure: AABA
% location: jfb:414
% idyoutuberemark1: Bill Evans in great form
% idyoutube1: dH3GSrCmzC8
% idyoutuberemark2: Bill with Tony Bennett
% idyoutube2: lsb8mYrYycE
% lyricsurl: http://www.azlyrics.com/lyrics/tonybennett/waltzfordebby.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately, in one"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Waltz For Debby"
	      \fontsize #1 \lower #1  "- Gene Lees / Bill Evans"
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

  \tocItem \markup "Waltz For Debby / Bill Evans, Gene Lees"


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
	\repeat volta 3 {
		g2.:m7 | c:m7 | f:m7 | bes:7 | g:7 | g2:m7.5- c4:7 | f2.:7 | bes:7 |
		ees:7 | aes:maj7 |
	} \alternative {
		{
			f:m7.5- | bes2:7 bes4:7/aes | g2.:m7 | c:7 | f:m7 | bes:7 | \myEndLineVoltaNotLast
		}
		{
			a:m7 | d2:7 d4:7/c | b2.:m7 | a:m7 | g:maj7 | fis:m7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	f2.:m7 | bes:7 | g:m7 | c2:7.5- c4:7 | f2.:m7 | g:7 | c:m7 | bes:m7/ees | \myEndLine
	aes:maj7 | g:7 | c:m7 | f:9 | g:m7 | ges:7 | f:m7 | bes:7 | \myEndLine
	\endPart

%%\myMark "Coda"
	\mark \markup { \musicglyph #"scripts.coda" }
	\startPart
	g2.:m7 | c2:7.5- c4:7 | a2.:m7 | d:7 | g:m7 | ees2:11 ees4:7 | \myEndLine
	aes2.:maj7 | des:9 | c:m | c:m7/bes | f:7/a | aes:dim7 | ees:6/g | ges:dim7 | \myEndLine
	f:m7 | bes2:9 bes4:7.9- | ees2. | ees:6.9 | \myEndLine
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
	\tempo "Presto" 4 = 200
	\time 3/4
	\key ees \major

%% part "A"
%%\repeat volta 2 {
		bes'2. | ees, | aes | d, | g~ | g | r4 f ees | d ees f |
		g2 f4 | ees f g |
%%} \alternative {
	\set Score.repeatCommands = #'((volta "1, 3") end-repeat)
%%	{
			aes aes g | f g aes | bes2.~ | bes~ | bes~ | bes |
%%	}
	\set Score.repeatCommands = #'((volta #f) (volta "2.") end-repeat)
%%	{
			a!2 g4 | fis! g a! | b!2.~ | b~ | b~ | b |
%%	}
%%}
	\set Score.repeatCommands = #'((volta #f))

%% part "B"
	c2.~ | c2 bes4 | c2.~ | c2 bes4 | c bes aes | g2 d4 | f2 ees4 | c' bes aes |
	g2 aes4 | g2 d4 | ees g bes | d ees c | bes2.~ | bes~ | bes~ | bes^\markup {D.C. al Coda} |

%% part "Coda"
	c2.~ | c | r4 d c | d c d | bes2.~ | bes |
	r4 bes aes | bes aes bes | g2.~ | g~ | g | r4 f ees | f ees f | ees f ees |
	c'2. | d, | ees( | bes') |
}



 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	In her own sweet world, __ pop -- u -- lat -- ed by dolls and clowns and a
	prince and a big pur -- ple bear, __
	wear -- y grown -- ups all wear. __

%% part "B"
	In __ the sun, __ she danc -- es to si -- lent mu -- sic, songs that are spun of
	gold some -- where in her own lit -- tle head. __

%% part "Coda"
	bear. __ When she goes they will cry __ as they whis -- per "\"good" -- "bye.\"" __
	They will miss her, I fear, but then, so will I. __
}



}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	lives my fav -- 'rite girl, __ un -- a -- ware of the wor -- ried frowns that we
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	






\lyricmode {

%% part "A"
	one day all too soon __ she'll grow up and she'll leave her dolls and her prince and
	her sil -- ly old
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
		\smaller \smaller { "Copyright © 1964 and 1965 Acom Music Corp., New York, NY." }
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

