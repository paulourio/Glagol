MAIN=Glagol

default: article

article: $(MAIN).pdf cleanout

$(MAIN).pdf: $(MAIN).tex
	pdflatex $(MAIN)
	pdflatex $(MAIN)

cleanout:
	$(RM) *.aux *.bbl *.blg *.dat *.dvi *.gnuplot *.log *.nav
	$(RM) *.out *.snm *.toc *.vrb

clean: cleanout
	$(RM) 

