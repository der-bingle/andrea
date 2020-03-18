function ls --description 'Alias to list files with *exa* instead of the native *ls*.'
	exa --all --group-directories-first $argv;
end