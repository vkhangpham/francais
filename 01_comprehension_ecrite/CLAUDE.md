# 📖 COMPRÉHENSION ÉCRITE - Guide Spécifique DELF B2

## 📋 RÈGLES CE

### **Format DELF B2**
- 2 documents authentiques (200-300 mots)
- 45 minutes chronométrées
- Score cible : 18-20/25

### **Timing Obligatoire**
- 3 min : Écrémage global
- 5 min : Lecture questions
- 18 min : Document 1 + réponses
- 17 min : Document 2 + réponses
- 2 min : Vérification

### **Sources Obligatoires**
- **Perplexity MCP** → URLs récents (<2 semaines)
- **Firecrawl MCP** → Extraction authentique
- **Presse** : Le Monde, Le Figaro, L'Express, France Culture

---

## ⚡ WORKFLOW CE

### **Commands Session**
```bash
# Historique thèmes
grep -h "thème" sessions/2025-*_ce*.md | tail -3

# Vocabulaire faible CE
jq '.[] | select(.competence == "CE" and .niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# Recherche articles
mcp__perplexity-mcp__perplexity_search_web({
  "query": "articles français récents [THÈME] site:lemonde.fr 200-300 mots",
  "recency": "week"
})

# Extraction contenu
mcp__mcp-server-firecrawl__firecrawl_scrape({
  "url": "[URL]",
  "formats": ["markdown"],
  "onlyMainContent": true
})
```

### **Sélection Obligatoire**
- **2 documents** : 200-350 mots chacun
- **Thèmes différents** : Éviter 3 dernières sessions
- **Sources françaises** : <2 semaines
- **Niveau B2** : Accessible, pas technique

---

## 📊 SESSION CE

### **Structure Obligatoire**
#### **1. Leçon Préparatoire (25 min)**
- **15 min** : 20-25 mots vocabulaire thématique
- **5 min** : 5-8 expressions idiomatiques
- **3 min** : Points grammaticaux B2+ du texte
- **2 min** : Contexte culturel

#### **2. Exercice DELF (45 min)**
- **Format** : "DELF B2 - COMPRÉHENSION ÉCRITE"
- **Durée** : 45 minutes chronométrées exactes
- **Barème** : 25 points total
- **Documents** : 2 textes authentiques

#### **3. Post-Exercice (15 min)**
- Correction immédiate + justifications
- Analyse erreurs
- `ceXX_apres_lecon.md` avec discussions

---

## 📊 INTÉGRATION DONNÉES

### **Mise à Jour Obligatoire**
```bash
# Vocabulaire nouveau → vocabulaire_master.json
# Erreurs détectées → erreurs_en_cours.json  
# Score session → data/progression_master.json
# Vérification intégrité données
jq '.[] | select(.date_acquisition == "$(date +%Y-%m-%d)")' 06_vocabulaire/vocabulaire_master.json
```

---

## 📝 FORMAT KYLE OBLIGATOIRE

### **Questions**
```markdown
**X.** [Question] :
- A. [Option A]
- B. [Option B] 
- C. [Option C]
- D. [Option D]

**Ma réponse :**

---
```

### **Nomenclature**
- **Leçon** : `lecon_preparatoire_ce_YYYYMMDD.md`
- **Exercice** : `ce[XX]_exercice_delf_b2_YYYYMMDD.md`
- **Après** : `apres_ce[XX]_YYYYMMDD.md`

### **Règles Strictes**
- **TOUJOURS** `**Ma réponse :**`
- **TOUJOURS** ligne vide après question
- **TOUJOURS** séparateur `---`

---

**💡 Rappel** : Phase 2 du workflow universel délègue ici