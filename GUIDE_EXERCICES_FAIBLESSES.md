# 🏋️ GUIDE CRÉATION EXERCICES FAIBLESSES

**Phase 1** : 30 minutes avant session principale  
**Seuil obligatoire** : 15/20 pour continuer

---

## 📋 STRUCTURE OBLIGATOIRE

### **Phase 1 (30 min)**
- **10 min** : Conjugaison/Temps avancé (20 points) - Seuil 15/20
- **10 min** : Vocabulaire révision (20-30 mots)  
- **10 min** : Erreurs récentes patterns

### **Commands Obligatoires**
```bash
# Pré-Exercices
jq 'length' 06_vocabulaire/vocabulaire_master.json
jq '.[] | select(.statut == "en_cours") | length' 05_grammaire_supplementaire/erreurs_en_cours.json

# Post-Exercices  
echo "Phase1_$(date +%Y%m%d): Conjugaison=$score1/20" >> data/phase1_tracking.log
```

---

## 🎯 EXERCICE CONJUGAISON/TEMPS AVANCÉ

### **Format Obligatoire (20 points)**

#### **PARTIE A : Conjugaison Créative (5 points)**
- Verbes complexes : accomplir, résoudre, convaincre, se plaindre, entreprendre
- Temps avancés : conditionnel passé, subjonctif imparfait, passé antérieur
- Contextes variés : professionnel, relationnel, culturel

#### **PARTIE B : Paragraphe Temps Complexes (5 points)**
- Paragraphe 150 mots avec trous
- Rotation thématique : Lun=Politique, Mar=Culture, Mer=Sciences, Jeu=Économie, Ven=Environnement  
- Temps obligatoires : Passé simple, Conditionnel passé, Subjonctif imparfait

#### **PARTIE C : Pronoms Multiples (5 points)**
- Types obligatoires : Relatifs, Indéfinis, Démonstratifs, Neutres, Composés, Doubles
- Exercices à trous tous types confondus

#### **PARTIE D : Chapitre Grammaire Progressive (5 points)**
```bash
# Sélection aléatoire (éviter répétition)
random_chapter = random(1, 27) excluding last_3_used_chapters

# Lecture obligatoire fichier
file_path = "~/Study/French/revisions/grammaire_progressive_avance/lecon_{chapter}.md"
```
- 5 exercices basés sur contenu exact du chapitre lu
- Niveau B2+ vers C1

---

## 📚 RÉVISION VOCABULAIRE (10 min)

### **Commands Sélection**
```bash
# Vocabulaire faible < 70%
jq '.[] | select(.niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# 3 dernières sessions
ls -t sessions/2025-*_*.md | head -3
```

### **Structure Obligatoire**
- **Bloc 1** : 10 mots dernière session
- **Bloc 2** : 10 mots maîtrise < 70%  
- **Bloc 3** : 5-10 expressions récentes

---

## 🔧 CORRECTION ERREURS (10 min)

### **Commands Analyse**
```bash
# Erreurs actives
jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json

# Top patterns critiques  
jq 'group_by(.type) | sort_by(length) | reverse' 05_grammaire_supplementaire/erreurs_en_cours.json
```

### **Priorités**
- **Pattern A** : Erreurs >3 occurrences (intensifs)
- **Pattern B** : Erreurs nouvelles <7 jours  
- **Pattern C** : Erreurs compétence spécifique

---

## 🔧 FORMAT OBLIGATOIRE KYLE

### **Réponses Strictes**
```markdown
**X.** [Question] :
**Ma réponse :**

---
```

### **Règles Formats**
- **TOUJOURS** `**Ma réponse :**`
- **TOUJOURS** ligne vide après question
- **TOUJOURS** séparateur `---`
- **JAMAIS** tirets/underscores préremplis

### **Correction Format**
```
❌ [erreur] → ✅ [correction]
💡 [Explication 1-2 phrases]
```

---

## 📁 NOMENCLATURE FICHIERS

### **Formats Obligatoires**
- **Phase 1** : `05_grammaire_supplementaire/exercice_conjugaison_[competence]_YYYYMMDD.md`
- **Leçons** : `[competence]/lecon_preparatoire_[competence]_YYYYMMDD.md`
- **Exercices** : `[competence]/[competence]XX_exercice_delf_b2_YYYYMMDD.md`
- **Après** : `[competence]/apres_[competence]XX_YYYYMMDD.md`

### **Règles Strictes**
1. **TOUJOURS** `**Ma réponse :**`
2. **TOUJOURS** ligne vide après questions
3. **TOUJOURS** séparateur `---`
4. **TOUJOURS** nomenclature exacte
5. **JAMAIS** exercices sans espaces réponse

---

**💡 Retour** : [CLAUDE.md](CLAUDE.md) Phase 2