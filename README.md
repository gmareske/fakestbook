# Fakestbook

Fakestbook is a Jazz fakebook/song book compiled by free and open source software. 

Check out the [project website!](TODO).
Want to download the book? Click [here](TODO).

## Background

Historically, jazz fakebooks were hand-transcribed compilations of songs passed from musician to musician.
I have one, it is very messy and disorganized.
If you play jazz today, you might know them as "Real Books". 

This project is an attempt to build a crowd-sourced, beautiful, digital pdf song book for jazz musicians.
It uses the Lilypond music typesetting software and some scaffolding Scheme code to do so.

### Why a fork?
Fakestbook is a fork of the [openbook project](https://github.com/veltzer/openbook). 
Many thanks to everyone who contributed there!

This was done for several reasons:
- Code cleanup
- Reduce dependencies
- Speed
- Ease of contributing

Eventually, the features I was working on grew too big in scope to be a reasonable pull request to the original.


## Dependencies

- [Lilypond](lilypond.org) version 2.23.12 or higher.
- [make](https://www.gnu.org/software/make/).

## How to Build

Building has only been tested on Linux. 
It should compile on any system that has the above dependencies and the normal suite of Unix command line tools.

1. Ensure you have the dependencies installed on your system.
2. Clone the repository and `cd` into it.
3. To build the entire book, use the command `make book`. To build a single song, run `make output/songs/<song name>.pdf`.


## Configuration

Configuration is done by editing `config.ly`.
The configuration is written in Lilypond's scheme dialect, so a little scheme knowledge can help.
Here's a short guide for some popular configuration options:



## Need Help?

Use the Github Issues system to ask questions, one of the maintainers will get back to you.

## Get Involved

Contributors are very welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for a guide on how to do so.
But basically, we are looking for people to contribute code, songs, or both to the book.
Feature requests are welcome as well. 

## Contact

Maintainers:
- [Griffin Mareske](mailto:gmareske@gmail.com)

## License

This repository is licensed under the GPLv3 license.
See `LICENSE` for more details.
