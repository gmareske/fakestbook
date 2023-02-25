Fakestbook
---

Fakestbook is an open source Jazz fakebook.

License: GPLv3

## Background
Historically, Jazz fakebooks were compilations of well known Jazz tunes and standards, hand copied and passed around by musicians. 
They have been standardized in the past and you likely know them as Real Books.
This project is an open source fakebook compiled using free software. 
It produces a pdf containing a bunch of transcriptions of jazz standards, typeset using the [Lilypond](https://lilypond.org) music notation software.

### Why a fork?
This project is a fork of the [openbook](https://veltzer.github.io/openbook). 
Many thanks to all of the contributors there!

It was forked to implement several large improvements to the codebase:
* simplification 
* ease of installation 
* reduce the number of dependencies
* make it easier to contribute transcriptions 
* documentation improvements

Eventually, the size and scope of these improvements grew way too large to be a reasonable pull request to the original project.
In most cases, it would be a wholesale replacement of the codebase.

## Dependencies
To compile, all you need is:
*  `lilypond` v2.23.12 or higher
* `make` 
* `sed`

To run some of the scripts, you need:
* `python3`. The easiest way would be to use a `virtualenv`, and you can install the packages necessary with  `pip install -r requirements.txt`

## Compile

First, clone the repository. Then, `cd` into the repository and run one of the following commands:

* `make book` to compile the entire fakebook.
* `make output/songs/<song title>.pdf` to compile an individual lead sheet. The names of the lead sheets are in `songs/`.


## Configuration
You can compile a transposed version of this book, such as a book for E♭ or B♭ instruments.
To do so, open the file `transpose.ly` and change the following line:

``#(define transpose-version 'c)``

to the key of your choice. The key are written in Lilypond format, so if you want an E♭ transposition, you write `'ees`.

## Contribute

TODO

## Maintainer

* Griffin Mareske [email](mailto:\\gmareske@gmail.com)

## License

* This project is licensed under the terms of the GNU General Public License v3 open source license. Please refer to LICENSE for the full terms.
