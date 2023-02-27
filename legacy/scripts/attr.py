"""
This is the attributes object to be used in every tune
to fill in the tunes meta data.
It should do as much validation as is possible to enforce
good meta data by tune authors
"""

import os.path  # for join, isfile
import subprocess  # for check_call, DEVNULL
import shutil  # for copy

order = [
    "doChords",
    "doVoice",
    "doLyrics",
    "doLyricsmore",
    "doLyricsmoremore",
    "doChordBars",
    "doGuitar",
    "doExtra",
    "doPrep",
    "doOwn",
    "render",
    "heb",
    "dedication",
    "title",
    "style",
    "subtitle",
    "subsubtitle",
    "composer",
    "poet",
    "piece",
    "singer",
    "arranger",
    "album",
    "opus",
    "instrument",
    "copyright",
    "copyrightextra",
    "copyrightextraextra",
    "typesetter",
    "completion",
    "dontimport",
    "uuid",
    "structure",
    "structureremark",
    "location",
    "remark",
    "idyoutuberemark1",
    "idyoutube1",
    "idyoutuberemark2",
    "idyoutube2",
    "idyoutuberemark3",
    "idyoutube3",
    "idyoutuberemark4",
    "idyoutube4",
    "idyoutuberemark5",
    "idyoutube5",
    "idyoutuberemark6",
    "idyoutube6",
    "lyricsurl",
    "wiki",
]

books_translation = {
    "cc": "Colorado Cookbook",
    "cfb": "Cuban Fake Book",
    "fj": "Fake Jazz - The World's Greatest Fake Book",
    "hlrjb": "Hal Leonard Real Jazz Book",
    "jbf": "Jazz Bible Fakebook - Best Of 50s",
    "jfb": "Jazz Fake Book",
    "jltd": "jazz_ltd_content",
    "js": "Jazz standards (Budget books)",
    "kw": "Kiselev W. - 150 American Jazz Standards",
    "lrb": "The Latin Real Book",
    "lomj": "Library of Musicians Jazz",
    "nrbk1": "newreal1",
    "nrbk2": "newreal2",
    "nrbk3": "newreal3",
    "nnrbk1": "New Real Book Vol 1",
    "nnrbk2": "New Real Book Vol 2",
    "nnrbk3": "New Real Book Vol 3",
    "rebk1": "Real Easy Book Vol 1",
    "tbk": "The Book",
    "tolmfb": "The Original Legal Musician Fake Book",
    "toban": "The Other Book All New",
    "tob": "The Other Book",
    "rbk3": "The Real Book of Jazz Volume III",
    "rbk2": "The Real Book of Jazz Volume II",
    "rbk1": "The Real Book of Jazz Volume I",
    "rvb": "The Real Vocal Book",
    "rvb2": "The Real vocal book vol 2",
    "tsbk1": "The Slickbook 1",
    "tsbk2": "The Slickbook 2",
    "tsrbk": "The Standards Real Book",
    "ttfbk": "The TV Fakebook - Hal Leonard",
    "twgfb": "The World's Greatest Fake Book",
    "vfbk": "Vanilla Real Book",
    "ja54": "Jamey Aebersold volume 54",
    "gt": "Guitar - 557 Standards",
}

books_offsets = {
    "jfb": -1,
    "rbk1": 13,
    "rbk2": 7,
    "rbk3": 5,
    "tsrbk": -3,
    "nrbk1": 13,
    "nrbk3": 10,
    "tbk": 11,
    "lrb": 19,
}

books_dont_have = {"ja54"}

DO_CHECK_LOCATION = False

# where are all the fake books?
FOLDER = "real_books_archive"


def check_int(val):
    """ check that a value is an integer """
    if not val.isdigit():
        raise ValueError("what kind of page number is", val)


def check_have_file(filename):
    """ check that I have a file """
    full = os.path.join(FOLDER, filename)
    if not os.path.isfile(full):
        raise ValueError("do not have file", full)


def check_location(val):
    """ check that a location is ok within the book """
    parts = val.split(",")
    for part in parts:
        (book, pages) = part.split(":")
        if book == "file":
            filename = pages
            check_have_file(filename)
        else:
            if book not in books_translation:
                raise ValueError("what kind of value is", val)
            if book not in books_dont_have:
                filename = books_translation[book] + ".pdf"
                check_have_file(filename)
            if "-" in pages:
                (pg_from, pg_to) = pages.split("-")
                check_int(pg_from)
                check_int(pg_to)
            else:
                check_int(pages)


class Version(dict):
    """" a specific version of a tune """
    def __init__(self):
        super().__init__()
        self["doChords"] = False
        self["doVoice"] = False
        self["doLyrics"] = False
        self["doLyricsmore"] = False
        self["doLyricsmoremore"] = False
        self["doChordBars"] = False
        self["doGuitar"] = False
        self["doExtra"] = False
        self["doPrep"] = False
        self["doOwn"] = False


class Attributes(dict):
    """ all the attributes of a tune """
    def post_init(self):
        """ code to run after initialization """
        self.pos = -1
        self.versions = {}
        self.default_version_name = None

    def __init__(self):
        """ constructor """
        super().__init__()
        self.post_init()
        self.pos = None
        self.versions = None
        self.default_version_name = None

    def __setitem__(self, key, val):
        newpos = order.index(key)
        if newpos <= self.pos:
            raise ValueError("incorrect order of assignment", key, self["title"], self.pos, newpos)
        if key == "location" and DO_CHECK_LOCATION:
            check_location(val)
        self.pos = newpos
        super().__setitem__(key, val)

    def reset(self):
        """ reset all values """
        self.clear()
        self.post_init()

    def cut(self, p_cutnum, p_output):
        """ cut pages from a book """
        val = self["location"]
        if val == "":
            raise ValueError("have no location information")
        parts = val.split(",")
        if p_cutnum < 0 or p_cutnum >= len(parts):
            raise ValueError("location out of range")
        part = parts[p_cutnum]
        (book, pages) = part.split(":")
        if book == "file":
            filename = pages
            full = os.path.join(FOLDER, filename)
            shutil.copy(full, p_output)
        else:
            if book not in books_translation:
                raise ValueError("what kind of value is", val)
            if book in books_dont_have:
                raise ValueError("dont have the book", book)
            filename = books_translation[book] + ".pdf"
            full = os.path.join(FOLDER, filename)
            if not os.path.isfile(full):
                raise ValueError("dont have file", full)
            if "-" in pages:
                (pg_from, pg_to) = pages.split("-")
                check_int(pg_from)
                check_int(pg_to)
            else:
                check_int(pages)
                pg_from = pages
                pg_to = pages
            pg_from = int(pg_from)
            pg_to = int(pg_to)
            # apply offsets to page numbers
            if book in books_offsets:
                pg_from += books_offsets[book]
                pg_to += books_offsets[book]
            cut_pdf(full, pg_from, pg_to, p_output)

    def add_version(self, name, version):
        """ add another version of a tune """
        self.versions[name] = version

    def set_default_version_name(self, name):
        """ set the default version to be used for a tune """
        self.default_version_name = name

    def get_default_version_name(self):
        """ get the default version to be used for a tune """
        return self.default_version_name

    def get_default_version(self):
        """ get the default version object (not name) """
        return self.versions[self.default_version_name]

    def get_working_version(self):
        """ get the version which is now the default """
        return self.versions[self.default_version_name]


def cut_pdf(source_pdf, pg_from, pg_to, output_pdf):
    """ function to cut pages from a pdf file """
    args = [
        "gs",
        "-sDEVICE=pdfwrite",
        "-dNOPAUSE",
        "-dBATCH",
        "-dSAFER",
        "-dFirstPage=" + str(pg_from),
        "-dLastPage=" + str(pg_to),
        "-sOutputFile=" + output_pdf,
        source_pdf,
    ]
    subprocess.check_call(args, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
