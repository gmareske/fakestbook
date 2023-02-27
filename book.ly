\version "2.23.12"

#(begin
  
  (newline) ; for clean output
  (use-modules (ice-9 ftw))
  
  ;; which directory should we look for source files in?
  (define songs-source-directory "songs")
  ;; rules to exclude a given filename
  (define (include-this-file? filename)
   (not (or (string=? filename ".")
	 (string=? filename "..")
	 (char=? #\~ (string-ref filename (- (string-length filename) 1))))))
  ;; list of lilypond source files
  (define ly-source-files
   (sort
    (map (lambda (fn) (string-concatenate (list songs-source-directory "/" fn)))
     (scandir (string-append  "../" songs-source-directory) include-this-file?)) string<? ))
  (display "Building openbook out of source files: ")
  (display ly-source-files)
  (newline)
)

%% Import the config options
\include "config.ly"

%% Build information
\include "build-info.ly"		    

%% Set the number of songs in the build info
#(hashq-set! fb:build-info 'song-count (number->string (length ly-source-files)))
#(print-build-info)

#(set-global-staff-size 17.82)
\pointAndClickOff

%% MY INCLUDES
%\include "ob-macros.ly"
\include "lilyjazz.ly"
%% jazzchords.ly causes chord accidentals to not show
%%\include "jazzchords.ly"
\include "macros.ly"
				% chord related matters
				% lets always include guitar definitions
%\include "predefined-guitar-fretboards.ly"
  \layout {
    indent = 0.0\cm
    \context {
      \Score
      \override LyricText #'font-family = #'typewriter
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

\book{


  \include "title-page.ly"

  \markuplist \table-of-contents
  \pageBreak


				% the magic happens here
  #@(map (lambda (filename) (begin (ly:parser-include-string (ly:gulp-file filename)) (ly:parser-include-string "\\pageBreak"))) (reverse! ly-source-files))

}