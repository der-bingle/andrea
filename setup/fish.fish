#!/usr/bin/env fish
set name "fishy"
set root (realpath (dirname (status -f))/..)
source $root/setup/make-dir.fish
set dot ~/.dotfiles/$name
set con ~/.config/$name

# Create ~/.dotfiles/<dir> if it doesn't already exist
createDir $dot

# Move the necessary files to ~/.dotfiles/<dir>
cp -r $root/$name/* $dot

# Link ~/.dotfiles/<name> to ~/.config/<name>
ln -s $dot $con
