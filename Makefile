.PHONY: all clean submission

all: paper.pdf

paper.pdf: paper.tex author-bios.tex references.bib IEEEcsmag.cls upmath.sty myIEEEtran.bst
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	bibtex paper
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex

submission: paper.pdf
	zip -j submission.zip paper.tex author-bios.tex references.bib paper.bbl IEEEcsmag.cls upmath.sty myIEEEtran.bst

clean:
	rm -f paper.aux paper.log paper.out paper.blg paper.bbl paper.pdf submission.zip
