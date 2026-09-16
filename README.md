# Reproducibility in the Age of Agentic AI: Context Engineering at the Timescale of a Codebase 

LaTeX conversion from manuscript originally written [on Google Doc](https://docs.google.com/document/d/18NrKpA9MtAYQTHkPsSbvslb3DYeLjPF2n4EoxUMPCYI/edit?usp=sharing), retrieved 10 September 2026. The article text is preserved. This branch adapts the preprint to the supplied CiSE magazine template for the Software Engineering and Scientific Computing department.

## Files

- `paper.tex`: editable manuscript using `IEEEcsmag`, with the magazine typography, two-column layout, department running headers, and a full-width artifact table.
- `author-bios.tex`: author-provided biography and contact address.
- `IEEEcsmag.cls`, `upmath.sty`, `myIEEEtran.bst`: copied unchanged from the supplied `CiSE_April_2026.zip`.
- `references.bib`: ten BibTeX entries covering the nine original citation footnotes. The book and its review are separate entries. Two explanatory footnotes remain, with their references supplied by BibTeX.
- `paper.bbl`: generated bibliography, created during the build and included in the submission ZIP; not tracked in Git.


## Build and submission

Run `make` with TeX Live or MacTeX to build `paper.pdf` using pdfLaTeX and BibTeX. Run `make submission` to package the manuscript, biography, bibliography sources and generated bibliography, and the three supplied template support files in `submission.zip`.

The preprint layout remains in the `main` branch. This branch uses the magazine's layout instead of the preprint's Palatino and 1-inch margins. Publication month, year, volume, issue, and article number remain unset for the magazine to assign.

The sample article, references, author biographies, and ORNL/DOE notices in the ZIP belong to another paper and were not imported. The supplied class and style files are unmodified. Small documented preamble fixes terminate an author-font glue assignment (which otherwise consumes the initial L in Lorena), provide the DOI command expected by the bibliography style, and suppress the class's hard-coded dummy DOI/copyright notice. Restore the production notice when the publisher supplies the actual details. The class emits output-box warnings for its decorative page elements; the rendered pages were checked for clipping and overlaps.

## Notes

Undated web references use `n.d.`. The Katz entry retains the source's abbreviated author list (`Daniel S. Katz and others`); its DOI metadata was unavailable during conversion. Book-review metadata was checked against https://bssw.io/items/working-effectively-with-legacy-code. Other citation details follow the supplied footnotes.

Local files (untracked) include: 
- `source/google-doc.json`: source snapshot preserving document structure and footnotes.

Source: https://docs.google.com/document/d/18NrKpA9MtAYQTHkPsSbvslb3DYeLjPF2n4EoxUMPCYI/edit
