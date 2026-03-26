# French Workspace - TCF Focus

Ce workspace sert maintenant a la preparation `TCF` avec un focus fort sur les `QCM`.

## Focus Actuel

- `SL` : structure de langue
- `VOC` : vocabulaire
- `CE` : comprehension ecrite en format ferme
- `CO` : comprehension orale en format ferme

La pratique orale longue se fait avec un professeur, pas ici.

## Fichiers Actifs

- [AGENTS.md](/Users/kylepham/Study/French/AGENTS.md)
- [CLAUDE.md](/Users/kylepham/Study/French/CLAUDE.md)
- [GUIDE_EXERCICES_FAIBLESSES.md](/Users/kylepham/Study/French/GUIDE_EXERCICES_FAIBLESSES.md)
- [PROGRESSION_GLOBALE.md](/Users/kylepham/Study/French/PROGRESSION_GLOBALE.md)
- [TCF_RESOURCE_STRATEGY.md](/Users/kylepham/Study/French/TCF_RESOURCE_STRATEGY.md)
- [05_grammaire_supplementaire/erreurs_en_cours.json](/Users/kylepham/Study/French/05_grammaire_supplementaire/erreurs_en_cours.json)
- [06_vocabulaire/vocabulaire_master.json](/Users/kylepham/Study/French/06_vocabulaire/vocabulaire_master.json)
- [data/progression_master.json](/Users/kylepham/Study/French/data/progression_master.json)

## Commandes Utiles

- `./tools/bootstrap-learning-workspace`
- `./tools/install-local-skills`
- `./tools/learn-fr`
- `./tools/bd-local ready --plain`

## Cloture D'Une Seance

Quand Kyle demande de fermer ou terminer une seance, la fermeture standard doit inclure :

- relecture rapide et nettoyage du journal de session
- bilan de session dans `sessions/YYYY-MM-DD_tcf_[module].md`
- mise a jour des donnees seulement si necessaire
- utilisation de `.learnings/` via le skill `self-improving-agent` pour les regles ou corrections durables
- mise a jour de Beads via le skill `beads-project-manager`
- commit des changements utiles lies a la seance

## Automatisation Locale

- Hooks Codex de rappel leger : [.codex/settings.json](/Users/kylepham/Study/French/.codex/settings.json)
- Skills versionnes dans le repo : `.skill-staging/`
- Memoire de travail versionnee : `.learnings/`

## Ressources Prioritaires

- `~/Study/books`
- `~/Study/Francais/tcf`

## Archive

L'ancien systeme `DELF` a ete deplace dans :

- [archive/delf_legacy_2026-03-24/README.md](/Users/kylepham/Study/French/archive/delf_legacy_2026-03-24/README.md)
