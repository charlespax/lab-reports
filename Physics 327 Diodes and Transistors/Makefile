#==============================%
#-->    Lab: Name of Report <--%
#--> Author: Your Name Here <--%
#-->   Date: Date lab began <--%
#==============================%
# NOTE: The README file contains much more detailed descriptions of all the commands you might need.
#
#
REPORT = report
LATEX = $(shell which latex)
DVIPDF = $(shell which dvipdf)
OCTAVE = $(shell which octave)
TOUCH = $(shell which touch)

$(REPORT).pdf : $(REPORT).dvi
	$(DVIPDF) $(REPORT).dvi

$(REPORT).dvi : $(REPORT).tex report.m octave-core
	$(LATEX) $(REPORT).tex
	$(LATEX) $(REPORT).tex

octave-core : report.m data.txt
	$(OCTAVE) $(REPORT).m
	$(TOUCH) octave-core

clean: 
	rm -v $(REPORT).aux $(REPORT).dvi $(REPORT).log $(REPORT).pdf $(REPORT).ps *~ octave-core plot??.???
