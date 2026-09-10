.PHONY: all clean submission

all: paper.pdf

paper.pdf: paper.tex references.bib
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	bibtex paper
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex

submission: paper.pdf
	zip -j submission.zip paper.tex references.bib paper.bbl

clean:
	rm -f paper.aux paper.log paper.out paper.blg
