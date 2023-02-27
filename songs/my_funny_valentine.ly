

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
% title: My Funny Valentine
% style: Jazz
% composer: Richard Rodgers
% poet: Lorenz Hart
% piece: Slowly
% copyright: 1937 by Chappell & Co., Inc. Copyright Renewed
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 087137ac-a26f-11df-aa1f-0019d11e5a41
% structure: AABA
% location: rbk1:308,jfb:259
% idyoutuberemark1: Frank!
% idyoutube1: wG6lAtpcI_Q
% idyoutuberemark2: Chet Baker vocal version (amazing!)
% idyoutube2: 7iQQGBfbB0k
% lyricsurl: http://www.elyrics.net/read/f/frank-sinatra-lyrics/my-funny-valentine-lyrics.html
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
	      \underline \sans "My Funny Valentine"
	      \fontsize #1 \lower #1  "- Lorenz Hart / Richard Rodgers"
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

  \tocItem \markup "My Funny Valentine / Richard Rodgers, Lorenz Hart"


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
	c1:m | g:7/b | c:m7/+bes | a:m7.5- | \myEndLine
	aes:maj7 | f:m7.9 | d:m7.5- | g:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c1:m | g:7/b | c:m7/+bes | f/a | \myEndLine
	aes:maj7 | a4:m7.5- d:7.5-.9- g:m7 c:7.5-.9- | f1:m7.5- | bes:7.9- | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	ees2:maj7 f:m7 | g:m7 f:m7 | ees2 f:m7 | g:m7 f:m7 | \myEndLine
	ees:maj7 g4:7.5+ g:7 | c2:m7 bes4:m7 a:7.9- | aes1:maj7 | d2:m7.5- g:7.9- | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	c1:m | g:7/b | c:m7/+bes | f/a | \myEndLine
	aes:maj7 | d2:m7.5- g:7.9- | c:m7 b:7.9 | bes:m7.9 a:7.5-.9+ | \myEndLine
	aes1:maj7 | f2:m7 bes:7 | ees1*2 | \myEndLine
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
	\key c \minor

%% part "A"
	c2 d4 ees | d4. ees8 d2 | c2 d4 ees | d4. ees8 d2 |
	c2 d4 ees | bes'2 aes4 g | f1~ | f |

%% part "A"
	ees2 f4 g | f4. g8 f2 | ees2 f4 g | f4. g8 f2 |
	ees2 f4 g | d'4. c8 bes4. a8 | aes1~ | aes2 g4 f |

%% part "B"
	bes4 r8 ees, ees4 d | ees2 ees4 d | c'4 r8 ees, ees4 d | ees2 ees4 d |
	bes' r8 ees, ees4 d | ees2 f4 g | c1~ | c2 d, |

%% part "A"
	c2 d4 ees | d4. ees8 d2 | ees2 f4 g | f4. g8 f2 |
	c'2 d4 ees | d4. ees8 d2 | ees1~ | ees |
	ees,2 f4 g | f4. g8 f2 | ees1~ | ees2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	My Fun -- ny Val -- en -- tine,
	sweet com -- ic val -- en -- tine,
	you make me smile with my heart. __

%% part "A"
	Your looks are laugh -- a -- ble,
	un -- pho -- to -- graph -- a -- ble,
	yet, you're my fav -- 'rite work of art. __

%% part "B"
	Is your fig -- ure less than Greek;
	is your mouth a lit -- tle weak
	when you o -- pen it to speak, are you smart? __

%% part "A"
	But don't change a hair for me,
	not if you care for me,
	stay lit -- tle val -- en -- tine, stay! __
	Each day is Val -- en -- tine's day. __
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
		\smaller \smaller { "Copyright © 1937 by Chappell & Co., Inc. Copyright Renewed" }
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

