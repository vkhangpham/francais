# 📖 COMPRÉHENSION ÉCRITE - Guide Spécifique DELF B2

## 📋 SPÉCIFICITÉS CE

### **Format DELF B2**
- 2 documents authentiques (200-300 mots chacun)
- 45 minutes total en conditions d'examen
- Questions QCM (70%) + questions courtes (30%)
- **Score cible : 18-20/25**

### **Compétences Clés**
- **Écrémage rapide** : Idée générale en 2-3 minutes
- **Balayage ciblé** : Informations spécifiques rapidement
- **Compréhension implicite** : Ton, ironie, intentions auteur
- **Inférences logiques** : Déductions à partir du texte

---

## ⚡ MÉTHODOLOGIE CE SPÉCIFIQUE

### **Timing Optimal (45 min)**
1. **Écrémage global** (3 min) : Titres, structure, type de texte
2. **Lecture questions** (5 min) : Mots-clés, attentes
3. **Document 1** (18 min) : Lecture + réponses Q1-Q6
4. **Document 2** (17 min) : Lecture + réponses Q7-Q13
5. **Vérification** (2 min) : Cohérence réponses

### **Stratégies de Lecture**
- **Questions d'abord** : Savoir quoi chercher
- **Mots-clés soulignés** : Focus informations essentielles
- **Paraphrases** : Reformulations dans questions ≠ texte exact
- **Élimination QCM** : Exclure réponses évidemment fausses

---

## 🌐 SOURCES AUTHENTIQUES

### **Méthode d'Extraction**
1. **Perplexity MCP** : Recherche URLs thème spécifique
2. **Firecrawl MCP** : Extraction contenu authentique
3. **Critères** : 200-350 mots, niveau B2, récent (< 2 semaines)

### **Sources Principales**
- **Presse généraliste** : Le Monde, Le Figaro, L'Express, Libération
- **Presse spécialisée** : Les Échos, Challenges, Sciences et Avenir
- **Médias publics** : France Culture, TV5Monde, France 24, La Croix

---

## 🎯 STRATÉGIE SÉLECTION THÈMES

### **Thèmes DELF B2 Complets**

#### **1. Société & Vie Quotidienne (30%)**
- **Relations sociales** : Générations, famille moderne, solitude, communautés
- **Éducation** : Réformes scolaires, formation continue, universités, apprentissage
- **Santé publique** : Système de santé, prévention, vieillissement, handicap
- **Justice & Sécurité** : Délinquance, prisons, droits, police de proximité
- **Inégalités** : Classes sociales, pauvreté, exclusion, discriminations
- **Migration** : Immigration, intégration, diversité, identité nationale

#### **2. Économie & Travail (25%)**
- **Monde du travail** : Télétravail, chômage, formation, syndicalisme
- **Consommation** : Commerce équitable, publicité, modes de vie, épargne
- **Entreprises** : Start-ups, PME, multinationalisation, innovation
- **Économie locale** : Artisanat, agriculture, tourisme rural, circuits courts
- **Finances** : Banques, investissement, cryptomonnaies, fiscalité
- **Mondialisation** : Commerce international, délocalisations, protectionnisme

#### **3. Environnement & Sciences (20%)**
- **Climat** : Réchauffement, catastrophes naturelles, adaptation
- **Énergie** : Renouvelables, nucléaire, transition énergétique
- **Biodiversité** : Protection espèces, parcs naturels, agriculture bio
- **Urbanisme** : Villes durables, transport, pollution, logement
- **Technologies** : IA, numérique, robotique, biotechnologies
- **Recherche** : Innovations médicales, spatial, sciences fondamentales

#### **4. Culture & Société (15%)**
- **Arts & Spectacles** : Cinéma, théâtre, musique, littérature contemporaine
- **Patrimoine** : Monuments, traditions, savoir-faire, UNESCO
- **Médias** : Presse, réseaux sociaux, désinformation, liberté expression
- **Francophonie** : Diversité linguistique, coopération, influence française
- **Religions** : Laïcité, dialogue interreligieux, spiritualité moderne
- **Philosophie** : Éthique, débats de société, valeurs républicaines

#### **5. Politique & Institutions (10%)**
- **Démocratie** : Élections, participation citoyenne, référendums
- **Europe** : Union européenne, coopération, souveraineté
- **International** : Diplomatie, conflits, aide au développement
- **Institutions** : République, décentralisation, services publics
- **Réformes** : Constitutionnelles, administratives, territoriales
- **Citoyenneté** : Engagement, associations, bénévolat, militantisme

### **Méthode Sélection Intelligente**

#### **Étape 1 : Analyse Historique**
```bash
# Thèmes des 3 dernières sessions CE
grep -h "Thème\|thème" sessions/2025-*_ce*.md | tail -3

# Vocabulaire faible par thème  
jq 'group_by(.theme) | .[] | {theme: .[0].theme, faible: [.[] | select(.niveau_maitrise < 0.7)] | length}' 06_vocabulaire/vocabulaire_master.json
```

#### **Étape 2 : Choix Stratégique**
- **Éviter répétition** immédiate (≠ 2 dernières sessions)
- **Prioriser faiblesses** : Thèmes avec vocabulaire faible
- **Actualité française** : Événements récents pertinents  
- **Progression DELF** : Équilibre société/économie/environnement



### **Workflow Préparation Session**

#### **Phase 0 : Contexte et Stratégie (10 min)**
1. **Révision sessions précédentes**
   ```bash
   # Consulter 2-3 dernières sessions CE
   ls -t sessions/2025-*-*_ce*.md | head -3
   
   # Vérifier thèmes récents traités
   grep "thème" sessions/2025-*-*_ce*.md | tail -5
   ```

2. **Analyse vocabulaire acquis**
   ```bash
   # Vocabulaire faible à réviser
   jq '.[] | select(.competence == "CE" and .niveau_maitrise < 0.7)' 06_vocabulaire/vocabulaire_master.json
   ```

3. **Sélection thème stratégique**
   - **Éviter répétition** : Thèmes des 3 dernières sessions
   - **Rotation DELF B2** : Société (40%), Économie (25%), Sciences (20%), Culture (10%), Sport (5%)
   - **Complémentarité** : Si CE précédent = environnement → économie verte, technologie durable
   - **Pertinence** : Actualité récente française (<2 semaines)

#### **Phase 1 : Document 1 (15 min)**
1. **Recherche ciblée par thème choisi**
   ```bash
   mcp__perplexity-mcp__perplexity_search_web({
     "query": "articles français récents [THÈME SPÉCIFIQUE] site:lemonde.fr OR site:lefigaro.fr 200-300 mots",
     "recency": "week"
   })
   ```
   
2. **Sélection Article 1**
   - Longueur : 200-350 mots
   - Niveau : B2 accessible (pas trop technique)
   - Angle : Perspective française/européenne
   - Fraîcheur : <2 semaines

3. **Extraction et sauvegarde**
   ```bash
   mcp__mcp-server-firecrawl__firecrawl_scrape({
     "url": "[URL1]",
     "formats": ["markdown"], 
     "onlyMainContent": true
   })
   ```
   → `articles_sources/ceXX_doc1_[theme]_AAAAMMJJ.md`

4. **Leçon partielle** : 10-12 mots vocabulaire Doc1 avec vérification redondance

#### **Phase 2 : Document 2 (15 min)**
1. **Thématique complémentaire intelligente**
   - **Si Doc1 = technologie** → impact social technologie
   - **Si Doc1 = environnement** → politique environnementale  
   - **Si Doc1 = économie** → conséquences sociales
   - **Angle différent, même domaine** pour questions de synthèse

2. **Recherche Article 2 ciblée**
   ```bash
   # Exemple : Doc1 = "IA dans l'éducation" → Doc2 = "formation des enseignants technologie"
   mcp__perplexity-mcp__perplexity_search_web({
     "query": "articles français [THÈME COMPLÉMENTAIRE] perspectives différentes",
     "recency": "week"  
   })
   ```

3. **Extraction et finalisation**
   → `articles_sources/ceXX_doc2_[theme]_AAAAMMJJ.md`
   → **AJOUT leçon** : +8-10 mots vocab Doc2 (total ~20)
   → **Exercice complet** : Questions croisées Doc1+Doc2


## 📝 TYPES DE QUESTIONS DELF B2

### **QCM Standards (70%)**
- 4 choix de réponse par question
- Formulations courtes et directes
- Exemples : "D'après le texte...", "Selon l'auteur...", "L'attitude de l'auteur est :"

### **Vrai/Faux/Non mentionné (15%)**
```
Pour chaque affirmation, indiquez si elle est vraie, fausse ou non mentionnée :
1. Les mesures ont réduit la consommation de 30%
2. L'auteur préfère les initiatives individuelles  
3. Un changement radical des habitudes est nécessaire
```

### **Réponses Courtes (10%)**
- 2-3 lignes maximum
- "Citez deux arguments de l'auteur"
- "Expliquez en vos propres mots pourquoi..."

### **Repérage Simple (5%)**
- "Relevez deux expressions qui montrent l'attitude critique"
- "Identifiez la phrase qui résume la position de l'auteur"

---

## 📊 BARÈME DELF B2

### **Répartition des Points**
- **Compréhension explicite** (50%) : Informations directes
- **Compréhension implicite** (35%) : Inférences logiques
- **Analyse basique** (15%) : Attitude auteur, organisation

### **Structure Session CE Complète**

#### **1. Leçon Préparatoire (25-30 min)**
##### **A. Vocabulaire Stratégique (15 min)**
- **20-25 mots essentiels** avec analyse complète :
  - Définition précise + registre de langue
  - 2-3 exemples contextualisés
  - Synonymes/antonymes par registre
  - Constructions grammaticales spécifiques
  - Collocations courantes (verbe+nom, adj+nom)
  - Champ lexical et mots de la même famille

##### **B. Expressions Idiomatiques (5 min)**
- **5-8 expressions** avec analyse :
  - Sens littéral vs figuré
  - Contextes d'usage appropriés
  - Variations et alternatives
  - Fréquence DELF et registre

##### **C. Structures Grammaticales (3 min)**
- **3-5 points grammaticaux B2+** du texte :
  - Règles avec exceptions
  - Exemples du texte analysés
  - 2-3 transformations rapides

##### **D. Contexte Culturel (2 min)**
- Contexte français/européen nécessaire
- Enjeux contemporains abordés
- Personnalités/institutions mentionnées

#### **2. Exercice DELF (45 min)**
- **Présentation** : "DELF B2 - COMPRÉHENSION ÉCRITE"
- **Durée** : 45 minutes chronométrées
- **Barème** : 25 points total
- **Format Kyle** : "Ma réponse :" après chaque question
- **Documents** : 2 textes authentiques (200-300 mots chacun)

#### **3. Post-Exercice (15 min)**
- **Correction immédiate** : Réponses + justifications
- **Analyse erreurs** : Explications grammaticales
- **Sauvegarde** : `ceXX_apres_lecon.md` avec discussions Kyle/Claude
- **Intégration données** → Voir section suivante

---

## 📊 INTÉGRATION DONNÉES CENTRALISÉES

### **Pendant Leçon Préparatoire**

#### **Vocabulaire → vocabulaire_master.json**
```json
{
  "mot": "néanmoins",
  "definition": "cependant, toutefois (connecteur opposition)",
  "contexte_acquisition": "CE05_Doc1 - débat énergie nucléaire",
  "exemples": [
    "Les énergies renouvelables progressent, néanmoins le nucléaire reste dominant",
    "Cette solution présente des avantages, néanmoins elle reste coûteuse"
  ],
  "competence": "CE",
  "theme": "environnement",
  "date_acquisition": "2025-08-15",
  "niveau_maitrise": 0.0,
  "statut": "nouveau",
  "synonymes": ["cependant", "toutefois", "pourtant"],
  "registre": "soutenu"
}
```

#### **Expressions → vocabulaire_master.json**
```json
{
  "mot": "faire le pari de",
  "definition": "miser sur, parier que quelque chose va réussir",
  "contexte_acquisition": "CE05_Doc2 - politique économique",
  "exemples": [
    "Le gouvernement fait le pari des nouvelles technologies",
    "L'entreprise fait le pari de l'innovation durable"
  ],
  "competence": "CE",
  "type": "expression",
  "niveau_maitrise": 0.0
}
```

### **Pendant Exercice CE**

#### **Erreurs Grammaticales → erreurs_en_cours.json**
```json
{
  "id": "ERR_CE05_001",
  "erreur_kyle": "L'auteur *veuille* dire que...",
  "correction": "L'auteur *veut* dire que...",
  "type": "conjugaison",
  "sous_type": "subjonctif_incorrect",
  "competence": "CE",
  "session": "CE05",
  "contexte": "Question 8 - compréhension implicite",
  "explication": "Après 'L'auteur dit/veut que' → indicatif, pas subjonctif",
  "date_detection": "2025-08-15",
  "frequence": 1,
  "statut": "detecte",
  "chapitre_reference": "Grammaire Progressive Ch.5"
}
```

#### **Erreurs Vocabulaire → erreurs_en_cours.json**
```json
{
  "id": "ERR_CE05_002", 
  "erreur_kyle": "l'auteur *s'enforcer* de montrer",
  "correction": "l'auteur *s'efforce* de montrer",
  "type": "vocabulaire",
  "sous_type": "confusion_verbe",
  "competence": "CE",
  "niveau_maitrise": 0.3,
  "note": "Confusion récurrente enforcer/efforcer (anglicisme)"
}
```

### **Post-Exercice - Session Journal**

#### **ceXX_apres_lecon.md Structure**
```markdown
# CE05 - Post-Exercice (15/08/2025)

## 📊 Résultats
- **Score** : 18/25 (72%)
- **Temps** : 43 minutes
- **Thème** : Transition énergétique

## 💬 Discussions Vocabulary 
- Kyle: "Que veut dire 'faire le pari de' ?"
- Claude: [Explication détaillée + exemples]
- Kyle: "Et 'néanmoins' vs 'cependant' ?"
- Claude: [Nuances registre + usage]

## ❌ Erreurs Analysées
1. **Q8** : "veuille" → "veut" (indicatif après 'dire que')
2. **Q12** : "s'enforcer" → "s'efforce" (confusion récurrente)

## 🎯 Points Forts Session
- Compréhension implicite excellent
- Inférences logiques maîtrisées

## 📈 Recommandations
- Réviser conjugaison indicatif/subjonctif
- Travailler verbes effort/force famille
```

### **Fin Session - Mise à Jour Globale**

#### **data/progression_master.json**
```json
{
  "2025-08-15": {
    "skill": "CE",
    "exercise": "CE_05",
    "score": 18,
    "max_score": 25,
    "theme": "transition_energetique",
    "duration_minutes": 75,
    "vocabulary_acquired": 22,
    "errors_detected": 2,
    "errors_fixed": 0,
    "strengths": ["compréhension implicite", "inférences"],
    "weaknesses": ["conjugaison indicatif", "confusion verbes"]
  }
}
```

### **Vérification Intégrité**
```bash
# Vérifier nouveaux mots ajoutés
jq '.[] | select(.date_acquisition == "2025-08-15")' 06_vocabulaire/vocabulaire_master.json

# Vérifier erreurs détectées
jq '.[] | select(.session == "CE05")' 05_grammaire_supplementaire/erreurs_en_cours.json

# Statistiques session
jq '.["2025-08-15"]' data/progression_master.json
```

---

**💡 Rappel** : Phase 2 du workflow universel délègue ici pour le contenu CE spécifique
