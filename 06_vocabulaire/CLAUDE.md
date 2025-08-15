# 📚 VOCABULAIRE - Guide Centralisé DELF B2

## 📋 RÈGLES VOCABULAIRE

### **Objectif Quotidien**
- **20 mots nouveaux/session** toutes compétences
- **Intégration vocabulaire_master.json** obligatoire
- **Révision ciblée** mots < 70% maîtrise

### **Répartition par Compétence**
- **CE** : 15 mots soutenu/littéraire
- **CO** : 10 mots oral/expressions spontanées  
- **PE** : 15 mots connecteurs/argumentatif
- **PO** : 10 mots fluidité/conversationnel

---

## ⚡ COMMANDS VOCABULAIRE

### **Analytics Temps Réel**
```bash
# Total mots acquis
jq 'length' 06_vocabulaire/vocabulaire_master.json

# Mots faibles < 70%
jq '.[] | select(.niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# Progression mensuelle
jq --arg month "$(date +%Y-%m)" '.[] | select(.date | startswith($month))' 06_vocabulaire/vocabulaire_master.json | jq length

# Mots par compétence
jq 'group_by(.competence) | map({competence: .[0].competence, count: length})' 06_vocabulaire/vocabulaire_master.json
```

### **Révision Intelligente**
```bash
# Sessions récentes vocabulaire
ls -t sessions/2025-*_*.md | head -3 | xargs grep -l "vocabulaire"

# Export Anki mots faibles
jq -r '.[] | select(.niveau_maitrise < 0.7) | .mot + ";" + .definition' 06_vocabulaire/vocabulaire_master.json > exports/anki_vocab_faible.csv
```

---

## 📊 INTÉGRATION CENTRALISÉE

### **Structure vocabulaire_master.json**
```json
{
  "mot": "néanmoins",
  "definition": "cependant, toutefois (connecteur opposition)",
  "contexte_acquisition": "CE05_Doc1 - débat énergie",
  "competence": "CE",
  "date": "2025-08-15",
  "niveau_maitrise": 0.0,
  "registre": "soutenu"
}
```

### **Mise à Jour Obligatoire**
- **Chaque session** : Nouveaux mots → vocabulaire_master.json
- **Phase 1** : Révision mots < 70% maîtrise
- **Export automatique** : Anki cards pour révision

---

## 📝 FORMAT ANKI OBLIGATOIRE

### **Structure Carte**
```
RECTO : [mot/expression]
VERSO : 
• Définition simple
• Contexte authentique session
• Synonyme B2
• Registre (familier/soutenu)
```

### **Export Automatique**
```bash
# Génération quotidienne Anki
jq -r '.[] | select(.date == "$(date +%Y-%m-%d)") | .mot + ";" + .definition + ";" + .contexte_acquisition' 06_vocabulaire/vocabulaire_master.json > exports/anki_daily.csv
```

---

## 🎯 KPIs VOCABULAIRE

### **Métriques Obligatoires**
- **KPI 1** : 560 mots/mois (20/jour × 28 jours)
- **KPI 2** : 85% rétention à J+7 (Anki tracking)
- **KPI 3** : 70% mots passent maîtrise >70% en 14 jours
- **KPI 4** : Équilibre compétences (CE=40%, PE=30%, CO=20%, PO=10%)

### **Alertes Performance**
```bash
# Alerte stagnation
if [ $(jq '.[] | select(.niveau_maitrise > 0.7 and (.date | . > "$(date -d "5 days ago" +%Y-%m-%d)"))' 06_vocabulaire/vocabulaire_master.json | jq length) -eq 0 ]; then
    echo "🚨 ALERTE: Aucun progrès vocabulaire depuis 5 jours"
fi
```

---

**💡 Intégration** : Toutes compétences utilisent ce système centralisé