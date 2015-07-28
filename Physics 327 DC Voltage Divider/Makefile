#==================================%
#-->    Lab: DC Voltage Divider <--%
#--> Author: Charles Edward Pax <--%
#-->   Date: 2006.01.24         <--%
#==================================%

# The README file contains much more detailed descriptions of all the commands you might need.

report.pdf : report.dvi
	dvipdf report.dvi

report.dvi : report.tex report.m data.txt
	octave report.m
	latex report.tex
	latex report.tex

clean: 
	rm -fv plot??.??? report.aux report.dvi report.log report.pdf *~
