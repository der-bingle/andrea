#!/usr/bin/env fish
set name "iterm"

set root (realpath (dirname (status -f))/..)
source $root/setup/make-dir.fish
set dot ~/.dotfiles/$name
set con ~/.config/$name

# Create ~/.dotfiles/<dir> if it doesn't already exist
createDir $dot

# Move the necessary files to ~/.dotfiles/<dir>
cp $root/iterm/* $dot

# Link ~/.dotfiles/<name> to ~/.config/<name>
ln -s $dot $con

# Specify iTerm's preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$con"

# Tell iTerm to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

# Open in iTerm to import colors
open $dot/gruvbox.itermcolor