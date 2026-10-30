.PHONY: all clean submission

FIGURES = figures/draft-verify-loop.pdf

all: paper.pdf

TEMPLATE = IEEEcsmag.cls upmath.sty myIEEEtran.bst

paper.pdf: paper.tex author-bios.tex references.bib $(TEMPLATE) $(FIGURES)
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	bibtex paper
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex
	pdflatex -interaction=nonstopmode -halt-on-error paper.tex

figures/%.pdf: figures/%.svg
	figures/svg2pdf.sh $< $@

submission: paper.pdf
	zip -j submission.zip paper.tex author-bios.tex references.bib paper.bbl $(TEMPLATE) $(FIGURES)

clean:
	rm -f paper.aux paper.log paper.out paper.blg
