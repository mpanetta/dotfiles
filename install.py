#!/usr/bin/env python

from os.path import exists
from os.path import expanduser
from os.path import abspath

from os import rename
from os import symlink
from os import listdir

homepath = expanduser("~/")

print("...backing up existing dotfiles")

dotfiles = listdir("./files/")

for dotfile in dotfiles:
    file = "." + dotfile
    print("Looking for " + file)
    file_exists = exists(homepath + file)

    if(file_exists == True):
        print("Found " + file)
        rename_to = file + "_backup"
        print("...backing up " + file + " to " + rename_to)
        rename(homepath + file, homepath + rename_to)
     
    print("Linking " + file + "...")
    file_to_link = abspath("./files/" + dotfile)
    link = homepath + file
    symlink(file_to_link, link)

    print("To set the global git ignore, type: \n git config --global core.excludesfile ~/.gitignore")
    print("To source your shell with zsh, type: \n source ~/.zshrc")
