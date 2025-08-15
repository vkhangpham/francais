# 🔧 GRAMMAIRE - Guide Centralisé DELF B2

## 📋 RÈGLES GRAMMAIRE

### **Objectif System**
- **Détection 100%** erreurs Kyle toutes compétences
- **Tracking erreurs_en_cours.json** centralisé
- **Correction immédiate** + explication brève

### **Types Erreurs Prioritaires Kyle**
- **Conjugaison** : Temps (Imparfait/PC), Subjonctif/Indicatif
- **Pronoms** : Relatifs, doubles COD/COI, y/en
- **Accords** : Participes passés, adjectifs
- **Registre** : Familier → Soutenu (anglicismes)

---

## ⚡ COMMANDS GRAMMAIRE

### **Analytics Erreurs**
```bash
# Erreurs actives total
jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length

# Top patterns critiques
jq 'group_by(.type) | map({type: .[0].type, count: length}) | sort_by(.count) | reverse' 05_grammaire_supplementaire/erreurs_en_cours.json

# Erreurs par compétence
jq '.[] | select(.competence == "CE" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json
```

### **Prédiction Patterns**
```bash
# Erreurs récurrentes >3 occurrences
jq '.[] | select(.frequence > 3)' 05_grammaire_supplementaire/erreurs_en_cours.json

# Timeline erreurs (tendances)
jq '.[] | select(.statut == "en_cours") | {semaine: (.date[0:7]), type: .type}' 05_grammaire_supplementaire/erreurs_en_cours.json
```

---

## 📊 INTÉGRATION CENTRALISÉE

### **Structure erreurs_en_cours.json**
```json
{
  "id": "ERR_CE05_001",
  "erreur_kyle": "L'auteur veuille dire que...",
  "correction": "L'auteur veut dire que...",
  "type": "conjugaison",
  "sous_type": "subjonctif_incorrect",
  "competence": "CE",
  "date": "2025-08-15",
  "frequence": 1,
  "statut": "en_cours"
}
```

### **Machine Learning Patterns**
- **Pattern A** : Erreurs >3 occurrences → Exercices intensifs Phase 1
- **Pattern B** : Erreurs nouvelles <7 jours → Prévention immédiate  
- **Pattern C** : Erreurs compétence spécifique → Exercices contextualisés

---

## 🎯 AUTO-GÉNÉRATION EXERCICES

### **Algorithme Intelligent**
```bash
# Génération exercices ciblés selon erreurs_en_cours.json
# Type conjugaison → Partie A exercices conjugaison Phase 1
# Type pronoms → Partie C exercices pronoms Phase 1  
# Fréquence >3 → Inclusion obligatoire correction erreurs Phase 1
```

### **Chapitre Grammaire Progressive**
```bash
# Sélection aléatoire évitant répétition
random_chapter = random(1, 27) excluding last_3_used

# Lecture obligatoire fichier
Read("~/Study/books/Grammaire Progressive Du Francais Avance.pdf", chapter=$random_chapter)
```

---

## 📈 KPIs GRAMMAIRE

### **Métriques Performance**
- **KPI 1** : 100% détection erreurs (aucune erreur ignorée)
- **KPI 2** : 80% résolution erreurs en 3 sessions
- **KPI 3** : <15 erreurs actives simultanément  
- **KPI 4** : Vitesse résolution erreurs type conjugaison <7 jours

### **Alertes Critiques**
```bash
# Alerte surcharge erreurs
if [ $(jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) -gt 20 ]; then
    echo "🚨 ALERTE: >20 erreurs actives - Session correction intensive"
fi

# Alerte stagnation correction
if [ $(jq '.[] | select(.type == "conjugaison" and .frequence > 5)' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) -gt 0 ]; then
    echo "🚨 ALERTE: Erreurs conjugaison récurrentes - Focus révision"
fi
```

---

## 🔧 CORRECTION FORMAT

### **Format Obligatoire Kyle**
```
❌ [erreur exacte Kyle] → ✅ [correction exacte]
💡 [Explication brève 1-2 phrases max]
📖 [Référence chapitre Grammaire Progressive si applicable]
```

### **Mise à Jour Système**
- **Détection** : Ajout immédiat erreurs_en_cours.json
- **Fréquence** : Increment si erreur répétée
- **Résolution** : Statut "resolu" après 3 sessions sans récurrence

---

**💡 Intégration** : Toutes compétences alimentent ce système centralisé