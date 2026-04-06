# French Workspace - TCF Focus

Ce workspace sert maintenant a la preparation `TCF` avec un focus fort sur les `QCM`, plus un workflow `PO` leger centre sur la preparation de scripts personnels a rehearser seul.

## Focus Actuel

- `SL` : structure de langue
- `VOC` : vocabulaire
- `CE` : comprehension ecrite en format ferme
- `CO` : comprehension orale en format ferme
- `PO` : preparation de scripts et scenarios personnels, sans simulation orale longue

La pratique orale longue et la vraie interaction spontanee se font avec un professeur ; ici, Codex sert surtout a construire et maintenir une base personnelle de pratique orale.

Le workspace evolue maintenant vers une base de connaissances globale `fr/` pour toute la preparation : chats, vocabulaire, structure de langue, CE, CO, PO, sessions, questions, et syntheses reutilisables.

## Canonical Workflow

If you only read one file, read [AGENTS.md](AGENTS.md).

Roles:
- `README.md` = quick orientation
- `AGENTS.md` = canonical workflow and agent rules
- `.skill-staging/tcf-core-workflow/` = shared TCF session workflow for non-PO modules
- `PROGRESSION_GLOBALE.md` = dashboard, targets, and next directions
- `.skill-staging/` = reusable operational playbooks

## Fichiers Actifs

- [AGENTS.md](AGENTS.md)
- [CLAUDE.md](CLAUDE.md)
- [GUIDE_EXERCICES_FAIBLESSES.md](GUIDE_EXERCICES_FAIBLESSES.md)
- [PROGRESSION_GLOBALE.md](PROGRESSION_GLOBALE.md)
- [TCF_RESOURCE_STRATEGY.md](TCF_RESOURCE_STRATEGY.md)
- [05_grammaire_supplementaire/erreurs_en_cours.json](05_grammaire_supplementaire/erreurs_en_cours.json)
- [06_vocabulaire/vocabulaire_master.json](06_vocabulaire/vocabulaire_master.json)
- [data/progression_master.json](data/progression_master.json)
- [fr/README.md](fr/README.md)
- [po/README.md](po/README.md)

## Commandes Utiles

- `./tools/bootstrap-learning-workspace`
- `./tools/install-local-skills`
- `./tools/learn-fr`
- `./tools/bd-local ready --plain`

## Demarrage Recommande

1. Run `./tools/learn-fr`
2. Read `AGENTS.md`
3. Follow the module-specific pre-read and source-selection workflow from `AGENTS.md`
4. Use the staged skills in `.skill-staging/` as the canonical operational playbooks
5. For any important session, follow the Phase 3 dual-write rule in `fr/reviews/dual_write_policy.md` so durable learning is also filed into the global wiki

## Cloture D'Une Seance

Quand Kyle demande de fermer ou terminer une seance, la fermeture standard doit inclure :

- relecture rapide et nettoyage du journal de session
- bilan de session dans `sessions/YYYY-MM-DD_tcf_[module].md`
- mise a jour des donnees seulement si necessaire
- utilisation de `.learnings/` via le skill `self-improving-agent` pour les regles ou corrections durables
- mise a jour de Beads via le skill `beads-project-manager`
- commit des changements utiles lies a la seance

La procedure detaillee de cloture est maintenue dans `AGENTS.md` et le skill `.skill-staging/tcf-session-closure/`.

## Automatisation Locale

- Hooks Codex de rappel leger : [.codex/settings.json](.codex/settings.json)
- Skills versionnes dans le repo : `.skill-staging/`
- Memoire de travail versionnee : `.learnings/`

## Ressources Prioritaires

- `~/Study/books`
- `~/Study/Francais/tcf`

## Archive

L'ancien systeme `DELF` a ete deplace dans :

- [archive/delf_legacy_2026-03-24/README.md](archive/delf_legacy_2026-03-24/README.md)
