

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
% title: If You Could See Me Now
% style: Jazz
% composer: Tadd Dameron
% poet: Carl Sigman
% piece: Ballad
% typesetter: Mark Veltzer <mark.veltzer@gmail.com>
% completion: 5
% uuid: e259226a-11ac-11e1-90cb-0019d11e5a41
% structure: AABA
% location: rbk2:157,file:if_you_could_see_me_now_wikifonia.pdf
% idyoutuberemark1: Sarah Vaughan
% idyoutube1: ySI5ZPhf5Lw
% idyoutuberemark2: Bill Evans (amazing version)
% idyoutube2: NXUxR4wunaE
% lyricsurl: http://www.metrolyrics.com/if-you-could-see-me-now-lyrics-natalie-cole.html
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
	      \fontsize #1 \lower #1 \rotate #7 "Ballad"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "If You Could See Me Now"
	      \fontsize #1 \lower #1  "- Carl Sigman / Tadd Dameron"
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

  \tocItem \markup "If You Could See Me Now / Tadd Dameron, Carl Sigman"


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
		ees1:maj7 | aes:7 | ees:maj7 | aes:7 | \myEndLine
		g2:m7 fis4:m7 b:7 | f2:m7 bes:7 |
	} \alternative {
		{
			g:7.5+ c:7 | f:m7 bes:7 | \myEndLineVoltaNotLast
		}
		{
			a:m7.5- aes:m7 | g:m7 c4:m7 bes:m7 | \myEndLineVoltaLast
		}
	}
	\endPart

	\myMark "B"
	\startPart
	a2:m7 d:7 | b:m7 e:7 | a:m7 d:7 | b:m7 e:7 | \myEndLine
	a:m7 c4:m7 f:7 | bes2:maj7 g:m7 | c:m7 f:7 | f:m7 bes:7 | \myEndLine
	\endPart

	\myMark "A"
	\startPart
	ees1:maj7 | aes:7 | ees:maj7 | aes:7 | \myEndLine
	g2:m7 fis4:m7 b:7 | f2:m7 bes:7 | ees \LPC ges:maj7 | b:maj7 e4:maj7 \RPC ees:maj7 | \myEndLine
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
	\tempo "Adagio" 4 = 76
	\time 4/4
	\key ees \major

	\repeat volta 2 {

	%% part "A"
		d8 ees g bes d c bes g | bes a aes bes f2 | d8 ees g bes d c bes g | bes a aes bes f4. g8 |
		bes4 g8 bes b e, ees4 | c' aes8 f d'4. bes8 |
	} \alternative {
		{
			g1~ | g2. r4 |
		}
		{
			ees'1~ | ees |
		}
	}

%% part "B"
	d4 d8 d d4 e8 bes | \tuplet 3/2 { b4 b b } b c8 d | a4 a8 a a4 b8 c | d2. e,4 |
	b'8 a g a bes c d ees | f2 r8 d c bes | ees2 r8 c bes a | bes1 |

%% part "A"
	d,8 ees g bes d c bes g | bes a aes bes f2 | d8 ees g bes d c bes g | bes a aes bes f4. g8 |
	bes4 g8 bes b e, ees4 | c' aes8 f d'4. bes8 | ees1~ | ees2. r4 |
}


 }
}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	




\lyricmode {

%% part "A"
	_ If you could see me now you'd know how blue I've been.
	_ One look is all you'd need to see the mood I'm in.
	Per -- haps then you'd re -- al -- ize
	I'm still in love with you. __

%% part "Volta"
	_

%% part "B"
	You'll happen my way on some mem -- 'ra -- ble day
	and the month will be May for a while.
	I'll try to smile but can I play the part with -- out my heart
	be -- hind the smile?

%% part "B"
	_ The way I feel for you I nev -- er could dis -- guise.
	_ The look of love is writ -- ten plain -- ly in my eyes.
	I think you'd be mine a -- gain
	if you could see me now. __
}


}
\new Lyrics="Lyrics" \lyricsto "Voice" {
	





\lyricmode {

%% part "A"
	_ If you could see me now you'd find me be -- ing brave,
	_ and try -- in aw -- f'lly hard to make my tears be -- have.
	But that's quite im -- pos -- si -- ble.
	I'm still in love with _ you. __
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

