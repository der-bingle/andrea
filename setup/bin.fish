#!/usr/bin/env fish

set name "bin"
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

# Add ~./config/bin to the $PATH
set -U fish_user_paths $con $fish_user_paths