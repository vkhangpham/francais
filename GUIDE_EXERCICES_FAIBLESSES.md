# Guide Creation Exercices Faiblesses

**Usage** : Phase 1 des sessions `TCF`  
**But** : corriger vite les faiblesses qui bloquent les `QCM`

---

## Vue D Ensemble

### Structure Standard
- `15-20 min` : structure de langue
- `10-15 min` : vocabulaire cible
- `10 min` : erreurs recentes

### Objectif Global
- Priorite absolue au format `QCM`
- Questions courtes, claires, corrigibles vite
- Difficulte progressive, pas de pieges gratuits
- Donnees reelles obligatoires : `vocabulaire_master.json` + `erreurs_en_cours.json`
- Sources prioritaires : `~/Study/books` et `~/Study/Francais/tcf`

### Regles De Qualite
- Chaque item doit tester **une competence precise**
- Les distracteurs doivent etre plausibles mais justifiables
- Pas de production longue
- Pas de repetition mecanique des memes phrases
- Correction immediate avec regle breve

---

## Preparation Obligatoire

Avant de creer les exercices :

1. Lire `06_vocabulaire/vocabulaire_master.json`
2. Lire `05_grammaire_supplementaire/erreurs_en_cours.json`
3. Regarder la derniere session pertinente, puis au besoin les 2 ou 3 dernieres sessions
4. Decider explicitement ce qui doit etre `actif`, `spot-check`, ou `retire` dans le warm-up
5. Choisir une source principale dans `~/Study/books` ou `~/Study/Francais/tcf`

### Verifications Utiles

```bash
jq '.vocabulary[] | select(.mastery_level < 2 or .success_rate < 0.85)' 06_vocabulaire/vocabulaire_master.json
jq '.errors_database[] | select(.status != "resolved" and .status != "corrected")' 05_grammaire_supplementaire/erreurs_en_cours.json
ls -t sessions/*.md | head -3
```

### Warm-up De Rappel Adaptatif

Le warm-up ne doit pas rejouer mecaniquement les memes erreurs a chaque seance.

Avant d'ecrire la Phase 1 :

1. Lire la derniere seance pertinente et `data/progression_master.json`.
2. Classer les points a rappeler en trois groupes :
   - `actif` : encore faible, rate recemment, ou reapparu
   - `spot-check` : ameliore recemment, mais pas encore assez stable
   - `retire` : reussi de facon nette et ne doit plus revenir par defaut
3. Reinjecter en priorite :
   - les contrastes rates ou hesitants dans la derniere lecon
   - le vocabulaire nouveau encore fragile
   - les erreurs toujours ouvertes dans `erreurs_en_cours.json`
4. Limiter les points `spot-check` a `1-3` items brefs maximum.
5. Ne pas remettre un point stabilise dans chaque nouvelle lecon sans nouvel indice de rechute.

---

## Bloc 1 : Structure De Langue

### Format Par Defaut
- `15-20` questions
- `1 point` par question
- `QCM` ou transformation tres courte
- Seuil minimal : `15/20`

### Themes Prioritaires
- temps verbaux
- subjonctif ou indicatif
- prepositions
- pronoms
- articles
- accords
- connecteurs logiques
- negation

### Sources Prioritaires
- `Entrainement TCF - Structure de langue`
- `Grammaire Progressive Du Francais Avance`
- `Grammaire Essentielle du Francais B2`
- `Les-verbes-et-leurs-prepositions.pdf`
- `conjugaison_30_verbes_indispensables.pdf`

### Formats Autorises

#### Format A : QCM classique
```markdown
1. Si j'avais su, je ___ plus tot.
a) partirai
b) serais parti
c) partirais
d) suis parti

**Ma reponse :**
```

#### Format B : Mot juste en contexte
```markdown
2. Il insiste ___ venir ce soir.
a) a
b) de
c) pour
d) en

**Ma reponse :**
```

#### Format C : Mini transformation
```markdown
3. Transforme avec le pronom correct :
Je donne le livre a Marie.

**Ma reponse :**
```

### Distribution Recommandee
- `6-8` questions sur les erreurs frequentes
- `4-6` questions sur un chapitre source
- `4-6` questions melangees pour generalisation

---

## Bloc 2 : Vocabulaire Cible

### Objectif
Renforcer le vocabulaire utile au `TCF` sans sortir du format ferme.

### Selection
- mots des dernieres sessions
- mots avec `niveau_maitrise < 0.7`
- expressions ou collocations a faible stabilite
- mots frequents dans les livres TCF

### Formats Autorises
- synonyme
- antonyme
- sens en contexte
- mot manquant
- registre adapte
- collocation correcte

### Exemple
```markdown
1. Dans cette phrase, "neanmoins" est le plus proche de :
a) pourtant
b) d'abord
c) rarement
d) exprès

**Ma reponse :**
```

### Volume
- `20-30` items courts
- correction rapide
- signaler les mots a revoir demain

---

## Bloc 3 : Erreurs Recentes

### Objectif
Transformer les erreurs en reflexes corriges.

### Priorites
- erreurs avec frequence elevee
- erreurs des 7 derniers jours
- erreurs qui reviennent dans les QCM TCF

### Formats Autorises
- corriger la phrase
- choisir la bonne forme
- expliquer pourquoi une option est fausse
- mini serie de 3 a 5 items sur le meme pattern

### Exemple
```markdown
1. Choisis la forme correcte :
a) Je leurs parle souvent.
b) Je leur parle souvent.
c) Je le parle souvent.
d) Je lui parle souvents.

**Ma reponse :**
```

---

## Construction D Une Bonne Serie

### Algorithme Simple
1. Prendre `3-5` erreurs actives
2. Choisir `1` source grammaticale ou TCF
3. Ajouter `5-10` items de reutilisation vocabulaire
4. Melanger facile, moyen, difficile
5. Finir par `2-3` questions de verification rapide

### Equilibre Recommande
- `40%` erreurs personnelles
- `40%` TCF structure ou vocabulaire
- `20%` consolidation generale

---

## Format Reponse Kyle Obligatoire

Tous les exercices doivent garder un espace de reponse explicite :

```markdown
1. Question ?
a) ...
b) ...
c) ...
d) ...

**Ma reponse :**
```

Pour une transformation :

```markdown
2. Transforme :
[phrase]

**Ma reponse :**
```

---

## Correction Obligatoire

Apres chaque serie :

- donner le score
- corriger chaque erreur
- expliquer la regle en `1-2 phrases`
- noter les points a reinjecter dans `erreurs_en_cours.json`
- noter le vocabulaire a reinjecter dans `vocabulaire_master.json`

### Format
- `❌ erreur -> ✅ correction`
- si QCM : expliquer pourquoi la bonne option est correcte et pourquoi le distracteur choisi est faux

---

## Interdits

- pas de longues redactions
- pas de questions trop ouvertes
- pas de distracteurs absurdes
- pas de session sans source reelle
- pas de serie sans correction exploitable

---

## Rappel Final

Phase 1 doit servir le `TCF` :
- rapidite
- precision
- automatisation
- reutilisation du vrai vocabulaire
- correction immediate
