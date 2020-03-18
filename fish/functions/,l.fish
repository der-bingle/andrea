# Defined in - @ line 0
function ,l --description 'Clear the terminal and list files.'
	clear; and exa --group-directories-first $argv;
end
