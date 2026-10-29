## Revision Plan: "Reproducibility in the Age of Agentic AI" (CiSE, SE & Scientific Computing Dept.)

Report produced using the [`sciwrite`](https://github.com/labarba/sciwrite) agent skill, with Claude Opus 5.5. Medium.

The plan’s line numbers refer to 453a55f, before any edits.

### Summary
- **Length:** `texcount` counts 5,264 words of running text, not counting the table or the decision-record box.
- **Where the extra length comes from:** mostly repetition of three ideas, not tangents:
  1. Agents make the artifacts cheap and give them a second reader.
  2. "The agent drafts, you verify."
  3. The pairs of sentences that start "As a reproducibility artifact… As an agent artifact…"
- **Additions:** the reviewers' requests (definitions, acronyms, the workshop name, a figure) add about 150 words.
- **Target:** about 3,800–3,900 words.
- **Line numbers:** all refer to `paper.tex` as it stands now.

### Part A — Reviewer requests

**A1. [MAJOR] Define core concepts at first use** (§1, [paper.tex:27](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L27))
- That paragraph introduces five terms in quick succession without defining any of them:
  - semantic memory
  - episodic record
  - attention-budget management
  - scope control
  - "context engineering" itself
- **Plan:**
  - Add one sentence defining *context engineering*: deciding what information reaches the model's limited input window, and when. It should go in the introduction or at the opening of §1, since the title and abstract already use the term.
  - Gloss each of the four categories in a short clause, using the memory analogy: *semantic* = durable facts and rules; *episodic* = a record of what happened; *attention budget* = the finite context the model can use well.
  - About +70 words.
  - Section 2 then uses "static context" ([paper.tex:53](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L53), [paper.tex:68](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L68)) and "pre-processed context" ([paper.tex:52](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L52), [paper.tex:66](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L66)). Those labels must match the vocabulary defined in §1.

**A2. [MAJOR] Acronyms**
- **LLM:** first appears at [paper.tex:27](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L27) ("LLM-based"). Spell out "large language model (LLM)".
- **CSR / COO:** in the example decision record ([paper.tex:74](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L74), [paper.tex:80](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L80)). Expand to "compressed sparse row (CSR)" and "coordinate (COO)" inside the box.
- **ADR:** the abbreviation doesn't appear in `paper.tex`. The reviewer probably saw it in the Google Doc version, though "ADRs" does appear in the bibliography title. Write "Architecture Decision Records (ADRs)" at [paper.tex:68](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L68) so the reference list matches the text.
- **Also check:**
  - "PI" in "Reproducibility PI Manifesto" ([paper.tex:23](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L23)). It's part of a title, but a one-word gloss helps an international readership.
  - RSE is already defined at [paper.tex:109](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L109). Keep it.

**A3. [MAJOR] Name the Edinburgh workshop at first mention**
- The same document is called "A recent vision statement from the research-software-engineering (RSE) community" at [paper.tex:109](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L109) and "The vision statement from the Edinburgh RSE workshop" at [paper.tex:125](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L125). The reviewer is right that they're the same document (`katz2026`).
- **Plan:**
  - Name it at [paper.tex:109](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L109) using the reference's title: "*Research Software in an Age of AI-Assisted Development: Reflections from Edinburgh*". Mention the May 2026 workshop.
  - Use one short name everywhere after that, "the Edinburgh statement".
  - [paper.tex:131](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L131) ("the collective statements calling for it") becomes "the Edinburgh statement".

**A4. [MAJOR] Add a figure: the draft–verify loop**
- **Proposed content:** a cycle diagram.
  1. The researcher sets the intent and invokes a command or skill.
  2. The agent drafts the artifact.
  3. The researcher reads, corrects and takes ownership. This is the gate, drawn so it stands out.
  4. The artifact is committed to the repository: instruction file, tests, commits, structure, decision record.
  5. Two readers use it: the agent in its next session (immediate payoff, short arrow) and future humans such as replicators, reviewers and students (long-horizon payoff, long arrow).
- **Why this layout:** it shows the paper's thesis in one image: two readers, one set of artifacts, the human as verifier. Once the figure carries "agent drafts, you verify", the prose can drop about four repetitions of that idea. That makes the figure a cutting tool as well as an addition.
- **Housekeeping:** give the table a caption and `\label`. "The table below" at [paper.tex:33](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L33) should become "Table 1".
- **Length check:** IEEE Computer Society magazines often count each figure or table as about 250 words toward the limit. Please confirm with the department editor. If that rule applies, it argues for keeping the table lean.

**A5. Length** — see Part B.

### Part B — Redundancy cuts (planned budget)

| Section | Now | Target | Main moves |
|---|---|---|---|
| Intro ([23](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L23)) | 242 | ~190 | Shorten the backstory sentences; keep the "disenchanted… revelation" arc |
| §1 Context ([27–29](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L27)) | 257 | ~290 | +definitions (A1); compress ¶[29](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L29), which mostly announces the next section |
| §2 Practices + catalog + invocation ([33–95](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L33)) | ~2,065 | ~1,450 | B1–B4 |
| §3 Convergence ([99–109](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L99)) | 784 | ~560 | B5 |
| §4 Optimistic ([113–121](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L113)) | 510 | ~220 | B6 |
| §5 Limits ([125–135](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L125)) | 912 | ~680 | B7 |
| §6 Road ([139–145](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L139)) | 571 | ~460 | B8 |
| **Total** | **5,264** | **~3,850** | |

- **B1. Drop the paired closing sentences.** Each artifact paragraph ends with "As a reproducibility artifact… As an agent artifact…" ([60](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L60), [62](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L62), [64](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L64), [66](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L66), [87](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L87)). Those sentences repeat the table's "Reproducibility function" and "Agent-friendliness function" columns. Cut them (about −180 words), so each paragraph keeps only what the table can't say.
- **B2. Merge ¶[37](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L37) and ¶[58](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L58).** Both say "drafted cheaply, verified by you, now with a second reader." Keep one short lead-in, with the figure carrying the owner-and-verifier idea (about −130).
- **B3. Describe the GitHub `agents.md` study once.**
  - It's described in full twice: at [paper.tex:60](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L60), with six items, and again at [paper.tex:101](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L101), with the same six areas.
  - Keep the six-area list only in §3, where the argument depends on it. In ¶60, keep only the three-tier boundary point (about −80).
- **B4. Tighten the invocation layer.** ¶[95](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L95) restates ¶[93](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L93) and anticipates the closing pledge ("the record of the work writes itself", which recurs at [141](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L141)). Merge the two paragraphs into one (about −100).
- **B5. Compress §3.**
  - Shorten ¶[105](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L105), the two partial matches, to about half.
  - Cut the closing flourishes of ¶[107](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L107) and ¶[109](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L109); both end by restating the convergence.
  - About −220 words.
- **B6. Cut §4 to one paragraph, or fold it into §2.**
  - [115](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L115) (the cost collapse) and [117](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L117) (the immediate payoff) restate ¶58 and the artifact paragraphs.
  - Keep the "old argument / new argument" contrast at [119](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L119); it's the most quotable part of the paper.
  - About −290 words. **Decision for you:** keep §4 as a short section, or merge it.
- **B7. Trim §5 without weakening its concessions.**
  - Cut the repeat of owner/verifier at [127](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L127); it was introduced in §2 and is the closing pledge at [143](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L143).
  - Shorten ¶[135](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L135), which re-lists each concession just made.
  - About −230 words. Keep all four concerns.
- **B8. Avoid a third statement of the thesis in §6.** ¶[145](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L145) repeats §4's "immediate payoff" argument. Keep the manifesto update at [141](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L141) and the pledge at [143](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L143), and shorten [145](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L145) to a two-sentence close (about −110).

### Part C — Writing issues to fix while revising (sciwrite Passes 1–5)

**[MAJOR] One name per thing (the "Banana Rule")**
- The GitHub `agents.md` study has four names: "An analysis of 2,500 such files" (60), "the GitHub analysis" (101), "an industry study" (103) and "the productivity study" (109). Pick one, e.g. "the GitHub study".
- "Context engineering" also appears as "context design" (27, and the §2 heading at 31).
- "Agent instruction file" also appears as "conventions file" (33) and "project conventions file" (117).
- **Plan:** use the term from the table in every case.

**[MAJOR] Inconsistent count of artifacts** (Pass 5)
- ¶[33](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L33) lists seven items: tests, commits, repository tree, README, conventions file, directories, decision record.
- The table and ¶[58](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L58) say five.
- **Plan:** make ¶33 list the five artifacts in the table.

**[MINOR] Number written two ways** (Pass 5)
- "2,500" (60) vs. "more than twenty five hundred" (101).
- The reference title says "over 2,500". Use "more than 2,500".

**Passes 1–3: sentence-level edits during the cuts**
- These are mostly clutter and vague "This" openers.
- Examples: "That observation is interesting, but the next step is more consequential" (29); "It is thus worth clarifying what this argument does and does not claim" (125); "This is the genuinely new part of the practice" (95).
- I'll apply them as we rewrite each section rather than list them separately now.

**Abstract (Pass 6)**
- The abstract is 46 words and already states the thesis. A department article's short abstract doesn't follow Nature's summary-paragraph structure, so I'd leave it alone unless the editors want something else.

### Content notes
1. ¶[103](https://github.com/barbagroup/agentic-reproducibility/blob/v1/paper.tex#L103) calls version control "the second pledge of my old reproducibility manifesto". Check this against the 2012 slides.
2. After the cuts, `nigh2025` (a blog post) carries more of §3's argument. That's fine for this department, but note that it isn't peer-reviewed.

### Top 5 priorities, in proposed order
1. **B1–B3:** cut the artifact paragraphs and the second description of the study. This saves the most words at the lowest risk.
2. **A4:** the figure. Its content decides which "agent drafts / you verify" sentences can go.
3. **A1–A3:** definitions, acronyms and the workshop name. These are small, targeted edits.
4. **B6–B8:** §4/§5/§6 consolidation, after you decide whether to keep §4.
5. **Part C:** the naming and count fixes, as a final consistency pass.

**Decisions I need from you before those steps:**
- Should §4 survive as a short section (B6)?
- How do you want the figure drawn: TikZ inside the LaTeX source, or a separate vector file?

The plan above is all I've produced so far. I haven't changed the manuscript or saved the plan to a file.

- **Recommended starting point:** the §2 redundancy cuts. They save the most words at the lowest risk.
- **The figure:** decide its design before the final cuts, because once it shows the "agent drafts, you verify" loop, the prose can drop about four sentences that say the same thing.
- **Before we reach those steps, I need from you:**
  - whether §4 stays as a short section or gets folded into §2;
  - whether the figure should be drawn in TikZ inside the LaTeX source or as a separate vector file.