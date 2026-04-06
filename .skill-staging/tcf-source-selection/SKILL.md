---
name: tcf-source-selection
description: Select the right source material for a TCF session in this repo. Use before generating Phase 2 to choose an exact, high-value source from the prioritized book and TCF banks while avoiding theme repetition and vague source attribution.
---

# TCF Source Selection

Use this skill before creating the main Phase 2 content for any TCF session in this workspace.
Use it as a component under `tcf-core-workflow`, after warm-up planning and before module-specific generation.

The purpose is to choose the right source before generating exercises or lessons. This repo explicitly prefers real books and TCF materials over freeform invented content.

## Trigger

Use when:
- starting Phase 2 for `SL`, `VOC`, `CE`, `CO`, or `MIX`
- choosing the next lesson chapter, drill bank, reading text, or audio set
- avoiding repetition of the same recent theme or source window

## Mandatory pre-read

Before selecting the source:
1. Read `PROGRESSION_GLOBALE.md`
2. Read `data/progression_master.json`
3. Read `06_vocabulaire/vocabulaire_master.json`
4. Read `05_grammaire_supplementaire/erreurs_en_cours.json`
5. Read the latest relevant session journal(s)
6. If present, review `.learnings/*`
7. Check `./tools/bd-local ready --plain` when the next session priority is unclear

## Non-negotiable rule

Identify the exact source before creating Phase 2.
Do not generate the main lesson or drill block first and fill in the source afterward.

## Source hierarchy by module

### `VOC`
1. `~/Study/books/vocabulaire progressive b2/`
2. other vocabulary-oriented TCF books in `~/Study/Francais/tcf`
3. adapted material only if the source bank does not cover the need well

### `SL`
1. `~/Study/Francais/tcf/Entrainement TCF - Structure de langue*`
2. `~/Study/books/Grammaire Progressive Du Francais Avance.pdf`
3. `~/Study/books/Grammaire Essentielle du Francais B2/`
4. `~/Study/Francais/tcf/Les-verbes-et-leurs-prepositions.pdf`
5. `~/Study/Francais/tcf/conjugaison_30_verbes_indispensables.pdf`
6. `revisions/grammaire_progressive_avance/`

### `CE`
1. `~/Study/Francais/tcf/ABC TCF`
2. `~/Study/Francais/tcf/250_activites`
3. `~/Study/Francais/tcf/Reussir le TCF`
4. `~/Study/Francais/tcf/TCF TV5 NEW`
5. other TCF reading sources

### `CO`
1. official or book-based TCF audio with transcript/corrigé
2. `ABC TCF` audio
3. `Reussir le TCF` audio
4. other structured TCF listening sources
5. authentic audio only when manageable and clearly worth it

### `MIX`
Choose `2-4` sources max, with one clear source per slice.

## Selection criteria

Pick sources that maximize:
- alignment with the chosen module
- reinforcement of current weak points
- theme rotation without useless repetition
- clarity of correction and explainability
- reuse value for later revision

Avoid sources that are:
- too broad for one session
- too technical for the likely gain
- repetitive relative to the last `1-2` relevant sessions
- hard to correct cleanly

## Feasibility gate

Before finalizing the source, confirm it is practically usable in the current session:
- text is readable or extractable with reasonable effort
- transcript or corrigé exists when the module benefits strongly from it, especially `CO`
- OCR or extraction burden is acceptable for the likely learning gain
- the correction path is clear enough that the source will not create avoidable ambiguity

If the source is a scanned PDF or image-heavy page, prefer the local OCR workflow documented in repo guidance.

## Anti-repetition rules

Before finalizing the source, compare against recent sessions.

Avoid immediate repetition of:
- the same lexical field in back-to-back `VOC` sessions unless the first one clearly needs a follow-up
- the same grammar chapter style in `SL` when another active weakness is higher value
- the same CE/CO theme if recent exposure was already strong and no new angle exists

However, repetition is allowed when it is strategic:
- a weakness relapsed
- a first pass introduced too much material and needs consolidation
- a new source gives a complementary angle on the same theme

## Required source logging

Once selected, record:
- exact book or folder
- exact chapter, section, page range, file name, or audio identifier
- why this source is higher value than nearby alternatives
- any extraction or transcript note that materially affects usability

Use this block shape when logging the choice:
- `module`
- `selected source`
- `exact location`
- `why selected now`
- `what was avoided and why`
- `extraction / transcript note`

Good examples:
- `Vocabulaire progressif du français avancé - L'environnement, pages 138 à 141`
- `Entrainement TCF - Structure de langue - Série spéciale 1, pages X-Y`
- `ABC TCF audio track N with corrigé page M`

## Module-specific heuristics

### `VOC`
Prefer one coherent lexical field and enough density to build a lesson-first block.

### `SL`
Prefer sources that produce explainable QCM and clean distractor logic.

### `CE`
Prefer texts that naturally support paraphrase and inference questions.

### `CO`
Prefer audio with transcript support when possible, especially for precise correction.

### `MIX`
Favor source combinations that share a theme or weakness thread.

## Pitfalls

Avoid:
- source labels that are too vague
- choosing a source after the exercise is already written
- selecting a source only because it is nearby, not because it is high value
- repeating recent themes mechanically
- using authentic content that is harder to correct than it is useful

## Success criteria

A strong source selection should produce:
- one clearly logged source per main block
- good fit between source, module, and current weakness data
- less theme redundancy across sessions
- easier, more grounded Phase 2 generation
