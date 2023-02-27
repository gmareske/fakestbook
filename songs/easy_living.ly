

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
% title: Easy Living
% style: Jazz
% composer: Ralph Rainger, Leo Robin
% poet: Ralph Rainger, Leo Robin
% piece: Med
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: c5019d6a-88cc-11e4-8336-3860779cb560
% structure: AABA
% location: rbk1:129
% idyoutuberemark1: Ella Fitzgerald with Joe Pass on Guitar
% idyoutube1: 6vYIHpxuxp4
% idyoutuberemark2: The incredible Bill Evans
% idyoutube2: T0ZwAJAgBFM
% lyricsurl: http://www.lyricsfreak.com/b/billie+holiday/easy+living_20017912.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Med"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Easy Living"
	      \fontsize #1 \lower #1  "- Ralph Rainger, Leo Robin"
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

  \tocItem \markup "Easy Living / Ralph Rainger, Leo Robin"


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
		f2:maj7 fis:dim7 | g:m7 gis:dim7 | f:maj7/a c4:m7 f:7 | bes2:maj7 ees:7 | \myEndLine
		f:maj7 d:m7 |
	} \alternative {
		{
			g:m7 c:7 | a:7.5+ d:9 | g:7.5+ c:9 | \myEndLineVolta
		}
		{
			g:m7 c:7.9- | f bes:7 | ees:m7 aes:7 | \myEndLineVolta
		}
	}
	\endPart

	\myMark "B"
	\startPart
	des:maj7 bes:m7 | ees:m7 aes4:7 aes:7/ges | f2:m7 bes:7 | ees:m7 aes:7 | \myEndLine
	des:maj7 des/c | bes:m7 bes:m7/aes | g1:m7.5- | c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2:maj7 fis:dim7 | g:m7 gis:dim7 | f:maj7/a c4:m7 f:7 | bes2:maj7 ees:7 | \myEndLine
	f:maj7 d:m7 | g:m7 c:7.9- | f \LPC aes:7 | des:maj7 \RPC c:7 | \myEndLine
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
	\tempo "Moderato" 4 = 108
	\time 4/4
	\key f \major

%% part "A"
	\repeat volta 2 {
		\tuplet 3/2 { a'4 d c } ees,2 | r8 d g bes d f4 e8 | \tuplet 3/2 { b4 d c } f,2 | r8 d f a c4. bes8 |
		\tuplet 3/2 { a4 g' f } a,4. e'8 |
	} \alternative {
		{
			d4 bes8 d, a'4 g | a1~ | a |
		}
		{
			d4 bes8 d, a'4 a8 f~ | f1~ | f2. f4 |
		}
	}

%% part "B"
	aes1 | \tuplet 3/2 { ees'4 f fes } \tuplet 3/2 { ees c bes } | aes1 | e'!8 f e f ees4 c8 bes |
	aes2 \tuplet 3/2 { aes4 f aes } | bes2 \tuplet 3/2 { bes4 g bes } | c2 d | g8 e d c gis2 |

%% part "A"
	\tuplet 3/2 { a4 d c } ees,2 | r8 d g bes d f4 e8 | \tuplet 3/2 { b4 d c } f,2 | r8 d f a c4. bes8 |
	\tuplet 3/2 { a4 g' f } a,4. e'8 | d4 bes8 d, a'4 a8 f~ | f1~ | f |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	Li -- ving for you is ea -- sy li -- ving
	It's ea -- sy to live when you're in love
	And I'm so in love
	There is nothing in life but you __
	_ _ _ _ _ _

%% part "B"
	For you may -- be I'm_a fool
	But it's fun
	Peo -- ple say you rule me with one wave of your hand
	Dar -- ling, it's grand
	They just don't un -- der -- stand

%% part "A"
	Li -- ving for you is ea -- sy li -- ving
	It's ea -- sy to live when you're in love
	And I'm so in love
	There is nothing in life but you __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	I ne -- ver_reg -- ret the years that I'm giving
	They're ea -- sy to give when you're in love
	I'm hap -- py to do
	what -- _ _ _ _ _ _ ev -- er I do for you __
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

