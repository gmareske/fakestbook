

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
% title: My Ship
% style: Jazz
% subtitle: From The Musical Production 'Lady In The Dark'
% composer: Kurt Weil
% poet: Ira Gershwin
% piece: Moderately Slow
% copyright: 1941 and renewed 1969 Hampshire House Publishing Corp. and Chappell & Co., Inc., New York, NY
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: ffe98a96-0a4c-11e3-bcaf-3b8eec526bc3
% structure: AABA
% location: jfb:268-269
% idyoutuberemark1: Hancock, Brecker and Hargrove
% idyoutube1: QTHYSBAZJrQ
% idyoutuberemark2: Ella and Joe Pass
% idyoutube2: UEOll-nNy4I
% lyricsurl: http://www.stlyrics.com/lyrics/ladyinthedark/myship.htm
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
	      \fontsize #1 \lower #1 \rotate #7 "Moderately Slow"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "My Ship"
	      \fontsize #1 \lower #1  "- Ira Gershwin / Kurt Weil"
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

  \tocItem \markup "My Ship / Kurt Weil, Ira Gershwin"


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
	\partial 4 s4

	\repeat volta 2 {

		\myMark "A"
		\startPart
		f2 d:7 | g:m7 c:7 | f d:7 | g:m7 c:7 | \myEndLine
		f d:7 | g:m a:7 | d:m7 g:7 | g:m7 c:7 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 d:7 | g:m7 c:7 | f d:7 | g:m7 c:7 | \myEndLine
		f d:7 | g:m a:7 | d:m g:m7 | f d:7 | \myEndLine
		\endPart

		\myMark "B"
		\startPart
		g:m7 c:7 | g:m7 c:7 | g:m7 c:7 | f e:7 | \myEndLine
		a:m d:m7 | a:m d:m7 | g:7 g:dim7 | g:7 c:9 | \myEndLine
		\endPart

		\myMark "A"
		\startPart
		f2 d:7 | g:m7 c:7 | f d:7 | g:m7 c:7 | \myEndLine
		f d:7 | g:m a:7 |
	} \alternative {
		{
			d:m g4.:m7 c8:7 | f2. c4:7 | \myEndLineVoltaNotLast
		}
		{
			d2:m c:7 | f c:7 | \myEndLine
			f d:m | bes c:7 | f d:m7 | g:m7.5- c:7 | f des:7 | f1 | \myEndLineVoltaLast
		}
	}
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
	\tempo "Moderato" 4 = 100
	\time 4/4
	\key f \major

	\partial 4 c4 |

	\repeat volta 2 {

	%% part "A"
		d f c' a8 c | a4 d, d r8 c | d4 f c' c | d,2. c8 cis |
		d4 f d' c8 d | c4 bes a e8 f | g1~ | g2. c,4 |

	%% part "A"
		d f c' a8 c | a4 d, d4. c8 | d4 f c' c | d,2. r8 c |
		d4 f d' c8 d | c4 bes a e8 f | g2 g | f2 r4 a8 c |

	%% part "B"
		bes4 a g4. c8 | bes4 a g2 | d'4 bes g f | a2. b!8 d |
		c4 b! a r8 d | c4 b! a b8 c | d4 b! g e | d2. c4 |

	%% part "A"
		d f c' a8 c | a4 d, d4. c8 | d4 f c' c | d,2. c8 cis |
		d4 f d' c8 d | c4 bes a4. g8 |
	} \alternative {
		{
			f4. f8 d'4. e,8 | f2 r4 c |
		}
		{
			f4. f8 g4. g8 | a2. c8 c | b!4 c f e8 f | e4 d c bes | c2 f | f, g | f1~ | f4 r r2 |
		}
	}
}

 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	My Ship has sails that are made of silk,
	the decks are trimmed with gold.
	And of jam and spice there's a par -- a -- dise in the hold. __

%% part "A"
	My Ship's a -- glow with a mil -- lion pearls and ru -- bies fill each bin;
	the sun sits high in a sap -- phire sky when my ship comes in.

%% part "B"
	I can wait the years 'til it ap -- pears one fine day one spring,
	but the pearls and such the won't mean much if there's miss -- ing just one thing.

%% part "A"
	I do not care if that day ar -- rives, that dream need nev -- er be,
	if the ship I sing does -- n't al -- so bring my own true love to me.

%% part "ending"
	My own true love to me,
	if the ship I sing does -- n't al -- so bring my own true love to me. __
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
		\smaller \smaller { "Copyright © 1941 and renewed 1969 Hampshire House Publishing Corp. and Chappell & Co., Inc., New York, NY" }
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

