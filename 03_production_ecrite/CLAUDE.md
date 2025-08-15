# ✍️ PRODUCTION ÉCRITE - Guide Spécifique DELF B2

## 📋 RÈGLES PE

### **Format DELF B2**
- Essai argumenté 250 mots minimum
- 60 minutes chronométrées
- Score cible : 17-20/25

### **Structure Obligatoire**
- **Introduction** (50-70 mots) : Accroche + Problématique + Plan
- **Développement** (150-200 mots) : 2 arguments + exemples + nuance
- **Conclusion** (40-60 mots) : Synthèse + Position + Ouverture

---

## 📊 SESSION PE

### **Structure Obligatoire**
#### **1. Leçon Préparatoire (25 min)**
- **10 min** : 8-10 connecteurs argumentatifs essentiels
- **10 min** : Structures argumentatives (templates phrases)
- **5 min** : Vocabulaire thématique soutenu (15-20 mots)

#### **2. Exercice DELF (60 min)**
- **Format** : "DELF B2 - PRODUCTION ÉCRITE"
- **10 min** : Analyse sujet + plan détaillé
- **40 min** : Rédaction
- **10 min** : Relecture + corrections

#### **3. Post-Exercice (15 min)**
- Correction détaillée par critère DELF
- Analyse erreurs + catégorisation
- `peXX_apres_redaction.md` avec discussions

---

## 🎯 CONNECTEURS ESSENTIELS

### **Types Obligatoires**
- **Opposition** : néanmoins, cependant, toutefois, en revanche
- **Nuance** : certes... mais, sans pour autant, il serait réducteur de
- **Illustration** : notamment, à titre d'exemple, ainsi
- **Causalité** : étant donné que, dans la mesure où, par conséquent
- **Structure** : d'une part/d'autre part, par ailleurs, enfin

---

## 📊 INTÉGRATION DONNÉES

### **Mise à Jour Obligatoire**
```bash
# Connecteurs + expressions → vocabulaire_master.json
# Erreurs rédaction → erreurs_en_cours.json  
# Score + durée → data/progression_master.json
```

---

## 📝 FORMAT KYLE OBLIGATOIRE

### **Production**
```markdown
# DELF B2 - PRODUCTION ÉCRITE
**Sujet** : [Thème/problématique]
**Durée** : 60 minutes
**Nombre de mots** : 250 minimum

---

## CONSIGNE
[Consigne exacte DELF B2]

---

## MA PRODUCTION

**Ma réponse :**
[Espace rédaction Kyle - 250+ mots]

---

**Nombre de mots :** _____ mots
**Temps utilisé :** _____ minutes
```

### **Nomenclature**
- **Leçon** : `lecon_preparatoire_pe_YYYYMMDD.md`
- **Exercice** : `pe[XX]_exercice_delf_b2_YYYYMMDD.md`
- **Après** : `apres_pe[XX]_YYYYMMDD.md`

### **Règles Strictes**
- **TOUJOURS** `**Ma réponse :**`
- **TOUJOURS** compter mots et temps
- **TOUJOURS** document déclencheur

---

**💡 Rappel** : Phase 2 du workflow universel délègue ici