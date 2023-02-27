

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
% title: Nature Boy
% style: Jazz
% composer: Eben Ahbez
% poet: Eben Ahbez
% piece: Med. Ballad
% copyright: 1948, Eben Ahbez
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 13d57a4a-a26f-11df-8711-0019d11e5a41
% structure: AB
% structureremark: this tunes structure can also be AA' or maybe ABAC since the A and the part B are VERY similar.
% location: rbk2:260,nrbk1:231
% remark: 7th bar of letters A and B were originally 2 bars each. Melody is straight eights, though rather freely interpreted rhythmically.
% idyoutuberemark1: Nat King Cole in a the cannonical version...
% idyoutube1: Iq0XJCJ1Srw
% idyoutuberemark2: Miles in a slow version
% idyoutube2: GDS_nqHaUvc
% lyricsurl: http://www.metrolyrics.com/nature-boy-lyrics-nat-king-cole.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Med. Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Nature Boy"
	      \fontsize #1 \lower #1  "- Eben Ahbez"
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

  \tocItem \markup "Nature Boy / Eben Ahbez"


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
	d1:m | e2:m7.5- a:7 | d1:m | e2:m7.5- a:7 | \myEndLine
	d:m d:m7+ | d:m7 d:m6 | g:m6 d:m | e1:m7.5- | \myEndLine
	a1*2:7 | d:m | \myEndLine
	e:7.9- | a:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	d1:m | e2:m7.5- a:7 | d1:m | e2:m7.5- a:7 | \myEndLine
	d:m d:m7+ | d:m7 d:m6 | g:m6 d:m | e1:m7.5- | \myEndLine
	a1*2:7 | d1:m | \OPC b:m7.5- | \myEndLine
	e:7.9- | a:7.5+ | d:m | \LPC e2:m7.5- \RPC a:7 | \myEndLine
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
	\tempo "Moderato" 4 = 110
	\time 4/4
	\key d \minor

	\partial 8 a8 |

%% part "A"
	a'8 f d2. | r4 r8 a e' f g bes | a f d2. | r4 r8 a e' f g bes |
	a4. d8 cis2 | a4. c!8 b2 | g4. bes!8 a4. d,8 | e2. r8 a, |
	a'2. g4 | e2. a,4 | g'2. f4 | d2. a4 |
	f'2. e4 | b2. c4 | cis1 | r2 r4 r8 a |

%% part "B"
	a'8 f d2. | r4 r8 a e' f g bes | a f d2. | r4 r8 a e' f g bes |
	a4. d8 cis2 | a4. c!8 b2 | g4. bes!8 a4. d,8 | e2. r8 a, |
	a'2. g4 | e2. a,4 | g'2. f4 | d2. a4 |
	f'4. e8 b4. a8 | g'4 f2 a,8 e' | d1 | r |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	There was a boy,
	A ver -- y strange en -- chant -- ed boy
	They say he wan -- dered ver -- y far, ver -- y far,
	o -- ver land and sea;

	A lit -- tle shy
	and sad of eye,
	But ver -- y wise
	was he

%% part "B"
	And then one day,
	One mag -- ic day he came my way,
	And as we spoke of man -- y things, fools and kings,
	this he said to me: The

	great -- est thing
	you'll ev -- er learn
	is just to love and be loved
	in re -- turn.
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
		\smaller \smaller { "Copyright © 1948, Eben Ahbez" }
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

