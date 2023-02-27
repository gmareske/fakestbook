

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
% title: Polka Dots And Moonbeams
% style: Jazz
% composer: Jimmy Van Heusen
% poet: Johnny Burke
% piece: Slowly, with expression
% copyright: 1940 by ARC Music Corp., now Bourne Co. and Dorsey Bros.
% copyrightextra: Music, Division of Music Sales Corporation
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: 60170b42-46e0-11e0-bf54-0019d11e5a41
% structure: AABA
% location: jfb:304
% idyoutube1: 4NTxWQfMSsA
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
	      \underline \sans "Polka Dots And Moonbeams"
	      \fontsize #1 \lower #1  "- Johnny Burke / Jimmy Van Heusen"
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

  \tocItem \markup "Polka Dots And Moonbeams / Jimmy Van Heusen, Johnny Burke"


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
	f2 d:m7 | g:m7 c4:7 c:7/bes | a2:m7 d:m7 | g:m7 e4:m7.5- a:7.9- | \myEndLine
	d2:m d:m7+/cis | d:m7/c a4:m7 aes:m7 | g2:m7 c4:7 c:9/bes | a4:m7 d:7.9- g:m7 c:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2 d:m7 | g:m9 c4:7 c:7/bes | a2:m7 d:m7 | g:m7 e4:m7.5- a:7.9- | \myEndLine
	d2:m d:m7+/cis | d:m7/c a4:m7 aes:m7 | g2:m7 c4:9 c:7.9- | f2:6 b4:m7.5- e:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	a2 ais:dim7 | b:m7 e4:7 e:7/d | cis2:m7 fis:m7 | b:m7 e:7 | \myEndLine
	a2 ais:dim7 | b:m7 e:7 | a:7 d:7 | g:m7 c:9 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	f2 d:m7 | g:m9 c4:7 c:7/bes | a2:m7 d:m7 | g:m7 e4:m7.5- a:7.9- | \myEndLine
	d2:m d:m7+/cis | d:m7/c a4:m7 aes:m7 | g2:m7 c4:9 c:7.9- | f4:6 ees:6 e:6 f:6.9 | \myEndLine
	\endPart

	\endSong
	\endChords
}


}

\new Staff="Melody" {
\new Voice="Voice"
% # transpose with 'inline' is true!
	\transpose c' \transpose-key { \relative c'
	



% the tune was turned into 8'th notes instead of triplets.
{
	\tempo "Adagio" 4 = 76
	\time 4/4
	\key f \major

%% part "A"
	r8 c d e f g a c | a4 g8 f e d4. | r8 c d e f g a c | d4 c8 bes a g4. |
	f8 g f g f2 | a8 a g f e ees4. | d8 bes' g f e d'4 c8~ | c1 |

%% part "A"
	r8 c, d e f g a c | a4 g8 f e d4. | r8 c d e f g a c | d4 c8 bes a g4. |
	f8 g f g f2 | a8 a g f e ees4. | d8 bes' g f e a4 f8~ | f2. e8 fis |

%% part "B"
	e4 cis'2 e8 ees | d cis b a gis e4. | e8 fis fis gis \tuplet 3/2 { gis4 a cis } | e2. e,8 fis |
	e4 cis'2 e8 ees | d cis b a gis e4. | r8 a4 b8 a4 bes | c bes8 g~ g r8 r4 |

%% part "A"
	r8 c, d e f g a c | a4 g8 f e d4. | r8 c d e f g a c | d4 c8 bes a g4. |
	f8 g f g f2 | a8 a g f e ees4. | d8 bes' g f e a4 f8~ | f2. r4 |
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	A coun -- try dance was be -- ing held in a gar -- den,
	I felt a bump and heard an "\"Oh," beg your par -- "don,\""
	sud -- den -- ly I saw Pol -- ka Dots And Moon -- beams
	all a -- round a pug -- nosed dream. __

%% part "A"
	The mus -- ic start -- ed and was I the per -- plexed one,
	I held my breath and said "\"may" I have the next "one.\""
	In my fright -- ened arms Pol -- ka Dots And Moon -- beams
	spark -- led on a pug -- nosed dream. __

%% part "B"
	There were ques -- tions in the eyes of oth -- er danc -- ers
	as we float -- ed o -- ver the floor.
	There were ques -- tions but my heart knew all the an -- swers,
	and per -- haps a few things more. __

%% part "A"
	Now in a cot -- tage built of li -- lacs and laugh -- ter
	I know the mean -- ing of the words "\"ev" -- er af -- "ter.\""
	And I'll al -- ways see Pol -- ka Dots And Moon -- beams
	when I kiss the pug -- nosed dream. __
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
		\smaller \smaller { "Copyright © 1940 by ARC Music Corp., now Bourne Co. and Dorsey Bros." }
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

