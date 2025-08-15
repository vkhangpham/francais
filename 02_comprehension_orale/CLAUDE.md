# 🎧 COMPRÉHENSION ORALE - Guide Spécifique DELF B2

## 📋 RÈGLES CO

### **Format DELF B2**
- 2 documents audio (5-7 minutes total)
- 2 écoutes par document + pause 1 minute
- Score cible : 16-18/25

### **Timing Obligatoire**
- 10 min : Préparation (vocabulaire + grille écoute)
- 25 min : Double écoute + réponses
- 15 min : Post-analyse + corrections

---

## ⚡ WORKFLOW CO

### **Commands Session**
```bash
# Historique CO
grep -h "thème" sessions/2025-*_co*.md | tail -3

# Vocabulaire faible CO
jq '.[] | select(.competence == "CO" and .niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# Audio officiel DELF
wget "https://www.france-education-international.fr/audio/1183" -O delf_b2_exemple.mp3

# Podcasts français
curl "https://francaisfacile.rfi.fr/fr/podcasts/journal-francais-facile/"
```

### **Sources Obligatoires**
- **Niveau 1** : Official DELF samples (simulation exam)
- **Niveau 2** : YouTube structured practice
- **Niveau 3** : Authentic radio/podcasts (France Inter, RFI)

---

## 📊 SESSION CO

### **Structure Obligatoire**
#### **1. Préparation Audio (10 min)**
- **4 min** : 15-20 mots thématiques anticipés
- **3 min** : Grille écoute (locuteurs, idée principale, arguments)
- **3 min** : Lecture questions stratégique

#### **2. Double Écoute DELF (25 min)**
- **Écoute 1** : Vue d'ensemble (qui, quoi, structure)
- **Pause 1 min** : Organisation notes, identification lacunes
- **Écoute 2** : Détails spécifiques selon questions
- **3 min** : Finalisation réponses

#### **3. Post-Écoute (15 min)**
- Correction avec transcription si disponible
- Analyse vocabulaire nouveau
- `coXX_apres_ecoute.md` avec discussions

---

## 📊 INTÉGRATION DONNÉES

### **Mise à Jour Obligatoire**
```bash
# Vocabulaire audio → vocabulaire_master.json
# Erreurs CO → erreurs_en_cours.json  
# Score session → data/progression_master.json
```

---

## 📝 FORMAT KYLE OBLIGATOIRE

### **Questions**
```markdown
**X.** [Question audio] :
- A. [Option A]
- B. [Option B]
- C. [Option C] 
- D. [Option D]

**Ma réponse :**

---
```

### **Nomenclature**
- **Leçon** : `lecon_preparatoire_co_YYYYMMDD.md`
- **Exercice** : `co[XX]_exercice_delf_b2_YYYYMMDD.md`
- **Après** : `apres_co[XX]_YYYYMMDD.md`

### **Règles Strictes**
- **TOUJOURS** `**Ma réponse :**`
- **TOUJOURS** noter temps audio et pauses
- **TOUJOURS** inclure grille prise notes

---

**💡 Rappel** : Phase 2 du workflow universel délègue ici