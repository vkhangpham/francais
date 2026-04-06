# Guide Principal TCF - Focus QCM

**Objectif** : Preparation TCF centree sur les exercices a choix multiple, avec un workflow `PO` leger de preparation de scripts personnels  
**Perimetre** : Vocabulaire, grammaire, structure de langue, comprehension ecrite, comprehension orale, et preparation guidee de support `PO`  
**Hors perimetre principal** : simulation orale longue et interaction spontanee de type professeur

---

## Commande De Demarrage

```text
/learn-fr
```

**Kyle choisit le module du jour** : `SL`, `VOC`, `CE`, `CO`, `PO`, ou `MIX`  
**Format par defaut** : `QCM`, phrases a trous, transformations courtes  
**Duree type** : `60-120 minutes` en 3 phases

### Sources Canoniques

Pour reduire la derive documentaire :

- `AGENTS.md` = regles canoniques et invariants du workspace
- `.skill-staging/tcf-core-workflow/` = workflow partage canonique pour `SL`, `VOC`, `CE`, `CO`, et `MIX`
- `.skill-staging/tcf-session-closure/` = playbook canonique de cloture
- `.skill-staging/tcf-phase1-warmup/` = playbook canonique de warm-up Phase 1
- `.skill-staging/tcf-source-selection/` = playbook canonique de selection de source
- `PROGRESSION_GLOBALE.md` = dashboard et direction strategique, pas la source canonique du workflow detaille

### Commandes Repo Utiles

- `./tools/bootstrap-learning-workspace`
- `./tools/install-local-skills`
- `./tools/learn-fr`
- `./tools/bd-local ready --plain`

### Workflow PO Persistant

Le module `PO` suit un modele inspire du pattern `LLM wiki` :

Ce pattern doit aussi etre considere comme generique pour d'autres domaines du workspace quand la connaissance doit s'accumuler au lieu d'etre rederivee a chaque fois. Le skill local de reference pour cela est `.skill-staging/llm-wiki-maintainer/`.

- **Raw sources** : notes d'entretien, prompts TCF, feedback prof, transcriptions, brouillons precedents. Ces sources sont archivees sous `po/raw/` et ne doivent pas etre reecrites une fois figees.
- **Wiki PO** : pages markdown maintenues par Codex sous `po/` (`profile/`, `entities/`, `concepts/`, `scenarios/`, `reviews/`). Codex met a jour ce wiki au fil des seances.
- **Schema** : `po/schema.md` + les regles de ce fichier definissent comment interroger Kyle, ingerer une nouvelle source, mettre a jour l'index et le log, et faire du lint periodique.

Le but n'est pas de remplacer la pratique orale reelle. Le but est de construire un artefact persistant, compounding, et tres personnel qui produit ensuite des scripts, cue cards, skeletons, et scenarios rehearseables.

---

## Obligations De Lecture

**Avant toute session** :

1. **Lire** [GUIDE_EXERCICES_FAIBLESSES.md](GUIDE_EXERCICES_FAIBLESSES.md) integralement
2. **Consulter** [06_vocabulaire/vocabulaire_master.json](06_vocabulaire/vocabulaire_master.json)
3. **Consulter** [05_grammaire_supplementaire/erreurs_en_cours.json](05_grammaire_supplementaire/erreurs_en_cours.json)
4. **Consulter** [PROGRESSION_GLOBALE.md](PROGRESSION_GLOBALE.md) pour contexte global
5. **Relire la ou les dernieres seances pertinentes** dans `sessions/` avant d'ecrire le warm-up de Phase 1
6. **Identifier la source exacte** dans `~/Study/books` ou `~/Study/Francais/tcf` avant la creation de la Phase 2

**Aucune session `SL` `VOC` `CE` `CO` `MIX` ne commence sans lecture du guide Phase 1 et consultation des donnees.**
**Aucune nouvelle seance ne doit reutiliser mecaniquement les memes rappels sans verifier d'abord la derniere seance pertinente et l'etat frais des fichiers de progression.**
**Pour `PO`, lire au minimum `po/schema.md`, `po/index.md`, `po/profile/speaker_profile.md`, et les scenarios pertinents avant de lancer un nouvel entretien.**

### Memoire Auto-Amelioration

- Toujours utiliser [$self-improving-agent](/Users/kylepham/.codex/skills/self-improving-agent/SKILL.md) dans ce workspace.
- Au debut de chaque session importante, relire `.learnings/LEARNINGS.md`, `.learnings/ERRORS.md` et `.learnings/FEATURE_REQUESTS.md` si disponibles.
- Apres toute erreur non evidente, correction importante de Kyle, ou amelioration de workflow reproductible, consigner une entree courte et actionnable dans `.learnings/`.
- Si une regle devient recurrente et utile pour les prochaines sessions, la promouvoir dans `CLAUDE.md`, `AGENTS.md` ou dans les fichiers de suivi appropries.

### Gestion De Projet Avec Beads

- Toujours utiliser [$beads-project-manager](/Users/kylepham/.codex/skills/beads-project-manager/SKILL.md) pour planifier et suivre le travail d'apprentissage dans ce workspace.
- Utiliser `tools/bd-local ...` de preference pour les commandes Beads dans ce repo. Ce wrapper recharge automatiquement le port Dolt en cours depuis `.beads/`.
- Si une commande Beads echoue dans l'environnement sandbox avec une erreur Dolt ou port, rerun les commandes `bd` hors sandbox. Les prefixes utiles sont deja approuves pour `bd ready`, `bd list`, `bd create`, `bd update`, `bd close`, `bd doctor`, et `bd dolt start`.
- Utiliser Beads pour les epics, taches de suivi, faiblesses recurrentes a retravailler et prochaines seances utiles.
- Utiliser `.learnings/` pour les observations brutes, puis creer ou mettre a jour une issue Beads quand une vraie action de suivi est necessaire.
- Verifier `tools/bd-local ready --plain` avant de choisir le prochain travail important.

---

## Workflow Universel

Ordre d'orchestration par defaut pour `SL`, `VOC`, `CE`, `CO`, et `MIX` :
1. `tcf-core-workflow`
2. `tcf-phase1-warmup`
3. `tcf-source-selection`
4. skill du module
5. `tcf-session-closure` quand la seance se termine

### Phase 1 : Faiblesses Prioritaires (30-40 min)

#### Regle De Warm-up Adaptatif
- Le warm-up de chaque nouvelle seance doit partir d'abord de la seance pertinente la plus recente, puis de `vocabulaire_master.json`, `erreurs_en_cours.json` et `data/progression_master.json`.
- Une erreur ou un contraste qui s'est nettement ameliore ne doit pas revenir comme drill complet dans chaque nouvelle seance.
- Pour un point recemment ameliore mais encore jeune, garder seulement `1-2` items de spot-check si necessaire.
- Les drills repetes et plus longs doivent etre reserves aux points encore actifs, instables, ou qui reapparaissent.
- Si la derniere seance montre qu'un point est stabilise, le retirer du warm-up par defaut jusqu'a nouvel indice de rechute.

#### 1. Structure De Langue (15-20 min)
- **Source** : `erreurs_en_cours.json` + livres TCF
- **Format** : 15-20 QCM ou transformations courtes
- **Focus** : temps, subjonctif/indicatif, prepositions, pronoms, connecteurs, articles, accords
- **Seuil** : `15/20` minimum pour continuer

#### 2. Vocabulaire Cible (10-15 min)
- **Source** : `vocabulaire_master.json` + supports TCF
- **Format** : 20-30 items
- **Types** : synonymes, antonymes, registre, collocations, expressions, mot juste en contexte
- **Regle** : priorite aux mots faibles et recents, pas de redondance inutile

#### 3. Erreurs Recentes (10 min)
- **Base** : patterns recurrents documentes
- **Format** : mini-serie de QCM ou correction ciblee
- **Correction** : immediate, breve, exploitable pour la prochaine session

### Phase 2 : Module Principal (45-60 min)

**Choix possible** :

- `SL` : structure de langue TCF
  Focus sur grammaire, conjugaison, articles, prepositions, pronoms, connecteurs, logique grammaticale.
- `VOC` : vocabulaire TCF
  Focus sur sens en contexte, expressions, familles de mots, synonymie, nuance de registre.
- `CE` : comprehension ecrite QCM
  Textes TCF ou textes adaptes avec questions a choix multiple uniquement.
- `CO` : comprehension orale QCM
  Audio ou transcription avec questions type TCF, prise d'indices et elimination des distracteurs.
- `PO` : preparation orale guidee
  Entretien, collecte de sources personnelles, redaction de scripts, cue cards, skeletons, et mise a jour du wiki `po/`.
- `MIX` : session chronometree melangeant `SL`, `VOC`, `CE`, `CO`
  Objectif : automatisation et endurance QCM.

### Phase 3 : Integration (15-30 min)

#### 1. Mise A Jour Donnees
- **Vocabulaire nouveau** vers `vocabulaire_master.json`
- **Erreurs detectees** vers `erreurs_en_cours.json`
- **Resultat session** vers `data/progression_master.json`
- **Objectif** : laisser un etat assez frais pour que la seance suivante ne reparte pas de rappels obsoletes

#### 1bis. Dual-write Vers Le Wiki Global
- Toute seance importante doit aussi mettre a jour au moins une page canonique sous `fr/` si elle produit une comprehension durable reutilisable.
- Ne pas laisser les explications, contrastes, pieges de QCM, clarifications de chat, ou syntheses utiles seulement dans `sessions/` ou dans les JSON.
- Utiliser `fr/reviews/dual_write_policy.md`, `fr/reviews/dual_write_checklist.md`, et `fr/templates/session_dual_write_template.md` comme references operationnelles.

#### 2. Export Revision
- QCM difficiles a refaire
- Regles grammaticales a memoriser
- Vocabulaire a revoir avec contexte

#### 3. Finalisation
- **Journal** : `sessions/YYYY-MM-DD_tcf_[module].md` pour `SL/VOC/CE/CO/MIX`, ou mise a jour du wiki `po/` pour `PO`
- **Commit auto** : `"[TCF][MODULE] score/max, vocab X, erreurs Y"`
- **Mise a jour** : `PROGRESSION_GLOBALE.md`

---

## Modules Cibles

| Module | Cible Travail | Priorite | Format |
|--------|---------------|----------|--------|
| `SL` | 75-85% | Tres haute | QCM |
| `VOC` | 75-85% | Tres haute | QCM |
| `CE` | 70-80% | Haute | QCM |
| `CO` | 65-75% | Moyenne a haute | QCM |
| `PO` | 65-80% sur scripts rehearseables | Moyenne | base orale personnelle + wiki |

### Metriques Quotidiennes
- `20-40` questions utiles par session
- `100%` correction immediate
- `80%+` de precision sur les series deja vues
- `20` mots ou expressions consolides par session utile

---

## Donnees Centralisees

### Fichiers Principaux
- **Vocabulaire** : [06_vocabulaire/vocabulaire_master.json](06_vocabulaire/vocabulaire_master.json)
- **Erreurs** : [05_grammaire_supplementaire/erreurs_en_cours.json](05_grammaire_supplementaire/erreurs_en_cours.json)
- **Progression** : [data/progression_master.json](data/progression_master.json)
- **Dashboard** : [PROGRESSION_GLOBALE.md](PROGRESSION_GLOBALE.md)

### Sources Prioritaires
- `~/Study/books`
- `~/Study/Francais/tcf`

**Regle** : privilegier les supports TCF et les livres de grammaire/vocabulaire avant de creer du contenu libre.

---

## Regles Importantes

### Correction Systematique
- Toujours corriger toutes les erreurs de Kyle.
- Format : `❌ erreur -> ✅ correction`
- Explication : `1-2 phrases max`

### Preferences Kyle
- `QCM` en priorite
- Transformations courtes et phrases a trous bienvenues
- Pas de production longue
- Pas de simulation orale longue dans ce workspace
- Pour `PO`, Codex sert a interviewer Kyle, construire des scripts/scenarios personnels, puis les archiver dans un wiki persistant ; l'entrainement oral en direct se fait ensuite hors chat.
- Pour `PO`, privilegier les scripts courts, rehearseables, et hautement personnels plutot que des monologues generiques ou trop litteraires.
- Pour `PO`, chaque nouvelle seance doit etre traitee comme une operation d'ingest : noter la source brute, mettre a jour `po/index.md`, `po/log.md`, et toute page pertinente du wiki, puis filer dans le wiki les formulations finales utiles.
- Pour `PO`, toujours produire au moins une version `core`, une version `natural`, une `cue card`, et un `skeleton` si la seance va jusqu'au livrable.
- Progression et repetition intelligente avant perfection
- Si Kyle ne comprend pas le referent reel d'un mot, ne pas tourner en boucle avec une simple traduction `A = B / B = A`. Expliquer d'abord, en langage simple, ce qu'est la chose dans le monde reel, puis donner la traduction ou l'etiquette en francais et en anglais si utile.

### Fin De Session

```text
terminons cette seance
```

---

## Ressources Principales

### Dossiers Prioritaires
- `~/Study/Francais/tcf/ABC TCF`
- `~/Study/Francais/tcf/250_activites`
- `~/Study/Francais/tcf/Reussir le TCF`
- `~/Study/Francais/tcf/TCF TV5 NEW`
- `~/Study/Francais/tcf/Test De Connaissance Du Francais`

### Livres Utiles
- `~/Study/books/Grammaire Progressive Du Francais Avance.pdf`
- `~/Study/books/Grammaire Essentielle du Francais B2/`
- `~/Study/books/vocabulaire progressive b2/`
- `~/Study/Francais/tcf/Les-verbes-et-leurs-prepositions.pdf`
- `~/Study/Francais/tcf/conjugaison_30_verbes_indispensables.pdf`

### Usage
- `SL` : livres de structure de langue et grammaire
- `VOC` : listes de vocabulaire, expressions, collocations
- `CE` : supports TCF lecture avec distracteurs
- `CO` : supports TCF audio/transcription avec questions fermees
- `PO` : wiki `po/`, prompts TCF, notes personnelles, et feedback professeur convertis en sources persistantes

### Langue De Sortie

- Anglais par defaut pour le travail technique, la maintenance du repo, le Git, et l'outillage
- Francais pour le contenu pedagogique, les exercices, les lecons, et les artefacts de revision
- Si un skill produit du contenu destine a Kyle pendant une vraie seance d'apprentissage, ce contenu doit etre en francais sauf demande contraire explicite
