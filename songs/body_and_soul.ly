

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
% title: Body And Soul
% style: Jazz
% composer: John Green
% poet: Edward Heyman, Robert Sour, Frank Eyton
% piece: Slowly, with expression
% copyright: 1930 Warner Bros. Inc & Chappell & Co. Ltd.
% copyrightextra: Copyright Renewed & Assigned to Warner Bros. Inc.
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: b2076c06-e025-11e0-ab4c-0019d11e5a41
% structure: AABA
% location: rbk1:59,jfb:67
% idyoutuberemark1: Billie Holiday
% idyoutube1: CMDlk6lGQOk
% idyoutuberemark2: Dexter Gordon from the ballads. Excellent
% idyoutube2: rMd9oZ4O0bs
% lyricsurl: http://www.azlyrics.com/lyrics/dianakrall/bodyandsoul.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Slowly, with expression"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Body And Soul"
	      \fontsize #1 \lower #1  "- Edward Heyman, Robert Sour, Frank Eyton / John Green"
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

  \tocItem \markup "Body And Soul / John Green, Edward Heyman, Robert Sour, Frank Eyton"


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
		ees2:m7 bes:9 | ees:m7 aes:7 | des:maj7 ges:7 | f:m7 e:dim7 | \myEndLine
		ees:m7 ees:m7/des | c:m7.5- f:7 | bes:m7 ees4:m7 aes:7.5+ |
	} \alternative {
		{
			des2:6 f4:m7 bes:7.9- | \myEndLineVoltaNotLast
		}
		{
			des2:6 e4:m7 a:7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	d2 e:m7 | d/fis g4:m7 c:7 | fis:m7 b:m7 e:m7 a:7 | d1 | \myEndLine
	d2:m7 g:9 | c:maj7 ees:dim7 | d:m7 g4:7 g:7.5+ | c:9 b:9 bes:9 e:9.11+ | \myEndLine
	\endPart

	\startPart
	\mark \markup { \musicglyph #"scripts.coda" } des1 | \myEndLine
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
	\tempo "Andante" 4 = 80
	\time 4/4
	\key des \major

%% part "A"
	\repeat volta 2 {
		r8. ees16 f8. ees16 f4 ees | bes' bes2. | r8. aes16 bes8. aes16 bes4 aes | ees'4 des c bes |
		r4 des bes8 ges4 bes,8 | f'2 ees | r8. des16 ees8. f16 aes4 \tuplet 3/2 { aes8 bes fes^\markup {To Coda \musicglyph #"scripts.coda"} } |
	} \alternative {
		{
			des1 |
		}
		{
			des2. r4 |
		}
	}

%% part "B"
	\key d \major
	r8. d16 e8. fis16 a8 a4 a8 | d d4 fis,8 a a4 g8 | fis fis4 d8 e4 cis8 a~ | a2~ a8 r r4 |
	\key c \major
	r8. d16 e8. f16 a8 a4 g8 | e' e4 b8 d d4 a8 | c c4 a8 b b4 g8 | e4 ees d bes'^\markup {D.C. al Coda} |

%% part "Coda"
	\key des \major
	des,1 |
}







 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	My heart is sad and lone -- ly,
	for you I sigh, for you, dear, on -- ly.
	Why have -- n't you seen it?
	I'm all for you, Bod -- y And Soul! _

%% part "B"
	I can't be -- lieve it,
	it's hard to con -- ceive it
	that you'd turn a -- way ro -- mance. __
	Are you pre -- tend -- ing,
	it looks like the end -- ing
	un -- less I could have one more chance to prove, dear,
}







}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	I spend my days in long -- ing
	and won -- d'ring why it's me you're wrong -- ing,
	I tell you I mean it,
	I'm all for you, Bod -- y And _ Soul!
}






}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	






\lyricmode {

%% part "A"
	my life a wreck you're mak -- ing,
	you know I'm yours for just the tak -- ing;
	I'd glad -- ly sur -- ren -- der
	my -- self to you, Bod -- y And

%% part "B"
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
	_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

%% part "Coda"
	Soul!
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
		\smaller \smaller { "Copyright © 1930 Warner Bros. Inc & Chappell & Co. Ltd." }
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

