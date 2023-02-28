# Contributing Guide

## Contributing Songs

Thanks for contributing music to this fakebook! It is greatly appreciated.

The music files are written in Lilypond, a music typesetting text language. 
More info: 
- [Quick intro to Lilypond](https://lilypond.org/doc/v2.21/Documentation/web/text-input)
- [Full lilypond manual](https://lilypond.org/doc/v2.21/Documentation/learning/index#top)

There's a lot of files in this repository that end in `.ly`, these files are concerned with compiling the pdfs and you can mostly ignore them.

The recommended way to write a song for this repository is to first clone the repository and make sure you can run lilypond and compile the whole book.
Follow the steps in [README.md](README.md).

If you're familiar with the github workflow, we'd appreciate making a git branch, adding your songs, then making a pull request to this repository. 
If you're not familiar with git/github, you can also email the maintainers your lilypond files directly.

Now, make a copy of `song-template.ly`, rename it to `yoursongtitlehere.ly` and put it the `songs/`. 

Then, edit your song in the text editor of your choice. [Frescobaldi](https://www.frescobaldi.org/) is a text editor that has Lilypond preview built-in.

The template file has comments in it that tell you where to change text in the song, like where to enter the TITLE, COMPOSER, TYPESETTER (that's you!), COPYRIGHT, etc.
Please refer to other completed songs for some guides on how to write things.
This project has a lot of Lilypond macros & variables to help write songs, these can be found in `macros.ly` and are available to your song file. You don't have to `\include "macros.ly"`.
These macros just provide a standardized way to mark up some songs, for example, making all of the repeat bars in the songs look the same.
You don't have to use them but they are recommended.

As you edit the song, compile it with `make output/songs/YOURSONG.pdf`, where YOURSONG is the name of the matching `.ly` file to check the output and make sure it looks right.

When you're happy with the song, you can submit the pull request or send your .ly file in an email to a maintainer, and it will hopefully be merged into the repository.


## Contributing Code

Feature pull requests are welcome! 
Please use the Github page's pull request system to request a change to master, and a maintainer will get back to you.
Check out the Issues page to see both bux fixes that need to be done as well as potential features to work on.

### Codebase guide

Most of the code is written in Guile Scheme, which is an embedded extension language to Lilypond.

Useful docs:
- [Lilypond Scheme Dialect](https://lilypond.org/doc/v2.21/Documentation/extending/lilypond-scheme-syntax)
- Run `lilypond scheme-sandbox` which will open up a blank repl where you can play around with the scheme functions. In the scheme-sandbox, run `,apropos ly:` to see all of lilypond's added methods.

At the toplevel, there's the Makefile which takes care of preparing and executing the lilypond command.
It runs lilypond on one of the top-level template files, which is `book.ly` and `single.ly`.
Those template files then import the respective songs they need to render. 
The book renders all the songs in the `songs/` folder, while `single.ly` takes a command line argument to render a specific song.

In both files, they import a lot of other lilypond before importing the songs. These files (`macros.ly`,`config.ly`) are all basically scheme libraries used by the template files and the songs files.
Because Lilypond `\includes` copy-pastes a file at a given point, all scheme functions and variables available in the template files are available in the imported song files.
There is no scope, everything is accessible.
