# 🏋️ Guide Pratique Faiblesses - Système Orchestré

**Pratique OBLIGATOIRE 30-60min avant chaque session DELF B2**

## 🎯 Objectif
- **Validation 15/20 minimum** vocabulaire ET grammaire
- **Si < 15/20** : Continuer jusqu'à atteindre seuil
- **Si ≥ 15/20** : Procéder à session principale

---

## 📚 Hub Vocabulaire Central

### **Source Unique de Vérité**
- **Fichier** : `00_vocabulaire/vocabulaire_maître.json`
- **Structure** :
```json
{
  "date_session": "2025-08-12",
  "nouveaux_mots": [
    {
      "mot": "exemplaire",
      "définition": "qui peut servir d'exemple",
      "contexte": "CE exercice 2",
      "compétence_source": "CE",
      "niveau_maîtrise": "nouveau"
    }
  ],
  "en_révision": [],
  "maîtrisés": []
}
```

### **Orchestration Intelligente**
1. **Pas de redondance** : Exclut automatiquement vocab déjà maîtrisé
2. **Intégration CE/CO/PE/PO** : Vocab des 4 compétences centralisé
3. **Leçons personnalisées** : Générées selon acquis Kyle
4. **Export Anki** : Révisions optimisées

### **Exercices Vocabulaire** (15-20 mots/session)
- **QCM définitions** : 5 questions
- **Contexte approprié** : 5 questions  
- **Synonymes/antonymes** : 5 questions
- **Usage dans phrase** : 5 questions
- **Score minimum** : 15/20 pour continuer

---

## 🔧 Grammaire Personnalisée

### **Source Erreurs Kyle**
- **Fichier** : `05_grammaire_supplémentaire/erreurs_en_cours.json`
- **Structure** :
```json
{
  "erreurs_critiques": [
    {
      "erreur": "Imparfait/Passé composé",
      "dernière_occurrence": "2025-08-05",
      "score_actuel": "15.25/20",
      "statut": "en_cours",
      "exercices_type": ["QCM_temps", "transformation", "correction_texte"]
    }
  ]
}
```

### **Faiblesses Actuelles Priorité**
1. **Imparfait/Passé composé** (15.25/20)
   - Confusion aspect duratif vs ponctuel
   - "j'ai eu l'habitude" → "j'avais l'habitude"

2. **CE QUE vs CE QUI** (16.25/20)  
   - Confusion COD vs sujet
   - "ce que je fais peur" → "ce qui me fait peur"

3. **Ordre pronoms COD/COI** (15.5/20)
   - "en y" → "lui en"
   - "leurs" → "leur" (invariable)

### **Exercices Grammaire** (20 questions)
- **QCM temps verbaux** : 8 questions
- **Transformations** : 6 questions  
- **Corrections d'erreurs** : 6 questions
- **Score minimum** : 15/20 pour continuer

---

## 🎯 Orchestration Session Type

### **1. Démarrage Session (/learn-fr)**
```
Étape 1: Créer journal session (système local)
Étape 2: Lancer pratique faiblesses OBLIGATOIRE
Étape 3: Validation scores (15/20 minimum)
Étape 4: Si validé → Session principale
Étape 5: Si échec → Prolonger pratique faiblesses
```

### **2. Workflow Pratique Faiblesses**
```
Phase A (15min): Vocabulaire Hub Central
- Charger 00_vocabulaire/vocabulaire_maître.json
- Générer 20 questions selon lacunes Kyle
- Validation 15/20 minimum

Phase B (15min): Grammaire Personnalisée  
- Charger 05_grammaire_supplémentaire/erreurs_en_cours.json
- Focus sur 3 faiblesses priorité actuelles
- Exercices ciblés QCM/transformations
- Validation 15/20 minimum

Phase C (optionnel): Prolongation si échec
- Identifier points précis d'échec
- Exercices supplémentaires ciblés
- Re-test jusqu'à validation
```

### **3. Mise à Jour Temps Réel**
- **Vocab acquis** → Mise à jour vocabulaire_maître.json
- **Erreurs corrigées** → Mise à jour erreurs_en_cours.json  
- **Nouvelles erreurs** → Ajout à erreurs_en_cours.json
- **Progression** → Mise à jour PROGRESSION_GLOBALE.md

---

## 📊 Dashboard Progression Unifié

### **Métriques Temps Réel**
```
Vocabulaire:
├── Nouveaux cette session: [X]/20
├── En révision active: [compteur]  
├── Maîtrisés total: [compteur]
└── Taux rétention: [%]

Grammaire:
├── Erreurs critiques: [compteur]
├── En cours traitement: [compteur]
├── Récemment corrigées: [compteur] 
└── Score moyen: [X]/20
```

### **Indicateurs Validation**
- ✅ **Vocabulaire ≥ 15/20** : Session principale autorisée
- ✅ **Grammaire ≥ 15/20** : Session principale autorisée  
- ❌ **< 15/20** : Prolonger pratique faiblesses

---

## 🔄 Intégration Système Global

### **Avant Session** 
- Automatique via `/learn-fr` 
- Aucune action Kyle nécessaire

### **Pendant Session**
- Vocab/erreurs détectés → système central temps réel
- Pas d'interruption flux apprentissage

### **Après Session**
- Mise à jour automatique tous fichiers progression
- Prépare matériel session suivante
- Dashboard progression actualisé

---

**Ce système élimine la redondance et assure progression constante sur faiblesses Kyle.**