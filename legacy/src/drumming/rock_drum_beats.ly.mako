<%page args='part'/>
% if part=='Vars':
<%
	from scripts import attr
	version=attr.Version()
	version['doOwn']=True
	attributes.add_version('Own', version)
	attributes.set_default_version_name('Own')

	attributes['title']='Rock Drums Beats'
	attributes['style']='Rock'
	attributes['copyright']=gattr['copyrightvalstudy']

	attributes['typesetter']='Mark Veltzer <mark.veltzer@gmail.com>'
	attributes['completion']='5'
	attributes['uuid']='d54f6d36-6d29-11e0-a6dd-0019d11e5a41'
%>
% endif

% if part=='Doc':
	DONE:
	TODO:
% endif

% if part=='Own':
\markup {
Regular rock type drumming...
}
\score {
<<
	\new DrumStaff <<
		\drummode {
			\stemUp
			bd4 sn bd sn |
			bd sn s8 bd sn4 |
			bd sn8 bd s bd sn4 |
			bd sn bd8 bd sn sn |
			bd bd sn bd bd bd sn bd |
		}
	>>
>>
	\layout {}
}

% endif
