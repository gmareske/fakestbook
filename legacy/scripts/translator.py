#!/usr/bin/env python

"""
A command line tool to translate old versions of the openbook to the new version
"""

import sys
import os.path
import glob
import mako.exceptions
import mako.lookup
import mako.template
#import config.openbook
import datetime # for datetime.now().strftime()
import pwd # for getpwuid
import socket # for gethostname
import subprocess # for subprocess.check_output

from scripts import attr


def main():
    if len(sys.argv) != 3:
        for f in glob.glob('src/openbook/*.ly.mako'):
            translate_one_file(f,
                               "../songs/" + os.path.splitext(os.path.basename(f))[0])

    else:
        translate_one_file(sys.argv[1],sys.arv[2])

def translate_one_file(p_input,p_output):
    input_encoding = "utf-8"
    output_encoding = "utf-8"

    common = "/home/griff/Documents/openbook/translator.ly.mako"

    # We really need the unlink, even though we have *open a file
    # for writing* later on which is supposed to truncate the file to 0
    # since we chmod the output to be unwritable which means that the
    # *open a file for writing* later would fail...
    if os.path.isfile(p_output):
        os.unlink(p_output)

    # if there is any error, remove the output to prevent having
    # bad output...
    try:
        mylookup = mako.lookup.TemplateLookup(
            directories=["."],
            input_encoding=input_encoding,
            output_encoding=output_encoding,
        )
        template = mako.template.Template(
            filename=common,
            lookup=mylookup,
            input_encoding=input_encoding,
            output_encoding=output_encoding,
        )
        gattr = {}
        gattr["files"] = [p_input]
        gattr["book"] = False
        gattr["toc"] = False
        gattr["midi"] = False
        gattr["parts"] = True
        
        gattr['date']=datetime.datetime.now().strftime('%T %d-%m-%Y')
        gattr["inline"] = True
        # enable the funny jazz font / real book styling
        gattr["jazzfont"] = True
        # enable lyrics printing with tunes
        gattr["space_after_tune"] = False
        # put a page break after each tune
        gattr["break_after_tune"] = False
        # put a page break after the toc?
        gattr["break_after_toc"] = True
        gattr["lilypond_version"] = "2.23.12"
        attributes = attr.Attributes()

        print("Translating {} to {}.. (using {})".format(p_input,p_output,common))
        with open(p_output, "wb") as file:

            file.write(template.render(attributes=attributes, gattr=gattr, scratch={}))
            #os.chmod(p_output, 0o0444)
    except Exception as exception:
        if os.path.isfile(p_output):
            os.unlink(p_output)
            print(mako.exceptions.text_error_template().render())
        raise exception


if __name__ == "__main__":
    main()
