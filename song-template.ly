\version "2.23.12"


% this sets the default key to C if not already defined
% Don't mess with this line
#(define transpose-key (if (defined? 'transpose-key) transpose-key (ly:make-pitch 0 0 0)))

\bookpart {

  \header {
    title = \markup {
      \score {
	{
	  \override TextScript.extra-offset = #'(0 . -4.5)
	  s4
	  s^\markup {
	    \fill-line {
	% Change TIME to the style of the song, ex. "Med. Ballad"
	% For all of these template fields, write your substitutions
	% inside of the double quotes
	      \fontsize #1 \lower #1 \rotate #7 #"TIME"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      % Change TITLE ot the title of the song
	      \underline \sans #"TITLE"
	      % Change COMPOSER to the name of the composer
	      \fontsize #1 \lower #1 \concat { "- " #"COMPOSER" }
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

  % this text goes in the table of contents
  % TITLE is the song title, COMPOSER is the composer  
  \tocItem \markup "TITLE / COMPOSER"
  %% THE ACTUAL MUSIC
  \score {
    <<

      \new ChordNames="Chords"
      \transpose c \transpose-key {
	\chordmode {

	  \startChords
	  \startSong
	  %% CHORDS GO HERE !!
	  \endSong
	  \endChords
	}
    }

    \new Staff="Melody" {
      \new Voice="Voice"
      
      \transpose c' \transpose-key {
	\relative c' {
	  % Change the time/key signature if necessary
	  \time 4/4
	  \key c \major
	  % NOTES GO HERE !!
	  % Notes should be written in the key of C. It is automatically transposed to other keys.
	}
      }
    }
    \new Lyrics="Lyrics" \lyricsto "Voice" {
      \lyricmode {
	%% LYRICS GO HERE!
      }
    }
  >>
    \layout {
      %% make only the first clef visible
      \override Score.Clef.break-visibility = #'#(#f #f #f)

      %% make only the first time signature visible
      \override Score.KeySignature.break-visibility = #'#(#f #f #f)

      %% allow single-staff system bars
      \override Score.SystemStartBar.collapse-height = #1
    }
  }
  \noPageBreak
  \markup \column {
    %% just a little space
    \null
    \fill-line {
      % Copyright is the copyright for the music/song. Please fill this one out to the best of your knowledge
      \smaller \smaller { "COPYRIGHT" }
    }
    \fill-line {
      % Your name here
      \smaller \smaller { "Typeset by YOURNAMEHERE" }
    }
    \fill-line {
      \smaller \smaller \concat { "Built at: " #(get-build-info 'build-date)  }
    }
    \fill-line {
      \smaller \smaller { \with-url #(get-build-info 'website) #(get-build-info 'website) }
    }
  }
}