

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
% title: Giant Steps
% style: Jazz
% composer: John Coltrane
% piece: Fast
% copyright: 1974 Jowcol Music.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 828326cc-013c-11e1-b823-0019d11e5a41
% structure: A
% structureremark: Very weird not repeating structure because of the weird harmony steps
% location: rbk1:170,hlrjb:130,nrbk2:121,kw:3
% remark: the key here is of little meaning as the harmony changes key all the time...:) That's why it's written in C.
% idyoutuberemark1: Mccoy Tyner awesome solo...
% idyoutube1: PukuQPUKfyU
% idyoutuberemark2: The original Coltrane version...
% idyoutube2: BZRnkBK_0no
% lyricsurl: http://www.bjazz.com/Giant_Steps.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Fast"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Giant Steps"
	      \fontsize #1 \lower #1  "- John Coltrane"
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

  \tocItem \markup "Giant Steps / John Coltrane"


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
	b2 d:7 | g bes:7 | ees1 | a2:m7 d:7 | \myEndLine
	g bes:7 | ees fis:7 | b1 | f2:m7 bes:7.9 | \myEndLine
	ees1 | a2:m7 d:7 | g1 | cis2:m7 fis:7 | \myEndLine
	b1 | f2:m7 bes:7 | ees1 | cis2:m7 fis:7 | \myEndLine
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
	\tempo "Prestissimo" 4 = 240
	\time 4/4
	\key c \major

%% part "A"
	fis'2 d | b g4. bes8~ | bes1 | b4. a8~ a2 |
	d bes | g dis4. fis8~ | fis1 | g2 f4. bes8~ |
	bes1 | b2 a4. d8~ | d1 | dis2 cis4. fis8~ |
	fis2 fis | g f4. bes8~ | bes1 | fis4. fis8~ fis2 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Life when we were kids __
	Was like __ play -- ing gi -- ant steps __
	We were told __ to ad -- vance __
	We o -- beyed, __ _ took the chance __
	You're it __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	Think of life as chess __
	Cap -- ture __ one piece at a time __
	For -- ward east, __ cas -- tle next __
	Not the pace __ _ but the steps __
	Check -- mate __
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
		\smaller \smaller { "Copyright © 1974 Jowcol Music." }
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

