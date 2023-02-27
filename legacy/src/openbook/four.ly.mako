<%page args='part'/>
% if part=='Vars':
<%
# ignore this section
	from scripts import attr
	version=attr.Version()
	version['doChords']=True
	version['doVoice']=True
	version['doLyrics']=True
	attributes.add_version('Real', version)
	attributes.set_default_version_name('Real')

        # title of the tune
	attributes['title']='Four'
        # genre of the tune
	attributes['style']='Jazz'
        # who wrote the music?
	attributes['composer']='Miles Davis'
        # who wrote the lyrics?
	attributes['poet']=''

        # 'piece' denotes the style of the tune. It gets shown in the upper left hand corner
        # of the final print version
	attributes['piece']='Med. Swing'

	# copyright notice. Please fill this one out.
	attributes['copyright']='Copyright 1963 Prestige Music'

        # who wrote this file?
	attributes['typesetter']='Griffin Mareske <gmareske@gmail.com>'
        # completion level (too long to explain here)
	attributes['completion']=''
        # ignore
	attributes['uuid']=''
        # what format does the tune have? if not sure leave blank. Also any comments go in structureremark
	attributes['structure']=''
	attributes['structureremark']=''
        # what source material did the tune come from? You can ignore this
	attributes['location']='rb:149'
        
        # you can attach links to youtube URLs of sample performances, up to 3 different ones.
        # this relies on you getting the shortcode of a youtube video, if you look at a youtube URL for a video like this:
        # https://www.youtube.com/watch?v=wFzxo-XI8As
        # the shortcode is everything after the 'v='

	attributes['idyoutuberemark1']='Title1'
	attributes['idyoutube1']='youtubecode1'
	attributes['idyoutuberemark2']='Title2'
	attributes['idyoutube2']='youtubecode2'
	attributes['idyoutuberemark3']='Title3'
	attributes['idyoutube3']='youtubecode3'
        # a url for the source for the lyrics of the song
	attributes['lyricsurl']=''

%>
% endif

% if part=='Doc':
        This is a documentation spot detailing what work still needs to be done on the new song
        You don't need to write anything here but its nice to keep track sometimes.
        Here are some sample tasks (in no particular order):
	TODO:
	- filled in the structure of the tune.
	- wrote down the real book chords.
	- added a lyrics url.
	- wrote down the real book tune.
	- wrote down the real book lyrics.
	- checked the real book lyrics.
	- bring in real book pdf.
	- bring in fake book pdf.
	- fill in the meta data from the fake book pdf.
	- checked the real book chords.
	- checked the real book tune.
	- hear the tune, adjust it's speed and see it's ok.
	- put you tube performances.
        DONE:
% endif

% if part=='ChordsReal':
%% Enter in the chords        
\chordmode {
	\startChords
	\startSong

	\myMark "A"
	\startPart
	c1*2:maj7 | e:7 | \myEndLine
	a:7 | d:m | \myEndLine
	e:7 | a:m | \myEndLine
	d:7 | d1:m7 | g:7 | \myEndLine
	\endPart

	\myMark "B"
	\startPart
	c1*2:maj7 | e:7 | \myEndLine
	a:7 | d:m | \myEndLine
	f1 | f:m | c2:maj7 e:m7 | a1:7 | \myEndLine
	d:m7 | g:7 | c2:6 \LPC ees:dim | d:m7 \RPC g:7 | \myEndLine
	\endPart

	\endSong
	\endChords
}
% endif

% if part=='VoiceReal':
%% melody line
{
	\tempo 4 = 168
	\time 4/4
	\key c \major

	%% part "A"

}
% endif

% if part=='LyricsReal':
%% lyrics
\lyricmode {

	%% part "A"
	All of me __
	why not take all of me __
	Can't you see __
	I'm no good with -- out you __

	Take my lips __
	I want to lose them __
	Take my arms __
	I'll ne -- ver use them __

	%% part "B"
	Your good -- bye __
	left me with eyes that cry __
	How can I __
	get a -- long with -- out you __

	You took the part
	that once was my heart
	So why not
	take all of me __
}
% endif
