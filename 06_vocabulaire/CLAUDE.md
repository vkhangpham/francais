# 📚 VOCABULAIRE DELF B2 - Progression Systématique

## **Objectif général**
- **20 mots nouveaux par séance** toutes compétences confondues
- **Méthode : Anki + contexte** pour mémorisation durable
- **Suivi rigoureux** des acquisitions par domaine

---

## **Organisation par compétence**

### 🔍 **Compréhension Écrite** (CE)
- **15 mots/expressions** par séance de CE
- **Sources** : Articles Le Monde, essais, textes littéraires
- **Focus** : Vocabulaire soutenu, nuances stylistiques

### 🎧 **Compréhension Orale** (CO)  
- **10 mots/expressions** par séance de CO
- **Sources** : France Inter, débats, conférences
- **Focus** : Registre oral, expressions spontanées

### ✍️ **Production Écrite** (PE)
- **15 mots/expressions** par séance de PE
- **Sources** : Connecteurs, expressions argumentatives
- **Focus** : Registre formel, précision stylistique

### 🗣️ **Production Orale** (PO)
- **10 mots/expressions** par séance de PO  
- **Sources** : Débats, expressions diplomatiques
- **Focus** : Fluidité, nuances conversationnelles

---

## **Structure de mémorisation**

### **Format Anki optimisé**
```
RECTO : [mot/expression]
VERSO : 
• Définition simple
• Exemple en contexte authentique  
• Synonyme niveau B2
• Registre (familier/standard/soutenu)
• Domaine (société/culture/économie)
```

### **Exemple type**
```
RECTO : "néanmoins"
VERSO :
• Définition : cependant, toutefois (opposition nuancée)
• Contexte : "La situation est complexe, néanmoins des solutions existent"
• Synonyme : toutefois, cependant  
• Registre : soutenu
• Domaine : argumentation écrite
```

---

## **Domaines thématiques B2**

### **1. Société et actualité** (30% du vocabulaire)
- Égalité, discrimination, intégration
- Politique, citoyenneté, démocratie  
- Médias, information, fake news

### **2. Économie et travail** (25% du vocabulaire)
- Emploi, chômage, précarité
- Innovation, startup, entrepreneuriat
- Commerce, mondialisation, protectionnisme

### **3. Environnement et sciences** (20% du vocabulaire)
- Développement durable, écologie
- Changement climatique, énergies
- Recherche, technologies, innovation

### **4. Culture et éducation** (15% du vocabulaire)
- Système éducatif, formation
- Arts, littérature, patrimoine
- Diversité culturelle, francophonie

### **5. Santé et société** (10% du vocabulaire)
- Système de santé, prévention
- Vieillissement, démographie
- Sports, bien-être, mode de vie

---

## **Suivi de progression**

### **Métriques hebdomadaires**
- **Nouveaux mots appris** : XX/140 (objectif 20/séance × 7 séances)
- **Taux de rétention** : XX% (révisions Anki réussies)
- **Distribution thématique** équilibrée par domaine

### **Révisions systématiques**
- **J+1** : Révision immédiate (100% des mots)
- **J+3** : Première révision (80% rétention attendue)  
- **J+7** : Révision hebdomadaire (70% rétention)
- **J+15** : Consolidation (60% rétention permanente)

---

## **Fichiers de progression**

### **Structure organisée**
```
/00_vocabulaire/
├── CLAUDE.md (ce fichier - plan général)
├── vocabulaire_master.json (base de données complète)
├── anki_export.txt (export pour import Anki)
├── progression_hebdomadaire.md (suivi semaine par semaine)
└── revision_cyclique.md (planning des révisions)
```

### **Format d'entrée standard**
```json
{
  "mot": "néanmoins",
  "definition": "cependant, opposition nuancée",
  "contexte": "La situation est complexe, néanmoins...",
  "synonymes": ["toutefois", "cependant"],
  "registre": "soutenu",
  "domaine": "argumentation",
  "competence": "PE",
  "seance": "PE_001",
  "date_acquisition": "2025-01-22",
  "niveau_maitrise": 0
}
```

---

## **Stratégie d'acquisition**

### **Pendant les séances**
1. **Identification** automatique des mots inconnus/difficiles
2. **Contextualisation** immédiate dans le document source
3. **Catégorisation** par registre et domaine
4. **Création fiche Anki** en fin de séance

### **Révisions quotidiennes**
- **10 minutes/jour** minimum sur Anki
- **Focus** sur mots récents (J-1 à J-7)
- **Élimination** progressive des mots maîtrisés

### **Tests d'intégration**
- **Utilisation active** dans productions écrites/orales
- **Reconnaissance** en compréhensions
- **Validation** de l'acquisition par usage spontané

---

## **🎯 Objectifs SMART & KPIs**

### **Court terme (1 mois) - Trackable**
```bash
# KPI 1: 560 mots nouveaux (20/jour × 28 jours)
echo "Progrès: $(jq --arg month "$(date +%Y-%m)" '.[] | select(.date | startswith($month))' vocabulaire_master.json | jq length)/560 mots"

# KPI 2: 80% mots > 70% maîtrise après 15 jours
echo "Rétention J+15: $(jq --arg date15 "$(date -d '15 days ago' +%Y-%m-%d)" '.[] | select(.date <= $date15 and .niveau_maitrise > 0.7)' vocabulaire_master.json | jq length) mots maîtrisés"

# KPI 3: 200 mots usage actif (production PE/PO)
echo "Usage actif: $(jq '.[] | select(.competence == "PE" or .competence == "PO" and .niveau_maitrise > 0.8)' vocabulaire_master.json | jq length)/200"
```

### **Moyen terme (3 mois) - Mesurable**
```bash
# KPI 4: 1680 mots total base
echo "Objectif trimestre: $(jq length vocabulaire_master.json)/1680 mots"

# KPI 5: Top 500 mots à 90%+ maîtrise
echo "Automatisation: $(jq '.[] | select(.niveau_maitrise > 0.9)' vocabulaire_master.json | jq length)/500 mots automatisés"

# KPI 6: Enrichissement stylistique (3+ registres par thème)
jq 'group_by(.domaine) | map({domaine: .[0].domaine, registres: [.[].registre] | unique | length})' vocabulaire_master.json
```

### **Objectif DELF B2 Final - Quantifié**
```bash
# Vocabulaire actif: 2000+ mots (production spontanée)
echo "Actif: $(jq '.[] | select(.niveau_maitrise > 0.8)' vocabulaire_master.json | jq length)/2000"

# Vocabulaire passif: 5000+ mots (compréhension)
echo "Passif: $(jq '.[] | select(.niveau_maitrise > 0.5)' vocabulaire_master.json | jq length)/5000"

# Registres maîtrisés par contexte
echo "Registres: $(jq '.[] | select(.registre == "soutenu" and .niveau_maitrise > 0.7)' vocabulaire_master.json | jq length) soutenu, $(jq '.[] | select(.registre == "familier" and .niveau_maitrise > 0.7)' vocabulaire_master.json | jq length) familier"
```

### **🚨 Alertes Performance**
```bash
# ALERTE: Stagnation (aucun nouveau mot depuis 2 jours)
if [ $(jq --arg yesterday "$(date -d yesterday +%Y-%m-%d)" '.[] | select(.date >= $yesterday)' vocabulaire_master.json | jq length) -eq 0 ]; then
    echo "🚨 ALERTE: Aucun nouveau vocabulaire depuis 2 jours"
fi

# ALERTE: Maîtrise moyenne < 60%
if [ $(echo "$(jq '.[] | .niveau_maitrise' vocabulaire_master.json | jq -s 'add / length') < 0.6" | bc -l) -eq 1 ]; then
    echo "🚨 ALERTE: Maîtrise moyenne insuffisante (<60%)"
fi

# ALERTE: Plus de 50 mots critiques (<30%)
if [ $(jq '.[] | select(.niveau_maitrise < 0.3)' vocabulaire_master.json | jq length) -gt 50 ]; then
    echo "🚨 ALERTE: Trop de mots critiques (>50) - Révision intensive"
fi
```

---

**🔗 Intégration**: Ce système vocabulaire centralisé s'intègre automatiquement avec [CLAUDE.md](../CLAUDE.md) Phase 1 (révisions) et Phase 2 (acquisitions) pour un workflow unifié.