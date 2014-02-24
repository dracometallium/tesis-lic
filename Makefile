NAME=tesis
TEX=$(NAME).tex
BIB=biblio.bib
AUX=$(TEX:.tex=.aux)
GARBAGE=$(NAME).aux $(NAME).bbl $(NAME).blg $(NAME).log $(NAME).pdf $(NAME).toc

all:
	pdflatex $(TEX)
#	bibtex $(AUX)
	pdflatex $(TEX)
	pdflatex $(TEX)


clean:
	rm -f $(GARBAGE)
