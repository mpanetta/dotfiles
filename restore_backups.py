#!/usr/bin/env python

from os.path import expanduser
from os.path import exists
from os.path import islink

from os import rename
from os import listdir
from os import unlink

import re

homepath = expanduser("~/")
dotfiles = listdir("./files/")

for dotfile in dotfiles:
    if(re.search(r"\.", dotfile) != None):
        continue

    filename = "." + dotfile
    backup = homepath + filename + "_backup"
    backup_exists = exists(backup)

    dotfile_name = homepath + filename
    print("unlinking ... " + dotfile_name)

    if(islink(dotfile_name)):
        unlink(dotfile_name)

    if(backup_exists == True):
        print("Found backup for " + dotfile)
        print(backup)
        print(dotfile_name)
        rename(backup, dotfile_name)
