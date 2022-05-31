ENGINE=pdflatex

DOC=thesis

FLAGS=-halt-on-error -synctex=1 -interaction=nonstopmode

all: $(DOC).pdf 

$(DOC).toc: $(DOC).tex
	$(ENGINE) $(FLAGS) $(DOC).tex

$(DOC).pdf: $(DOC).toc
	bibtex $(DOC)
	$(ENGINE) $(FLAGS) $(DOC).tex
	$(ENGINE) $(FLAGS) $(DOC).tex

clean:
	rm -rf *.aux *.log *.toc *.bbl *.blg *.pdf *.ps *.dvi *.lot *.lof *.out