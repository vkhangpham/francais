# 🇫🇷 CLAUDE.md - Guide Principal DELF B2

**Objectif** : Réussite DELF B2 (65-75/100)  
**Méthode** : Sessions quotidiennes structurées, toutes compétences

---

## 🚀 COMMANDE DE DÉMARRAGE

```
/learn-fr
```

**Kyle choisit la compétence du jour** : CE, CO, PE, ou PO  
**Session structure** : 90-120 minutes en 3 phases

---

## 📋 WORKFLOW UNIVERSEL

### **Phase 1 : Pratique Faiblesses (30 min)**
**Identique pour TOUTES les compétences**

#### **1. Conjugaison/Temps (10 min) - PRIORITÉ KYLE**
- **Source** : `05_grammaire_supplementaire/erreurs_en_cours.json`
- **Focus** : Imparfait/PC, Subjonctif/Indicatif, choix du temps
- **Format** : 15 questions QCM/transformation
- **Seuil** : 15/20 minimum pour continuer
- **Chapitres référence** : Grammaire Progressive 4 (Temps), 5-6 (Subjonctif)

#### **2. Vocabulaire Révision (10 min)**
- **Source** : `06_vocabulaire/vocabulaire_master.json`
- **Sélection** : 20-30 mots des 3 dernières sessions
- **Méthode** : Contexte → Définition → Usage
- **Vérification** : Éviter redondance avec mots déjà acquis

#### **3. Erreurs Récentes (10 min)**
- **Base** : Erreurs sessions précédentes documentées
- **Format** : Exercices ciblés sur patterns récurrents
- **Correction** : Immédiate avec explications brèves

### **💡 Guide Détaillé**
**→ Voir [GUIDE_EXERCICES_FAIBLESSES.md](GUIDE_EXERCICES_FAIBLESSES.md)**

**Résumé création exercices** :
- **Conjugaison** : 4 parties (créative, paragraphe, pronoms, chapitre aléatoire)
- **Vocabulaire** : Sessions récentes + mots faibles  
- **Erreurs** : Patterns spécifiques Kyle documentés
- **Seuil** : 15/20 minimum pour continuer session

### **Phase 2 : Compétence Principale (60 min)**
**Délégation selon choix Kyle**

- **CE** → [01_comprehension_ecrite/CLAUDE.md](01_comprehension_ecrite/CLAUDE.md)
  - Articles authentiques, questions B2, discussion post-exercice
  - **Option fin session** : "PE même thème?" (renforcement vocabulaire)
- **CO** → [02_comprehension_orale/CLAUDE.md](02_comprehension_orale/CLAUDE.md)
  - Audio France Inter/Culture, prise notes, transcription
  - **Option fin session** : "PO même thème?" (renforcement oral)
- **PE** → [03_production_ecrite/CLAUDE.md](03_production_ecrite/CLAUDE.md)
  - Essai argumenté 250 mots, préparation complète indépendante
- **PO** → [04_production_orale/CLAUDE.md](04_production_orale/CLAUDE.md)
  - Exposé + débat, préparation complète indépendante

### **🔗 Stratégie Liaison Compétences**
**Règle hybride intelligente :**
- **Compétences réceptives** (CE/CO) → Option liaison productive (PE/PO)
- **Compétences productives** (PE/PO) → Sessions indépendantes complètes
- **Avantage** : Vocabulaire acquis immédiatement renforcé si liaison choisie

### **Phase 3 : Intégration (30 min)**
**Retour workflow universel**

#### **1. Mise à jour données (15 min)**
- **Vocabulaire nouveau** → `vocabulaire_master.json` avec contexte acquisition
- **Erreurs détectées** → `erreurs_en_cours.json` avec type/correction
- **Score session** → `data/progression_master.json`

#### **2. Export révisions (10 min)**
- **Anki cards** : Nouveaux mots avec contexte authentique
- **Règles grammaticales** : Erreurs à réviser avec exemples
- **Format standardisé** : Recto/Verso optimisé

#### **3. Finalisation (5 min)**
- **Journal session** : `sessions/YYYY-MM-DD_[skill].md`
- **Commit auto** : "[Skill]_[XX]: [Score]/25, [X] vocab, [X] erreurs"
- **Mise à jour** : `PROGRESSION_GLOBALE.md` régénéré

---

## 🎯 OBJECTIFS DELF B2

| Compétence | Cible | Actuel | Stratégie | Statut |
|------------|-------|--------|-----------|--------|
| CE | 18-20/25 | 19/25 | Maintien 1x/semaine | ✅ Atteint |
| CO | 16-18/25 | -- | Diagnostic urgent | 📋 Prioritaire |
| PE | 17-20/25 | -- | Structure + connecteurs | ⏳ Après CO |
| PO | 16-18/25 | -- | Fluidité + débat | ⏳ Final |

### **Seuil Minimum DELF B2**
- **Chaque compétence** : 12.5/25 (50%)
- **Total général** : 50/100 minimum
- **Objectif Kyle** : 65-75/100 (confortable)

### **Métriques Quotidiennes**
- **Vocabulaire** : 20 mots nouveaux/session
- **Rétention** : 85% à J+7 (vérification Anki)
- **Correction erreurs** : 100% détection, 80% élimination

---

## 📊 DONNÉES CENTRALISÉES

### **Fichiers Principaux**
- **Vocabulaire** : [06_vocabulaire/vocabulaire_master.json](06_vocabulaire/vocabulaire_master.json)
  - Tous mots toutes compétences, niveau maîtrise, révisions
- **Erreurs** : [05_grammaire_supplementaire/erreurs_en_cours.json](05_grammaire_supplementaire/erreurs_en_cours.json)
  - Type, fréquence, correction, statut progression
- **Progression** : [data/progression_master.json](data/progression_master.json)
  - Scores, durées, stats par session
- **Dashboard** : [PROGRESSION_GLOBALE.md](PROGRESSION_GLOBALE.md)
  - Vue d'ensemble, tendances, prochaines étapes

### **Vérification Intégrité Données**
```bash
# Vocabulaire faible (< 70% maîtrise)
jq '.[] | select(.niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json

# Erreurs actives
jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json
```

---

## 📈 GUIDE SUIVI PROGRESSION

### **Tracking Temps Réel (Pendant Session)**

#### **Phase 1 : Capture Automatique**
```
CONJUGAISON: Score/20 → noter dans session journal
VOCABULAIRE: Mots révisés → vérifier niveau maîtrise  
ERREURS: Nouvelles fautes → ajouter erreurs_en_cours.json
```

#### **Phase 2 : Collection Données Principales**
```
SCORE EXERCICE: XX/25 → data/progression_master.json
VOCABULAIRE NOUVEAU: Mots + contexte → vocabulaire_master.json
ERREURS DÉTECTÉES: Type + correction → erreurs_en_cours.json
OBSERVATIONS: Points forts/faibles → session journal
```

#### **Phase 3 : Mise à Jour Systèmes**
```
1. vocabulaire_master.json:
   {
     "mot": "néanmoins",
     "contexte_acquisition": "CO01 - débat politique",
     "competence": "CO",
     "date": "2025-08-15",
     "niveau_maitrise": 0.0
   }

2. erreurs_en_cours.json:
   {
     "id": "ERR_2025081501", 
     "erreur": "il veuille",
     "correction": "il veut",
     "competence": "CO",
     "frequence": 1,
     "statut": "detecte"
   }

3. data/progression_master.json:
   {
     "2025-08-15": {
       "skill": "CO",
       "score": 15,
       "vocabulary_acquired": 18,
       "errors_detected": 5
     }
   }
```

### **Finalisation Session**
1. **Journal complet** : `sessions/YYYY-MM-DD_skill.md`
2. **PROGRESSION_GLOBALE.md** : Régénération automatique
3. **Git commit** : "[Skill]_[XX]: [Score]/25, [X] vocab, [X] erreurs"
4. **Push GitHub** : Sauvegarde complète

### **Indicateurs Clés à Suivre**
- **Score progression** : Tendance par compétence
- **Vitesse acquisition** : Mots/session, rétention
- **Correction erreurs** : Fréquence, résolution
- **Temps investissement** : Durée vs résultats

---

## 🔧 RÈGLES IMPORTANTES

### **Correction Systématique**
- TOUJOURS corriger TOUTES les erreurs de Kyle, y compris les erreurs en discutant.
- Format : ❌ erreur → ✅ correction
- Explications brèves (1-2 phrases max)

### **Préférences Kyle**
- ✅ Exercices QCM et transformations
- ❌ Pas de production longue
- ✅ Progression > Perfection

### **Fin de Session**
```
"terminons cette séance"
```
→ Sauvegarde automatique + commit + push GitHub

---

## 🔧 OUTILS PRIORITAIRES

### **Recherche & Contenu**
1. **Perplexity MCP** (`mcp__task-master-ai__research`)
   - Recherches approfondies avec citations
   - Méthodologies DELF B2, ressources actualisées
2. **Firecrawl** (`mcp__mcp-server-firecrawl__`)
   - Extraction articles authentiques (Le Monde, Le Figaro)
   - Format markdown, contenu principal seulement
3. **Sequential Thinking**
   - Planification sessions complexes
   - Résolution problèmes pédagogiques

### **Suivi & Organisation**
- **Task Master** : Gestion sessions, subtasks
- **TodoWrite** : Tâches temps réel pendant session
- **Git automatique** : Commits avec métriques session

### **Commandes Utiles**
```bash
# Session
/learn-fr                    # Démarrer (puis choisir compétence)
"terminons cette séance"     # Finaliser automatiquement

# Données
task-master list            # Voir progression générale
task-master get-task --id=X # Détails tâche spécifique
```

---

## 📚 RESSOURCES PRINCIPALES

### **Livres Référence**
- **Grammaire Progressive Avancé** : `~/Study/books/Grammaire Progressive Du Francais Avance.pdf`
  - Chapitres 4 (Temps), 5-6 (Subjonctif), 17-19 (Pronoms)
- **Grammaire Essentielle B2** : `~/Study/books/Grammaire Essentielle du Francais B2/`
- **Vocabulaire Progressif B2** : `~/Study/books/vocabulaire progressive b2/`
- **Expressions Utiles** : `~/Study/books/198 French Phrases and expressions.pdf`

### **Sources Authentiques**
- **Presse** : Le Monde, Le Figaro, L'Express, Libération
- **Audio** : France Inter, France Culture, RFI, Arte Radio
- **Extraction** : Firecrawl pour textes, Puppeteer si needed

