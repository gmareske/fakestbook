\version "2.23.12"

#(use-modules (guile-user))

% ob:single-file is passed in from make / the execution of the lilypond command at the command line
#(begin
  (newline)
  (when (not (defined? 'fb:single-file)) (display "No file provided, check the lilypond command again!"))
  (display "Building song: ")
  (display fb:single-file)
  (newline)
)

%% Import the config
\include "config.ly"
% Get the build information
\include "build-info.ly"

#(set-global-staff-size 17.82)
\pointAndClickOff

%% MY INCLUDES
%\include "ob-macros.ly"
\include "lilyjazz.ly"
%\include "jazzchords.ly"


%% MACROS
\include "macros.ly"

\layout {
  indent = 0.0\cm
  \context {
    \Score
    \override LyricText.font-family = #'typewriter
    \override ChordName.style = #'jazz
    \override ChordName.font-name = #"LilyJAZZtext"
    \remove "Bar_number_engraver"
  }
}

\paper {
  #(set-paper-size "letter")
  indent = 0\mm
  between-system-space = 2.5\cm
  %%set to ##t if your score is less than one page
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  markup-system-spacing = #'((basic-distance . 15)
			     (minimum-distance . 8)
			     (padding . 1))
}
% include the song file
\include #(string-copy fb:single-file)