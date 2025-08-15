# 🎧 COMPRÉHENSION ORALE - Guide Spécifique DELF B2

## 📋 SPÉCIFICITÉS CO

### **Format DELF B2**
- 2 documents audio (5-7 minutes total)
- 2 écoutes par document avec pause 1 minute
- Questions QCM + réponses courtes
- **Score cible : 16-18/25**

### **Types de Documents**
- **Interviews** : Questions/réponses, changements locuteur
- **Conférences** : Structure plan, exemples, conclusion
- **Débats** : Positions opposées, arguments, modérateur
- **Reportages** : Faits, témoignages, expertise

---

## ⚡ MÉTHODOLOGIE CO SPÉCIFIQUE

### **🔄 Phase 0 : Contexte et Stratégie (5 min)**
**Analyse sessions précédentes et sélection stratégique audio**

#### **1. Historique Sessions CO**
```bash
# Thèmes des 3 dernières sessions CO
grep -h "Thème\|thème" sessions/2025-*_co*.md | tail -3

# Scores progression récente
jq 'to_entries | map(select(.value.skill == "CO")) | .[-3:] | .[].value.score' data/progression_master.json
```

#### **2. Analyse Faiblesses Audio**
```bash
# Vocabulaire faible spécifique audio
jq '.[] | select(.competence == "CO" and .niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# Erreurs récurrentes CO
jq '.[] | select(.competence == "CO" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json
```

#### **3. Sélection Stratégique Source**
**Ressources organisées par progression :**
- **Niveau 1** : Official DELF samples (exam simulation)
- **Niveau 2** : YouTube structured practice (skill building) 
- **Niveau 3** : Authentic radio/podcasts (real-world exposure)

#### **4. Choix Thématique Intelligent**
**5 Domaines DELF B2 avec audio authentique :**
- **Société** : Débats France Inter, reportages sociaux
- **Éducation** : Conférences France Culture, interviews pédagogiques
- **Environnement** : Documentaires écologiques, débats climatiques
- **Technologie** : Podcasts innovation, interviews tech
- **Culture** : Émissions culturelles, critiques artistiques

---

### **🎯 Structure Session CO Complète**

#### **1. Préparation Audio (10 min)**
**Techniques spécifiques avant écoute**

##### **A. Activation Vocabulaire Thématique (4 min)**
- **15-20 mots-clés** anticipés selon thème choisi
- **Expressions audio courantes** : "d'après", "selon", "il s'agit de"
- **Connecteurs oraux** : "bon", "alors", "donc", "en fait"
- **Marqueurs d'opinion** : "à mon avis", "personnellement", "franchement"

##### **B. Préparation Grille Écoute (3 min)**
**Template optimisé prise notes :**
```
DOCUMENT 1 : [Titre/Type]
LOCUTEURS : [Qui parle?]
IDÉE PRINCIPALE : ___________
ARGUMENTS/POINTS CLÉS :
1. _______  2. _______  3. _______
DÉTAILS : [Chiffres, dates, exemples]
OPINIONS : [Position chaque locuteur]
```

##### **C. Lecture Questions Stratégique (3 min)**
- **Identification mots-clés** dans questions
- **Anticipation type réponses** (QCM/réponses courtes)
- **Prédiction contenu** selon type document

#### **2. Double Écoute DELF (20-25 min)**
**Format officiel respecté**

##### **Première Écoute - Vue d'ensemble**
- **Compréhension globale** : type document, locuteurs, sujet
- **Notes larges** : qui, quoi, où, quand, pourquoi
- **Structure audio** : introduction, développement, conclusion
- **Repérage transitions** : changements locuteurs, nouveaux sujets

##### **Pause Intermédiaire (1 min exacte)**
- **Organisation notes** prises
- **Identification lacunes** information
- **Anticipation détails** manquants pour questions

##### **Deuxième Écoute - Précision**
- **Focus détails spécifiques** selon questions
- **Chiffres, dates, noms propres** notés exactement
- **Nuances opinion** : accord, désaccord, hésitation
- **Complétion grille** avec informations manquantes

##### **Finalisation Réponses (3 min)**
- **Vérification cohérence** réponses avec audio
- **Choix définitifs** QCM selon certitude
- **Rédaction claire** réponses courtes

#### **3. Post-Écoute Analyse (15 min)**
- **Correction avec transcription** (si disponible)
- **Identification erreurs compréhension** vs erreurs linguistiques
- **Analyse vocabulaire nouveau** rencontré
- **Discussion points incompris** avec Claude
- **Intégration données** → Voir section suivante

---

## 📝 SYSTÈME PRISE DE NOTES

```
TITRE/SUJET : ___________
QUI : ___________
IDÉE PRINCIPALE : ___________

ARGUMENTS :
1. _______
2. _______
3. _______

EXEMPLES : _______
CONCLUSION : _______
```

### **Abréviations Utiles**
- **bcp** = beaucoup
- **tjrs** = toujours
- **pb** = problème
- **dev** = développement
- **gvt** = gouvernement
- **↑** = augmentation
- **↓** = diminution

---

## 📚 RESSOURCES AUDIO COMPLÈTES

### **🏆 NIVEAU 1 : Sources Officielles DELF**
**3 Exemples Complets (vs 1 précédemment)**

#### **France Éducation Internationale**
- **[Exemple 1](https://www.france-education-international.fr/audio/1183)** : Audio intégral + transcription
- **[Exemple 2](https://www.france-education-international.fr/audio/1189)** : Audio intégral + transcription
- **[Accès organisé](http://www.delfdalf.fr/delf-b2-sample-papers.html)** : 3 formats différents incluant nouveau format 2020+

#### **Commandes Extraction Directe**
```bash
# Téléchargement officiel MP3
wget "https://www.france-education-international.fr/audio/1183" -O delf_b2_exemple1.mp3
wget "https://www.france-education-international.fr/audio/1189" -O delf_b2_exemple2.mp3
```

### **🎬 NIVEAU 2 : Practice YouTube Structurée**
**2760+ vidéos disponibles recherche "DELF B2 compréhension orale"**

#### **Chaînes Spécialisées Recommandées**
- **French School TV** : Série "DELF B2 Compréhension orale 2025"
- **French 'N' You** : 31+ tests practice différents formats
- **Réussir le Delf B1-B2** : Playlists complètes avec corrections
- **French avec Pierre** : Corrections détaillées + méthodes

#### **Extraction Automatique YouTube**
```bash
# Recherche automatique nouvelles vidéos
yt-dlp "ytsearch10:DELF B2 compréhension orale" -x --audio-format mp3

# Playlist chaîne spécialisée  
yt-dlp "https://youtube.com/playlist?list=[PLAYLIST_ID]" -x --audio-format mp3
```

### **📻 NIVEAU 3 : Sources Authentiques**
**Radio française en temps réel**

#### **Sources Recommandées (identiques CLAUDE.md)**
- **France Inter** : [Le 7/9](https://www.franceinter.fr/emissions/le-7-9), [Journal 13h](https://www.franceinter.fr/emissions/journal-de-13h)
- **France Culture** : [Les Matins](https://www.franceculture.fr/emissions/les-matins), Conférences
- **RFI** : [Journal Afrique](https://www.rfi.fr/fr/podcasts/journal-afrique/), [Français Facile](https://francaisfacile.rfi.fr/)
- **RTL** : RTL Matin, Interviews

#### **Podcasts B2 Structurés**
- **[InnerFrench](https://innerfrench.com/podcast/)** : Stories B2 niveau, rythme naturel ralenti
- **[Journal français facile](https://francaisfacile.rfi.fr/)** : 10 min actualité quotidienne RFI
- **One Thing in French Day** : Vocabulaire quotidien
- **Arte Radio** : Documentaires courts
- **Transfert** : Témoignages personnels

#### **Extraction Radio/Podcast**
```bash
# RFI Journal automatique
wget "https://www.rfi.fr/fr/podcasts/journal-afrique/" -O - | grep -o 'https://[^"]*\.mp3'

# France Inter émissions
yt-dlp "https://www.franceinter.fr/emissions/le-7-9" --extract-flat-playlist
```

### **💎 NIVEAU 4 : Plateformes Premium**
- **LinguaQuest** : 3 sample papers complets organisés
- **FluentU** : Vidéos authentiques avec sous-titres interactifs
- **Yabla French** : Collection massive + outil dictée intégré

---

## 🔧 DIFFICULTÉS SPÉCIFIQUES CO

### **Accents & Débits**
- **Parisien standard** : Base référence
- **Accent du Sud** : R roulés, voyelles ouvertes
- **Québécois** : Diphtongues, vocabulaire distinct
- **Débit rapide** : 180+ mots/minute (journaux)

### **Stratégies Compensation**
- Focus mots porteurs sens (verbes, noms)
- Ignorer hésitations, répétitions
- Contexte pour deviner mots manqués
- Concentration sur réponse, pas compréhension 100%

---

## 📊 BARÈME TYPE CO DELF B2

### **Document 1 : Interview/Débat**
- Questions factuelles : 6 points
- Compréhension opinions : 4 points
- Synthèse arguments : 3 points

### **Document 2 : Conférence/Reportage**
- Information principale : 4 points
- Détails spécifiques : 5 points
- Compréhension implicite : 3 points

**Total : 25 points**  
**Seuil réussite : 12.5/25**  
**Objectif Kyle : 16-18/25**

---

## 📊 STRATÉGIE PROGRESSION CO

### **🎯 Parcours Apprentissage Structuré**

#### **Semaines 1-2 : Fondations (Niveau 1)**
- **3 samples officiels** : Maîtrise format exact DELF
- **Identification faiblesses** : Types questions, vocabulaire, vitesse
- **Score baseline** : Établir niveau actuel CO

#### **Semaines 3-6 : Pratique Intensive (Niveau 2)**
- **YouTube practice quotidien** : 1 vidéo/jour, chaînes spécialisées
- **Variété formats** : Interviews, débats, reportages, conférences
- **Amélioration score** : Cibler 16-18/25 objectif Kyle

#### **Semaines 7+ : Exposition Réelle (Niveau 3)**
- **Audio authentique quotidien** : 15-20 min France Inter/Culture
- **Podcast régulier** : Journal français facile, InnerFrench
- **Maintien compétences** : Practice officiel 1x/semaine

### **⚡ WORKFLOW SESSION CO OPTIMISÉ**

#### **Mode A : Session Indépendante (CO choisi comme compétence principale)**
- **Phase 0** (5 min) : Contexte + stratégie sélection audio
- **Préparation** (10 min) : Activation vocabulaire + grille écoute
- **Double écoute** (25 min) : Format DELF strict avec chronométrage
- **Post-analyse** (15 min) : Correction + discussion + intégration données

#### **Mode B : Session Liée (après CE même thème)**
- **Phase 0 accélérée** (2 min) : Thème déjà établi par CE
- **Préparation ciblée** (7 min) : Vocabulaire CE acquis + spécificités audio
- **Double écoute** (25 min) : Audio même thématique que CE
- **Post-analyse** (10 min) : Focus erreurs CO spécifiques
- **Avantage** : Vocabulaire CE immédiatement renforcé par écoute

### **🔧 COMMANDES UTILES SESSION**

#### **Sélection Audio Intelligente**
```bash
# Audio officiel pour simulation exam
wget "https://www.france-education-international.fr/audio/1183"

# Practice YouTube par niveau difficulté
yt-dlp "ytsearch5:DELF B2 facile compréhension" -x --audio-format mp3

# Podcast quotidien RFI
curl "https://francaisfacile.rfi.fr/fr/podcasts/journal-francais-facile"
```

#### **Gestion Session**
```bash
# Timer écoutes officielles
timer 3m "Lecture questions" && timer 1m "Pause" && timer 5m "Écoute 2"

# Découpage audio pour répétition
ffmpeg -i audio_complet.mp3 -ss 00:02:30 -t 00:01:30 passage_difficile.mp3
```

---

## 📊 INTÉGRATION DONNÉES CO

### **Vocabulaire Audio → vocabulaire_master.json**

#### **Expressions Orales Spécifiques**
```json
{
  "mot": "il s'agit de",
  "definition": "expression pour introduire un sujet à l'oral",
  "contexte_acquisition": "CO03 - interview économiste",
  "exemples": [
    "Il s'agit d'un problème majeur",
    "Il s'agit de comprendre les enjeux"
  ],
  "competence": "CO",
  "type": "expression_orale",
  "niveau_maitrise": 0.0,
  "specificite_audio": "marqueur introduction sujet"
}
```

#### **Vocabulaire Thématique Audio**
```json
{
  "mot": "interlocuteur",
  "definition": "personne qui participe à une conversation",
  "contexte_acquisition": "CO03 - débat politique France Inter",
  "exemples": [
    "L'interlocuteur n'était pas d'accord",
    "Mon interlocuteur a changé de sujet"
  ],
  "competence": "CO",
  "type": "vocabulaire_communication",
  "niveau_maitrise": 0.0
}
```

### **Erreurs Compréhension → erreurs_en_cours.json**

#### **Erreurs Lexicales**
```json
{
  "id": "ERR_CO03_001",
  "erreur_kyle": "confusion 'depuis' vs 'pendant' audio",
  "correction": "depuis = point départ, pendant = durée",
  "type": "lexique",
  "sous_type": "expressions_temporelles",
  "competence": "CO",
  "contexte": "Interview chronologie événements",
  "recommandation": "Focus marqueurs temporels audio"
}
```

#### **Erreurs Compréhension Globale**
```json
{
  "id": "ERR_CO03_002",
  "erreur_kyle": "confusion locuteurs multiples débat",
  "correction": "identifier voix + positions avant écoute",
  "type": "comprehension",
  "sous_type": "structure_audio",
  "competence": "CO",
  "contexte": "Débat 3 participants France Culture",
  "recommandation": "Mapping locuteurs première écoute"
}
```

### **Session Journal → coXX_apres_ecoute.md**
```markdown
# CO03 - Post-Écoute (15/08/2025)

## 📊 Résultats
- **Score** : 15/25 (60%)
- **Source** : France Inter - Débat télétravail
- **Durée audio** : 6m30
- **Type** : Interview + micro-trottoir

## 🎧 Analyse Audio
### Points Forts
- Compréhension globale claire
- Identification correcte locuteurs
- Repérage arguments principaux

### Points Faibles
- Confusion expressions temporelles ("depuis/pendant")
- Chiffres mal notés (vitesse élocution)
- Vocabulaire économique insuffisant

## 📝 Vocabulaire Acquis (8 mots)
- interlocuteur, davantage, néanmoins, il s'agit de
- en revanche, par ailleurs, qui plus est, en définitive

## 📈 Recommandations Prochaines Sessions
- Practice expressions temporelles audio
- Entraînement prise notes chiffres rapides
- Vocabulaire économique/social spécialisé
```

### **Progression Tracking**
```bash
# Évolution scores CO
jq 'to_entries | map(select(.value.skill == "CO")) | .[].value.score' data/progression_master.json

# Vocabulaire audio faible
jq '.[] | select(.competence == "CO" and .niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# Erreurs récurrentes CO
jq '.[] | select(.competence == "CO")' 05_grammaire_supplementaire/erreurs_en_cours.json
```

---

---

## 📝 FORMATS FICHIERS OBLIGATOIRES

### **📋 Audio Format Kyle**
```markdown
**X.** [Question audio] :
- A. [Option A]
- B. [Option B]
- C. [Option C]
- D. [Option D]

**Ma réponse :**

---
```

### **📁 Nomenclature CO**
- **Leçon Préparatoire** : `lecon_preparatoire_co_YYYYMMDD.md`
- **Exercice Principal** : `co[XX]_exercice_delf_b2_YYYYMMDD.md`
- **Après-Leçon** : `apres_co[XX]_YYYYMMDD.md`

### **🔧 Règles Strictes Audio**
- **TOUJOURS** `**Ma réponse :**` (jamais autre format)
- **TOUJOURS** noter temps audio et pauses
- **TOUJOURS** inclure grille prise notes
- **TOUJOURS** transcription pour correction

**📖 Templates complets** : Voir [GUIDE_EXERCICES_FAIBLESSES.md](../GUIDE_EXERCICES_FAIBLESSES.md)

---

**💡 Rappel** : Phase 2 du workflow universel délègue ici pour le contenu CO spécifique