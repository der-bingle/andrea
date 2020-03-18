# Defined in - @ line 1
function halfSheet --description 'Prepares a half-sheet document to be printed'
	pdfcpu collect -pages 1,3,4,2,5,7,8,6,9,11,12,10,13,15,16,14,17,19,20,18 $argv[1] temp.pdf;
	pdfcpu nup 'f:LetterL, b: off' $argv[2] 2 temp.pdf;
	pdfcpu rotate -pages even $argv[2] 180;
	rm temp.pdf
end
