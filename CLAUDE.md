# Guide Principal TCF - Focus QCM

**Objectif** : Preparation TCF centree sur les exercices a choix multiple  
**Perimetre** : Vocabulaire, grammaire, structure de langue, comprehension ecrite et comprehension orale  
**Hors perimetre principal** : Expression orale avec un professeur, pas avec ce workspace

---

## Commande De Demarrage

```text
/learn-fr
```

**Kyle choisit le module du jour** : `SL`, `VOC`, `CE`, `CO`, ou `MIX`  
**Format par defaut** : `QCM`, phrases a trous, transformations courtes  
**Duree type** : `60-120 minutes` en 3 phases

### Commandes Repo Utiles

- `./tools/bootstrap-learning-workspace`
- `./tools/install-local-skills`
- `./tools/learn-fr`
- `./tools/bd-local ready --plain`

---

## Obligations De Lecture

**Avant toute session** :

1. **Lire** [GUIDE_EXERCICES_FAIBLESSES.md](GUIDE_EXERCICES_FAIBLESSES.md) integralement
2. **Consulter** [06_vocabulaire/vocabulaire_master.json](06_vocabulaire/vocabulaire_master.json)
3. **Consulter** [05_grammaire_supplementaire/erreurs_en_cours.json](05_grammaire_supplementaire/erreurs_en_cours.json)
4. **Consulter** [PROGRESSION_GLOBALE.md](PROGRESSION_GLOBALE.md) pour contexte global
5. **Identifier la source exacte** dans `~/Study/books` ou `~/Study/Francais/tcf` avant la creation de la Phase 2

**Aucune session ne commence sans lecture du guide Phase 1 et consultation des donnees.**

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

### Phase 1 : Faiblesses Prioritaires (30-40 min)

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
- `MIX` : session chronometree melangeant `SL`, `VOC`, `CE`, `CO`
  Objectif : automatisation et endurance QCM.

### Phase 3 : Integration (15-30 min)

#### 1. Mise A Jour Donnees
- **Vocabulaire nouveau** vers `vocabulaire_master.json`
- **Erreurs detectees** vers `erreurs_en_cours.json`
- **Resultat session** vers `data/progression_master.json`

#### 2. Export Revision
- QCM difficiles a refaire
- Regles grammaticales a memoriser
- Vocabulaire a revoir avec contexte

#### 3. Finalisation
- **Journal** : `sessions/YYYY-MM-DD_tcf_[module].md`
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
| `PO` | Travail externe avec prof | Hors scope principal | - |

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
- Progression et repetition intelligente avant perfection

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
