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
      \fill-line { \small "Git tag: 177" }
      \fill-line { \small "Git describe: 177-12-gc4d6e35a" }
      \fill-line { \small "Git commits: 1845" }
      \fill-line { \small "Build date: 10:31:31 23-02-2023" }
      \fill-line { \small "Build user: griff" }
      \fill-line { \small "Build host: bigbrain" }
      \fill-line { \small "Build kernel: Linux 6.0.12-100.fc35.x86_64" }
      \fill-line { \small "Lilypond version: 2.23.12" }
      \fill-line { \small "Number of tunes: 151" }
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
