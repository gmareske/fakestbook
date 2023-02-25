<%def name="clearVars()">
<%
	attributes.reset()
%>

</%def>

%% from here everything needs to go into a loop
% for file in gattr['files']:

%% include anything the user wants before the bookpart starts
<%include file="/${file}" args="part='Defs'"/>

%% this sets the default key to middle C if not already defined
#(define transpose-key (if (defined? 'transpose-key) transpose-key (ly:make-pitch 0 0 0)))
%%#(define transpose-key (ly:pitch-transpose transpose-key (ly:make-pitch -1 0 0)))

% if gattr['parts']:
\bookpart {
% endif

%% this causes the variables to be defined...
${self.clearVars()}
<%include file="/${file}" args="part='Vars'"/>


%% THIS FILE WAS TRANSLATED FROM THE OPENBOOK PROJECT LOCATED AT https://github.com/veltzer/openbook
%% dump all the metadata into comments on the file because why not
%% METADATA
% for a in attributes:
%% ${a}: ${attributes[a]}
% endfor
%% /METADATA

%% now play with the variables that depend on language
<%
	if 'composer' not in attributes:
		if 'poet' not in attributes:
			add=''
		else:
			add=' / '+attributes['poet']
	else:
		if 'poet' not in attributes:
			add=' / '+attributes['composer']
		else:
			if attributes['composer']==attributes['poet']:
				add=' / '+attributes['composer']
			else:
				add=' / '+attributes['composer']+', '+attributes['poet']
	scratch['tocname']=attributes['title']+add
%>
% if 'copyright' not in attributes:
% if 'heb' in attributes and attributes['heb']:
<%
	scratch['copyright']=u'-- עיזרו לי למלא את שורת זכויות היוצרים הזו --'
%>
% else:
<%
	scratch['copyright']='-- help me fill it out this copyright notice --'
%>
% endif
% else:
% if 'heb' in attributes and attributes['heb']:
<%
	scratch['copyright']=u'זכויות יוצרים © '+attributes['copyright']
%>
% else:
<%
	scratch['copyright']=u'Copyright © '+attributes['copyright']
%>
% endif
% endif

%% calculate the tag line
% if heb in attributes and attributes['heb']:
<%
	scratch['tagline']=u'תווי על ידי '+attributes['typesetter']+u', נבנה בתאריך'+gattr['date']+u', תימון על ידי lilypond '+gattr['lilypond_version']
%>
% else:
<%
	scratch['tagline']='Typeset by '+attributes['typesetter']+', Built at '+gattr['date']+', Engraved by lilypond '+gattr['lilypond_version']
%>
% endif

%% calculate the typesetby
% if heb in attributes and attributes['heb']:
<%
	scratch['typesetby']=u'תווי על ידי '+attributes['typesetter']
%>
% else:
<%
	scratch['typesetby']='Typeset by '+attributes['typesetter']
%>
% endif

<%
if gattr['jazzfont']:
   if 'poet' in attributes and 'composer' in attributes and attributes['poet']==attributes['composer']:
      scratch['jazzby']='- ' + attributes['poet']
   elif 'poet' not in attributes:
   	scratch['jazzby']='- '+attributes.get('composer','')
   elif 'composer' not in attributes:
   	scratch['jazzby']='- '+attributes.get('poet','')
   else:
	scratch['jazzby']='- '+attributes['poet']+' / '+attributes['composer']
%>



\header {
    title = \markup {
      \score {
	{
	  \override TextScript.extra-offset = #'(0 . -4.5)
	  s4
	  s^\markup {
	    \fill-line {
	      \fontsize #1 \lower #1 \rotate #7 "${attributes['piece']}"
	      \fontsize #8
	      \override #'(offset . 7)
	      \override #'(thickness . 6)
	      \underline \sans "${attributes['title']}"
	      \fontsize #1 \lower #1  "${scratch['jazzby']}"
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

  \tocItem \markup "${scratch['tocname']}"

% if attributes.get_working_version()['doOwn']==False:

%% include the preparatory stuff, if there is any
% if attributes.get_working_version()['doPrep']:
<%include file="/${file}" args="part='Prep'"/>
% endif

%% calculate the vars
<%
	Chords='Chords'+attributes.get_default_version_name()
	Voice='Voice'+attributes.get_default_version_name()
	Lyrics='Lyrics'+attributes.get_default_version_name()
	Lyricsmore='Lyricsmore'+attributes.get_default_version_name()
	Lyricsmoremore='Lyricsmoremore'+attributes.get_default_version_name()
%>

% if gattr['inline']==False:
%% lets emit the blocks -- use specified pitch
% if attributes.get_working_version()['doChords']:
Chords=\transpose c ${TONALITYTransposePitch} {<%include file="/${file}" args="part=Chords"/>}
% endif
% if attributes.get_working_version()['doVoice']:
Voice=\transpose c ${TONALITYTransposePitch} {\relative c'
	<%include file="/${file}" args="part=Voice"/>
}
% endif
% if attributes.get_working_version()['doLyrics']:
Lyrics=<%include file="/${file}" args="part=Lyrics"/>
% endif
% if attributes.get_working_version()['doLyricsmore']:
Lyricsmore=<%include file="/${file}" args="part=Lyricsmore"/>
% endif
% if attributes.get_working_version()['doLyricsmoremore']:
Lyricsmoremore=<%include file="/${file}" args="part=Lyricsmoremore"/>
% endif
% endif

%% score for printing
\score {
	<<

% if attributes.get_working_version()['doChords']:
\new ChordNames="Chords"
% if attributes.get_working_version()['doChordBars']:
	%% this adds a bar engraver which does not always come with chords
	%% I didn'f find a way to put this with the chords themselves...
	\with {
		%% for lilypond 2.12
		%%\override BarLine #'bar-size = #4
		\override BarLine #'bar-extent = #'(-2 . 2)
		\consists "Bar_engraver"
	}
% else:
	\with {
		\remove "Bar_engraver"
	}
% endif
%% # transpose with 'inline' is true!
% if gattr['inline']:
	\transpose c \transpose-key {<%include file="/${file}" args="part=Chords"/>}
% endif
% if gattr['inline']==False:
	\Chords
% endif
% endif

% if attributes.get_working_version()['doVoice']:
\new Staff="Melody" {
\new Voice="Voice"
%% # transpose with 'inline' is true!
% if gattr['inline']:
	\transpose c' \transpose-key { \relative c'
	<%include file="/${file}" args="part=Voice"/> }
% endif
% if gattr['inline']==False:
	\Voice
% endif
}
% endif
% if attributes.get_working_version()['doLyrics']:
\new Lyrics="Lyrics" \lyricsto "Voice" {
% if gattr['inline']:
	<%include file="/${file}" args="part=Lyrics"/>
% endif
% if gattr['inline']==False:
	\Lyrics
% endif
}
% endif
% if attributes.get_working_version()['doLyricsmore']:
\new Lyrics="Lyrics" \lyricsto "Voice" {
% if gattr['inline']:
	<%include file="/${file}" args="part=Lyricsmore"/>
% endif
% if gattr['inline']==False:
	\Lyricsmore
% endif
}
% endif
% if attributes.get_working_version()['doLyricsmoremore']:
\new Lyrics="Lyrics" \lyricsto "Voice" {
% if gattr['inline']:
	<%include file="/${file}" args="part=Lyricsmoremore"/>
% endif
% if gattr['inline']==False:
	\Lyricsmoremore
% endif
}
% endif
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

% if attributes.get_working_version()['doOwn']:
<%include file="/${file}" args="part='Own'"/>
% endif
% if attributes.get_working_version()['doExtra']:
<%include file="/${file}" args="part='Extra'"/>
% endif

\markup \column {
	%% just a little space
	\null
	\fill-line {
		\smaller \smaller { "${scratch['copyright']}" }
	}
	\fill-line {
		\smaller \smaller { "${scratch['typesetby']}" }
	}
	\fill-line {
		\smaller \smaller { "${scratch['tagline']}" }
	}
	\fill-line {
		\smaller \smaller { \with-url #"https://veltzer.github.io/openbook" https://veltzer.github.io/openbook }
	}
}
% if gattr['space_after_tune']:
%% this is just a small space, maybe we should replace this with a page break?
%% TODO: at the very end of the book this should not appear.
\markup \column {
	\null
	\null
}
%endif

% if gattr['break_after_tune']:
\pageBreak
% endif

% if gattr['parts']:
}
% endif

% endif
% endfor
