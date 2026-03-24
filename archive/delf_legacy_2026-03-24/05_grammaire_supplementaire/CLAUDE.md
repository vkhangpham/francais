# 📝 GRAMMAIRE SUPPLÉMENTAIRE CENTRALISÉE DELF B2

## **Objectif**
- **Correction automatique** erreurs récurrentes via `erreurs_en_cours.json`
- **Tracking intelligent** patterns erreurs toutes compétences
- **Intégration workflow** centralisé Phase 1 + Phase 3
- **Analytics prédictives** pour prévenir futures erreurs

## **🔗 Intégration Workflow Centralisé**

### **Base de Données Unique: erreurs_en_cours.json**
**Remplacement système fragmenté par base centralisée unifiée**

```json
{
  "id": "ERR_2025081501",
  "erreur_kyle": "Si j'aurais su",
  "correction": "Si j'avais su",
  "type": "conjugaison",
  "sous_type": "si_conditionnel",
  "competence": "PE",
  "contexte": "Essai argumentatif télétravail",
  "explication": "Après SI: imparfait, jamais conditionnel",
  "date": "2025-08-15",
  "frequence": 3,
  "statut": "en_cours",
  "derniere_correction": "2025-08-15",
  "nb_corrections": 2,
  "gravite": "critique",
  "progression": 0.4
}
```

### **🔄 Workflow Intégré Temps Réel**
1. **Détection automatique** : Claude identifie erreur → création entrée JSON
2. **Catégorisation intelligente** : Type + compétence + gravité auto-assignés
3. **Tracking fréquence** : Compteurs automatiques + alertes seuils
4. **Progression mesurée** : Score amélioration 0.0 → 1.0
5. **Intégration Phase 1** : Exercices faiblesses basés sur erreurs actives
6. **Analytics prédictives** : Identification patterns avant qu'ils deviennent habitudes

### **Commandes Diagnostic Temps Réel**
```bash
# Total erreurs actives par compétence
jq '.[] | select(.statut == "en_cours") | .competence' 05_grammaire_supplementaire/erreurs_en_cours.json | sort | uniq -c

# Top 5 erreurs les plus fréquentes
jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'sort_by(.frequence) | reverse | .[0:5] | .[] | {erreur: .erreur_kyle, freq: .frequence, type: .type}'

# Progression globale correction erreurs
jq '.[] | .progression' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'add / length * 100'

# Erreurs critiques non résolues
jq '.[] | select(.gravite == "critique" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length
```

---

## **Structure d'organisation**

### **Format de fiche d'erreur type**
```markdown
# [Type d'erreur] - [Date détection]

## Erreur commise
❌ [Phrase/expression incorrecte]

## Correction
✅ [Phrase/expression correcte]

## Règle grammaticale
[Explication de la règle violée]

## Exemples supplémentaires
1. ❌ [Erreur] → ✅ [Correction]
2. ❌ [Erreur] → ✅ [Correction] 
3. ❌ [Erreur] → ✅ [Correction]

## Exercices de renforcement
[3-5 exercices ciblés sur cette erreur]

## Statut de maîtrise
- [ ] Identifiée
- [ ] Comprise
- [ ] Exercée
- [ ] Maîtrisée
```

---

## **📊 Analytics Erreurs Kyle - Data-Driven**

### **🚨 Dashboard Erreurs Critiques**
```bash
# Erreurs critiques avec progression tracking
jq '.[] | select(.gravite == "critique") | {id: .id, erreur: .erreur_kyle, freq: .frequence, progression: .progression, statut: .statut}' 05_grammaire_supplementaire/erreurs_en_cours.json

# Taux correction erreurs critiques ce mois
echo "Taux correction critique: $(jq '.[] | select(.gravite == "critique" and .statut == "resolu" and (.date | startswith("2025-08")))' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) / $(jq '.[] | select(.gravite == "critique")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) * 100%"
```

#### **1. SI + Conditionnel - Status Tracking**
```bash
# Vérification automatique si erreur réapparue
si_errors=$(jq '.[] | select(.sous_type == "si_conditionnel" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length)
if [ $si_errors -eq 0 ]; then
    echo "✅ SI + Conditionnel: Maîtrisé (aucune occurrence récente)"
else
    echo "⚠️ SI + Conditionnel: $si_errors nouvelles erreurs - Rechute détectée"
fi
```

#### **2. Imparfait/Passé Composé - Monitoring Continu**
```bash
# Score évolution dernières corrections
jq '.[] | select(.sous_type == "imparfait_pc") | {date: .date, progression: .progression}' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'sort_by(.date)'

# Alerte si plus de 3 erreurs actives
imp_pc_count=$(jq '.[] | select(.sous_type == "imparfait_pc" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length)
if [ $imp_pc_count -gt 3 ]; then
    echo "🚨 ALERTE: $imp_pc_count erreurs Imparfait/PC actives - Révision intensive nécessaire"
fi
```

#### **3. CE QUE vs CE QUI - Pattern Analysis**
```bash
# Fréquence erreurs relatives par période
jq '.[] | select(.sous_type == "relatives_que_qui") | {semaine: (.date[0:7]), freq: .frequence}' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'group_by(.semaine) | map({semaine: .[0].semaine, total_erreurs: (map(.freq) | add)})'  
```

### **⚠️ Erreurs fréquentes**

#### **4. Ordre des pronoms COD/COI**
- **Faiblesse confirmée** : Chapitres 17-18-19
- **Erreurs spécifiques** : "en y" → "lui en", "leurs" → "leur"
- **Action** : Révision combinaisons complexes

#### **5. Formation du subjonctif passé**
- **Score critique** : 15,28/20 (Chapitre 5)
- **Erreur** : "allions manqué" → "ayez manqué"
- **Action** : Révision urgente auxiliaires

#### **6. Orthographe et élisions**
- **Erreurs répétitives** :
  - "j'était" → "j'étais"
  - "la a réveillée" → "l'a réveillée"
  - "voire" → "voir"

---

## **Grammaire DELF B2 manquante**

### **Points non couverts à approfondir**

#### **1. Registres de langue**
- **Familier ↔ Standard ↔ Soutenu**
- Adaptation selon contexte DELF
- Éviter familier à l'écrit, soutenu excessif à l'oral

#### **2. Connecteurs argumentatifs avancés**
- **Nuances fines** : "néanmoins" vs "toutefois" vs "cependant"
- **Registres** : "alors" (oral) vs "donc" (écrit) vs "par conséquent" (soutenu)
- **Positionnement** : début, milieu, fin de phrase

#### **3. Concordance des temps complexe**
- **Discours rapporté** au passé
- **Subordonnées temporelles** avec nuances
- **Hypothèses** mixtes et intemporelles

#### **4. Expressions idiomatiques B2**
- **Fréquence DELF** : 5-10 par examen
- **Registres appropriés** selon épreuve
- **Éviter traductions littérales**

#### **5. Constructions passives variées**
- **Alternative à "être + participe passé"**
- **Voix pronominale** à valeur passive
- **Tournures impersonnelles** élégantes

---

## **Plan de remédiation personnalisé**

### **Phase 1 : Urgences (1-2 semaines)**
1. **Imparfait/Passé composé** → Révision intensive
2. **CE QUE/CE QUI** → Exercices ciblés  
3. **Subjonctif passé** → Formation systématique
4. **Orthographe** → Vigilance accrue

### **Phase 2 : Consolidation (3-4 semaines)**
1. **Pronoms multiples** → Ordre automatique
2. **Registres de langue** → Adaptation contextuelle
3. **Connecteurs** → Variété et précision
4. **Concordance avancée** → Maîtrise complète

### **Phase 3 : Perfectionnement (ongoing)**
1. **Expressions idiomatiques** → Acquisition continue
2. **Constructions passives** → Élégance stylistique  
3. **Surveillance** → Maintien acquis précédents

---

## **Suivi de progression**

### **Métriques hebdomadaires**
- **Erreurs détectées** : X nouvelles / X répétées
- **Points traités** : X fiches créées / X révisées
- **Taux de correction** : X% d'amélioration
- **Statut critique** : X points éliminés / X en cours

### **Tests de validation**
- **Exercices ciblés** : 15-20 questions par point faible
- **Seuil de maîtrise** : 85% de réussite sur 3 tests consécutifs
- **Intégration** : Usage spontané en production

---

## **🔧 Machine Learning Grammar Patterns**

### **Algorithme Prédictif Erreurs**
```bash
# Prédiction erreurs futures basée sur patterns historiques
# Si erreur type X répétée 3x dans compétence Y → exercice préventif
echo "Prédictions erreurs:"
jq '.[] | select(.frequence >= 3) | group_by(.type)' 05_grammaire_supplementaire/erreurs_en_cours.json | jq '.[] | {type: .[0].type, pattern_strength: (map(.frequence) | add), prediction: "exercice_preventif_requis"}'  

# Identification nouvelles tendances (erreurs récentes pas encore patterns)
echo "Nouvelles tendances:"
jq '.[] | select(.date >= "2025-08-08" and .frequence == 1) | .type' 05_grammaire_supplementaire/erreurs_en_cours.json | sort | uniq -c
```

### **Système Scoring Erreurs**
```bash
# Score critique = (fréquence × gravité × (1 - progression))
echo "Scores critiques erreurs actives:"
jq '.[] | select(.statut == "en_cours") | . as $item | ($item.frequence * (if $item.gravite == "critique" then 3 elif $item.gravite == "importante" then 2 else 1 end) * (1 - $item.progression)) as $score | {erreur: $item.erreur_kyle, score_critique: $score}' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'sort_by(.score_critique) | reverse'
```

### **Auto-Génération Exercices Ciblés**
```bash
# Génération automatique exercices pour erreurs actives
echo "Exercices à générer aujourd'hui:"
jq '.[] | select(.statut == "en_cours" and .derniere_correction < "2025-08-13") | {type: .type, sous_type: .sous_type, nb_exercices_requis: (.frequence * 2)}' 05_grammaire_supplementaire/erreurs_en_cours.json

# Export format exercice pour intégration Phase 1
jq '.[] | select(.statut == "en_cours") | "ERREUR: " + .erreur_kyle + " → CORRECTION: " + .correction + " (RÈGLE: " + .explication + ")"' 05_grammaire_supplementaire/erreurs_en_cours.json > tmp/exercices_erreurs_$(date +%Y%m%d).txt
```

### **KPIs Performance Grammaire**
```bash
# Métriques clés performance grammaire
echo "=== DASHBOARD GRAMMAIRE ==="
echo "Total erreurs actives: $(jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length)"
echo "Erreurs critiques: $(jq '.[] | select(.gravite == "critique" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length)"
echo "Progression moyenne: $(jq '.[] | .progression' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'add / length * 100')%"
echo "Erreurs résolues ce mois: $(jq '.[] | select(.statut == "resolu" and (.date | startswith("2025-08")))' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length)"
echo "Vélocité correction: $(jq '.[] | select(.statut == "resolu") | (.date | strptime("%Y-%m-%d") | mktime) - (.date | strptime("%Y-%m-%d") | mktime)' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'add / length / 86400') jours/erreur"
```

## **🔗 Intégration Complète Workflow**

### **Liaison avec Compétences**
```bash
# Erreurs par compétence - adaptation exercices
echo "Erreurs CE: $(jq '.[] | select(.competence == "CE" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) actives"
echo "Erreurs CO: $(jq '.[] | select(.competence == "CO" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) actives"
echo "Erreurs PE: $(jq '.[] | select(.competence == "PE" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) actives"
echo "Erreurs PO: $(jq '.[] | select(.competence == "PO" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) actives"
```

### **Auto-Export Anki Erreurs**
```bash
# Génération cartes Anki erreurs actives
jq -r '.[] | select(.statut == "en_cours") | .erreur_kyle + ";" + .correction + "<br><b>RÈGLE:</b> " + .explication + "<br><b>CONTEXTE:</b> " + .contexte + "<br><b>TYPE:</b> " + .type' 05_grammaire_supplementaire/erreurs_en_cours.json > exports/anki_erreurs_$(date +%Y%m%d).csv

# Cartes priorité erreurs critiques
jq -r '.[] | select(.gravite == "critique" and .statut == "en_cours") | .erreur_kyle + ";" + .correction + "<br><b>CRITIQUE - PRIORITÉ MAX</b><br>" + .explication' 05_grammaire_supplementaire/erreurs_en_cours.json > exports/anki_critiques.csv
```

### **Ressources Dynamiques**
#### **Grammaires Contextualisées**
```bash
# Chapitres Grammaire Progressive recommandés selon erreurs
echo "Chapitres à réviser:"
jq '.[] | select(.statut == "en_cours") | .type' 05_grammaire_supplementaire/erreurs_en_cours.json | sort | uniq | while read error_type; do
  case $error_type in
    "conjugaison") echo "- Chapitres 4-6: Temps composés" ;;
    "accord") echo "- Chapitres 8-10: Accords participes" ;;
    "pronoms") echo "- Chapitres 17-19: Pronoms complexes" ;;
  esac
done
```

#### **Applications Adaptées**
- **🏆 Anki Intelligent** : Cartes générées depuis erreurs réelles Kyle
- **📊 Analytics Tracking** : Dashboard performance erreurs temps réel
- **🤖 Prédiction IA** : Anticipation futures erreurs patterns
- **⚙️ Exercices Auto** : Génération ciblée selon faiblesses détectées

### **🚨 Alertes & Monitoring**
```bash
# Système d'alertes automatique
if [ $(jq '.[] | select(.gravite == "critique" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) -gt 5 ]; then
    echo "🚨 ALERTE: Plus de 5 erreurs critiques actives - Session grammaire intensive requise"
fi

if [ $(jq '.[] | select(.frequence > 5 and .progression < 0.5)' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) -gt 0 ]; then
    echo "🚨 ALERTE: Erreurs fréquentes non améliorées détectées - Changement stratégie nécessaire"
fi
```

---

**🔗 Intégration**: Ce système grammaire centralisé s'intègre automatiquement avec [CLAUDE.md](../CLAUDE.md) Phase 1 (correction faiblesses) et [GUIDE_EXERCICES_FAIBLESSES.md](../GUIDE_EXERCICES_FAIBLESSES.md) pour un workflow d'apprentissage unifié.