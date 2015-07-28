#=================================================#
#-->    Lab: Digital Basics, Counter and Timer <--#
#--> Author: Charles Edward Pax                <--#
#-->   Date: 2006.03.21                        <--#
#=================================================#
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
	rm -v $(REPORT).aux $(REPORT).dvi $(REPORT).log $(REPORT).pdf *~ octave-core plot??.???
