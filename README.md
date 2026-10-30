# Reproducibility in the Age of Agentic AI: Context Engineering at the Timescale of a Codebase 

LaTeX source of the manuscript by Lorena A. Barba, submitted to *Computing in Science & Engineering*, Software Engineering and Scientific Computing department.
The tag `v1` marks the version originally submitted (corresponds to v1 of the preprint); `main` holds the revision prepared after editorial comments and agentic review using the [sciwrite](https://github.com/labarba/sciwrite) skill.

## Preprint

"Reproducibility in the Age of Agentic AI: Context Engineering at the Timescale of a Codebase"
*Lorena A. Barba*, [arXiv:2609.11728](https://arxiv.org/abs/2609.11728) `[cs.SE]`

> **Abstract**: Reproducible research practices are context engineering for AI coding agents. I argue that agents lower the cost of maintaining tests, commit histories, repository structure, instructions, and decision records while making their benefits immediate. Researchers remain responsible for verifying these artifacts and the scientific judgments they encode.


## Files

- `paper.tex`: manuscript in the CiSE magazine layout (`IEEEcsmag`), with an acknowledgment disclosing the use of AI tools. The preprint layout (11-point Palatino, US Letter, 1-inch margins) is on `main`.
- `author-bios.tex`: author biography and contact address.
- `IEEEcsmag.cls`, `upmath.sty`, `myIEEEtran.bst`: unmodified files from the CiSE author template (`CiSE_April_2026.zip`).
- `references.bib`: seven BibTeX entries. The book and its review are separate entries. Footnotes give URLs for undated web resources (a course site, two specifications) and carry two explanatory notes.
- `paper.bbl`: generated bibliography, included for source submission.
- `figures/`: SVG source of Figure 1 and the vector PDF included by the paper; `svg2pdf.sh` regenerates the PDF with headless Google Chrome (`make` runs it when the SVG changes).
- `revision_plan.md`: writing audit and revision plan for the CiSE revision; line links point to `paper.tex` at tag `v1`.
- `.github/workflows/latexdiff.yml`: the "LaTeX Diff" workflow, run manually from the Actions tab, which builds a marked-up PDF of all changes since a given tag or commit (by default the latest tag, `v1`).


## Notes

The Katz entry retains the source's abbreviated author list (`Daniel S. Katz and others`). Book-review metadata was checked against https://bssw.io/items/working-effectively-with-legacy-code. Other citation details follow the supplied footnotes.

## v1

LaTeX conversion from manuscript originally written [on Google Doc](https://docs.google.com/document/d/18NrKpA9MtAYQTHkPsSbvslb3DYeLjPF2n4EoxUMPCYI/edit?usp=sharing), retrieved 10 September 2026. The manuscript's June 2026 date and wording are preserved.

Local files (untracked) include: 
- `source/google-doc.json`: source snapshot preserving document structure and footnotes.


## License and Rights

Please note that the manuscript text is not openly licensed; the author reserves rights to the article content, which will be published in a journal. Only fair use applies in this case.