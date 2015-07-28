report.pdf : report.dvi
	dvipdf report.dvi

report.dvi : report.tex report.tex report.m
	octave report.m
	latex report.tex
	latex report.tex

clean :
	mv report.aux report.dvi report.log *.eps *.pdf plot*.tex ~/.Trash
