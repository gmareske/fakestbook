

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
% title: Strang Fruit
% style: Jazz
% composer: Lewis Allan
% poet: Lewis Allan
% piece: Andante Moderato
% copyright: 1940 by Edward B. Marks Music Company. Copyright Renewed.
% typesetter: Jordan Eldredge <JordanEldredge@gmail.com>
% completion: 5
% uuid: 68679a0a-da80-11e3-8208-4fcd89557297
% structure: A
% location: jfb:364
% idyoutuberemark1: Nina Simon version
% idyoutube1: ughAVo2ZAag
% idyoutuberemark2: The famous version by Billie Holiday
% idyoutube2: h4ZyuULy9zs
% lyricsurl: http://www.lyricsfreak.com/b/billie+holiday/strange+fruit_20017859.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Andante Moderato"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "Strang Fruit"
	      \fontsize #1 \lower #1  "- Lewis Allan"
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

  \tocItem \markup "Strang Fruit / Lewis Allan"


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
	\startSong
	\startChords

	\myMark "A"
	\startPart
	c1:m | g2:7.5+ g:7 | c1:m | g:7 | \myEndLine
	d2:m7.5- g:7.9- | d:m7.9- g:7 | c:m g:7 | c1:m | \myEndLine
	c2:m g:7/d | c:m/ees c:m | c1:m | \myEndLine
	c2:m g:7/d | c:m/ees c:m | c:m d:m7.5- | g1:7.9- | \myEndLine
	c2:m g:7 | c:m g:7 | g:7.9-/f g:7.9-/d | g:7.9-/b g:7.9- | g1:7.9- | \myEndLine
	c2:m c:m/bes | aes:maj7 g:7 | d:m7.5- g:7 | d:m7.5- g:7 | \myEndLine
	c1:m | d:m7.5- | c2:m/g g:7 | \myEndLine
	c1:m | g2:7 des:6.9 | c:m g:7 | c1:m | \myEndLine
	\endPart

	\endChords
	\endSong
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



{
	\tempo "Andante Moderato" 4 = 88
	\time 4/4
	\key c \minor

%% part "A"
	c4 c c c8 c | ees2 d | \tuplet 3/2 { c4 c c } c c | \tuplet 3/2 { d d d } d2 |
	d4 d8 d f f f f | aes^"Piu mosso (a little faster)" aes g2. | c,4 c b8 b b b | c c4 c8~ c2 |
	ees4 c d b | c g g2 | ees' d |
	\tuplet 3/2 { ees'4 c ees } \tuplet 3/2 { d b d } | c4. g8 g4. b,8 | c4. c8 c4 c8 c | d4. d8 d2 |
	\tuplet 3/2 { ees'4 c ees } \tuplet 3/2 { d b d } | \tuplet 3/2 { c bes! aes } g4 d8 d | d4 d f f | aes aes b r | r1 |
	c,4 c8 c c4 c8 c | ees4 ees d d8 d | d4 d f8 f f f | aes4 aes g g8 g |
	g4 g g g8 g | bes4 bes aes r | ees2 d |
	c4 c8 c c4 c | ees8 d4. g2 | ees4 ( c d b | c1 ) |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	South -- ern trees bear a strange fruit, blood on the leaves and blood at the root, black bod -- y swing -- ing in the
	south -- ern breeze; Strange Fruit hang -- ing from the pop -- lar trees. __ \markup \italic (Humming) __ _ _ _ _ _ _ _ _
	Pas -- tor -- al scene of the gal -- lant South, the bulg -- ing eyes and the twist -- ed mouth; scent of mag -- no -- _ lia
	sweet __ _ and fresh, and the sud -- den smell of burn -- ing flesh! Here is the fruit for the
	crows to pluck, for the rain to gath -- er, for the wind to suck, for the sun to rot, for the tree to drop.
	\markup \italic (Hum) __ _ Here is a strange and bit -- ter crop. \markup \italic (Hum) __
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
		\smaller \smaller { "Copyright © 1940 by Edward B. Marks Music Company. Copyright Renewed." }
	}
	\fill-line {
		\smaller \smaller { "Typeset by Jordan Eldredge <JordanEldredge@gmail.com>" }
	}
	\fill-line {
		\smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
	}
	\fill-line {
		\smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
	}
}


}

