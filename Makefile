.PHONY: all clean submission

FIGURES = figures/draft-verify-loop.pdf

all: paper.pdf

paper.pdf: paper.tex references.bib $(FIGURES)
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	bibtex paper
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex

figures/%.pdf: figures/%.svg
	figures/svg2pdf.sh $< $@

submission: paper.pdf
	zip -j submission.zip paper.tex references.bib paper.bbl $(FIGURES)

clean:
	rm -f paper.aux paper.log paper.out paper.blg
