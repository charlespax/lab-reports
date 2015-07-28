#===================================================%
#-->    Lab: AC Introduction and Voltage Divider <--%
#--> Author: Charles Edward Pax                  <--%
#-->   Date: 2006.01.31                          <--%
#===================================================%

# The README file contains much more detailed descriptions of all the commands you might need.

REPORT = report
LATEX = $(shell which latex)
DVIPDF = $(shell which dvipdf)
OCTAVE = $(shell which octave)
TOUCH = $(shell which touch)

$(REPORT).pdf : $(REPORT).dvi
	$(DVIPDF) $(REPORT).dvi

$(REPORT).dvi : $(REPORT).tex octave-core
	$(LATEX) $(REPORT).tex
	$(LATEX) $(REPORT).tex

octave-core : report.m
	$(OCTAVE) $(REPORT).m
	$(TOUCH) octave-core

clean: 
	rm -v $(REPORT).aux $(REPORT).dvi $(REPORT).log $(REPORT).pdf plot??.??? octave-core example.??? *~
