

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
% title: Someday My Prince Will Come
% style: Jazz
% composer: Frank Churchill
% poet: Larry Morey
% piece: Med. Jazz Waltz
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 4933391e-ee10-11e0-b804-0019d11e5a41
% structure: ABAC
% structureremark: This could be thought of as AB as well
% location: rbk1:388
% idyoutuberemark1: Miles
% idyoutube1: Lo18F5ObPng
% idyoutuberemark2: the great Bill Evans
% idyoutube2: zYpKNM1Yi5o
% idyoutuberemark3: and Bill again
% idyoutube3: KUT06K5eGz4
% lyricsurl: http://artists.letssingit.com/disney-lyrics-someday-my-prince-will-come-31rjgwv
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
	      \fontsize #1 \lower #1 \rotate #7 "Med. Jazz Waltz"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Someday My Prince Will Come"
	      \fontsize #1 \lower #1  "- Larry Morey / Frank Churchill"
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

  \tocItem \markup "Someday My Prince Will Come / Frank Churchill, Larry Morey"


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
		bes2.:maj7 | d:7.5+ | ees:maj7 | g:7.5+ | \myEndLine
		c:m7 | g:7.5+ | c:7 | f:7 | \myEndLine
		\endPart
	} \alternative {
		{

			\myMark "B"
			\startPart
			d:m7 | des:dim | c:m7 | f:7 | \myEndLine
			d:m7 | des:dim | c:m7 | f:7 | \myEndLineVolta
			\endPart
		}
		{

			\myMark "C"
			\startPart
			f:m7 | bes:7 | ees | e:dim | \myEndLine
			bes/f | c2:m7/f f4:7 | bes2.*2 | \myEndLineVolta
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
	\tempo "Allegro" 4 = 130
	\time 3/4
	\key bes \major

%% part "A"
	\repeat volta 2 {
		f2. | bes2 fis4 | a2 g4 | g2. |
		g | ees'2 b4 | d2 c4 | c d ees |
	} \alternative {
		{

		%% part "B"
			f2 f4 | a2 a4 | f2. | c4 d ees |
			f2 f4 | a2 a4 | f2.~ | f |
		}
		{

		%% part "C"
			f4. e8 f4 | c'2 bes4 | c,4 bes c | a'2 g4 |
			f2 ees4 | d2 c4 | bes2.~ | bes |
		}
	}
}



 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




% this version of the lyrics is from the fake book but adjusted for the real book (the real book has no lyrics)...
\lyricmode {

%% part "A"
	Some -- day my prince will come
	Some -- day I'll find my love

%% part "B"
	And how thrilling that moment will be
	When the prince of my dreams_comes to me
}



}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	He'll whis -- per I love you
	And steal a kiss or two

%% part "C"
	Though he's
	_ _ _ _ _ _ _ _ _ _ _ _ _
	far _ a -- way I'll find my love_some -- day
	Some -- day_when my dreams come true
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








% More lyrics
\verticalSpace
\verticalSpace
\markup {
	\small {
		\concat {
			\column {
				\box "A"
				"Someday I'll find my love"
				"Someone to call my own"
				\box "B"
				"And I know at the moment we meet"
				"my heart will start skipping the beats"
				\vspace #0.3
				\box "A"
				"Someday we'll say and do"
				"Things we've been longing to"
				\box "C"
				"Though he's far away I'll find my love someday"
				"Someday when my dreams come true"
			}
			\hspace #3
			\column {
				\box "A"
				"Someday my prince will come"
				"Someday we'll meet again"
				\box "B"
				"And away to his castle we'll go"
				"To be happy forever I know"
				\vspace #0.3
				\box "A"
				"Someday when spring is here"
				"We'll find our love anew"
				\box "C"
				"And the birds will sing and weddingbells will ring"
				"Someday when my dreams come true"
			}
		}
	}
}


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

