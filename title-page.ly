\version "2.23.12"


#(define transpose-version (if (defined? 'transpose-version) transpose-version 'c))
#(define transpose-name (if (defined? 'tonality-names) (cdr (assv transpose-version tonality-names)) "C"))
\bookpart {
  \markup {
    \column {
      \null
      \null
      \null
      \null
      \null
      \null
      \null
      \null
      \null
      \null
      \fill-line { \fontsize #11 \bold #(string-concatenate (list "The Openbook (" transpose-name ")")) }
      \null
      \null
      \fill-line { \larger \larger \bold #(string-concatenate (list "An open source Jazz real book in the key of " transpose-name))
		    }
      \null
      \null
      \null
      \fill-line {
	\huge \bold \concat {
	  "Website: "
	  \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook
	}
      }
      \null
      \fill-line {
	\huge \bold \concat {
	  "Development: "
	  \with-url #"https://github.com/veltzer/openbook" https://github.com/veltzer/openbook
	}
      }
      \null
      \fill-line {
	\huge \bold \concat {
	  "Lead developer: Mark Veltzer "
	  "<" \with-url #"mailto:mark.veltzer@gmail.com" mark.veltzer@gmail.com ">"
	}
      }
      \null
      \fill-line {
	\huge \bold \concat {
	  "Typesetting copyright: © 2011-"
	  2023
	  " Mark Veltzer "
	  "<" \with-url #"mailto:mark.veltzer@gmail.com" mark.veltzer@gmail.com ">"
	}
      }
      \null
      \fill-line { \huge \bold "Tune copyright: © belong to their respective holders" }
      \null
      \null
      \null
      \fill-line { \small \concat { "Git tag: " #(get-build-info 'git-tag) } }
      \fill-line { \small \concat { "Git describe: " #(get-build-info 'git-desc) } }
      \fill-line { \small \concat { "Git commits: " #(get-build-info 'git-commits) } }
      \fill-line { \small \concat { "Build date: " #(get-build-info 'build-date) } }
      \fill-line { \small \concat { "Build user: " #(get-build-info 'username) } }
      \fill-line { \small \concat { "Build host: " #(get-build-info 'hostname) } }
      \fill-line { \small \concat { "Build kernel: " #(get-build-info 'kernel)  } }
      \fill-line { \small \concat { "Lilypond version: " #(get-build-info 'lily-version) } }
      \fill-line { \small \concat { "Number of tunes: " #(get-build-info 'song-count) } }
      \null
      \null
      \null
    }
  }
  \score {
    <<
      \new Staff="Melody" {
	\new Voice="Voice"
	\relative c' {
	  \time 4/4
	  \key f \major
	  \set fontSize = #-3
	  f8 e f c r4 a'8 aes | a c, r e~ e g f e | g f a bes a f g ees
	}
      }
    >>
    \layout {
      #(layout-set-staff-size 35)
      indent = 2.6\cm
    }
  }
}
