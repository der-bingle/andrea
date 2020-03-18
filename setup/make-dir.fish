#!/usr/bin/env fish

function createDir 
    if not test -e $argv[1]
        mkdir $argv[1]; and echo "✔︎ Created directory $argv[1]"
    end
end

# createDir ~/.config
# createDir ~/.dotfiles