<%page args='part'/>
% if part=='Vars':
<%
	from scripts import attr
	version=attr.Version()
	version['doOwn']=True
	attributes.add_version('Own', version)
	attributes.set_default_version_name('Own')

	attributes['title']='Drumming paradiddles'
	attributes['style']='Jazz'
	attributes['copyright']=gattr['copyrightvalstudy']

	attributes['typesetter']='Mark Veltzer <mark.veltzer@gmail.com>'
	attributes['completion']='5'
	attributes['uuid']='eb2be7a4-6f42-11e0-a53d-0019d11e5a41'
%>
% endif

% if part=='Doc':
	DONE:
	TODO:
	- mark what has been done in this tune.
	- add more text here about paradiddles.
	- add a reference to wikipedia: http://en.wikipedia.org/wiki/Rudiment
	- get more examples from wikipedia coded here.
% endif

% if part=='Own':
\markup {
	\wordwrap-lines { \italic {
	This is some text about paradiddles...
	} }
}
\markup {
Single Paradiddle (starting with the right hand).
}
\score {
<<
	\new DrumStaff \with {
		\remove Time_signature_engraver
		\remove Bar_engraver
		drumStyleTable = #percussion-style
	} <<
		\set Score.timing = ##f
		\new DrumVoice {
			\time 2/4
			\stemUp
			\drummode {
				sn16->^"R"\( sn^"L" sn^"R" sn^"R"\)
				sn->^"L"\( sn^"R" sn^"L" sn^"L"\)
			}
		}
	>>
>>
	\layout {
	}
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 130/4)
		}
	}
}
\markup {
Double Paradiddle (starting with the right hand)
}
\score {
<<
	\new DrumStaff \with {
		\remove Time_signature_engraver
		\remove Bar_engraver
		drumStyleTable = #percussion-style
	} <<
		\set Score.timing = ##f
		\new DrumVoice {
			\time 6/8
			\stemUp
			\drummode {
				sn16->^"R"\( sn^"L" sn^"R" sn^"L" sn^"R" sn^"R"\)
				sn->^"L"\( sn^"R" sn^"L" sn^"R" sn^"L" sn^"L"\)
			}
		}
	>>
>>
	\layout {
	}
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 130/4)
		}
	}
}
\markup {
Triple Paradiddle (starting with the right hand).
}
\score {
<<
	\new DrumStaff \with {
		\remove Time_signature_engraver
		\remove Bar_engraver
		drumStyleTable = #percussion-style
	} <<
		\set Score.timing = ##f
		\new DrumVoice {
			\time 8/4
			\stemUp
			\drummode {
				sn16->^"R"\( sn^"L" sn^"R" sn^"L" sn^"R" sn^"L" sn^"R" sn^"R"\)
				sn->^"L"\( sn^"R" sn^"L" sn^"R" sn^"L" sn^"R" sn^"L" sn^"L"\)
			}
		}
	>>
>>
	\layout {
	}
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 130/4)
		}
	}
}
\markup {
Paradiddle-Diddle (starting with the right hand).
}
\score {
<<
	\new DrumStaff \with {
		\remove Time_signature_engraver
		\remove Bar_engraver
		drumStyleTable = #percussion-style
	} <<
		\set Score.timing = ##f
		\new DrumVoice {
			\time 6/8
			\stemUp
			\drummode {
				sn16->^"R"\( sn^"L" sn^"R" sn^"R" sn^"L" sn^"L"\)
				sn->^"L"\( sn^"R" sn^"L" sn^"L" sn^"R" sn^"R"\)
			}
		}
	>>
>>
	\layout {
	}
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 130/4)
		}
	}
}
% endif
