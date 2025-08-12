# 🔍 COMPRÉHENSION ÉCRITE - Plan DELF B2

## **Objectifs spécifiques DELF B2 OFFICIEL (FORMAT 2024-2025)**
- **FORMAT RÉEL** : 2 documents authentiques (200-300 mots chacun) en ~45 minutes
- **INTÉGRATION** : Partie de l'épreuve écrite globale (~2h30 total avec CO et PE)
- **QUESTIONS OFFICIELLES** : Principalement QCM à 4 choix + questions courtes (réforme 2024)
- **BARÈME OFFICIEL** : 25 points total pour la compréhension écrite
- **Score cible : 18-20/25 points** (72-80%)

## **Compétences à développer**

### 1. **Lecture rapide et efficace**
- **Écrémage (skimming)** : idée générale en 2-3 minutes
- **Balayage (scanning)** : informations spécifiques rapidement
- **Lecture approfondie** : passages clés seulement

### 2. **Compréhension fine**
- Idées principales vs secondaires
- Opinions explicites et implicites de l'auteur
- Ton du texte (objectif, critique, ironique)
- Références culturelles françaises

### 3. **Vocabulaire stratégique (SYSTÈME UNIFIÉ)**
- **15-20 mots vraiment nouveaux** par séance (vérification automatique acquis)
- **Intégration `/00_vocabulaire/vocabulaire_master.json`** = source unique
- **Export Anki automatique** pour révisions optimisées
- **Synonymes et paraphrases** contextualisés
- **Expressions idiomatiques** niveau B2 avec usage authentique

## **Méthodologie séance par séance**

### **Séances 1-6 : Techniques de base (45 min)**
- **3 min** : Lecture écrémage (titres, structure générale)
- **7 min** : Lecture des questions AVANT le texte intégral
- **30 min** : Lecture approfondie et réponses
- **5 min** : Révision et vérification

### **Séances 7-12 : Accélération (40 min)**
- **2 min** : Écrémage rapide
- **5 min** : Lecture questions
- **28 min** : Lecture et réponses simultanées
- **5 min** : Vérification ciblée

### **Séances 13-18 : Perfectionnement (Format réel)**
- **Conditions d'examen** : 45 min chronomètre (format intégré)
- **Textes authentiques** : articles, lettres, documents variés B2
- **Auto-correction** immédiate avec barème officiel

## **Sources de textes**

### **🤖 Méthode MCP Puppeteer (RECOMMANDÉE pour extraction d'articles)**
- **Usage spécifique** : Extraction automatique d'articles de presse française
- **Outil** : `mcp__puppeteer__puppeteer_navigate` + extraction automatique
- **Sites accessibles** : Le Monde, Le Figaro, L'Express, Libération
- **Avantages** : Articles authentiques temps réel, contournement paywall
- **Process** :
  1. Navigation → `puppeteer_navigate` vers section société/culture
  2. Extraction → `puppeteer_evaluate` pour récupérer article complet
  3. Adaptation → Calibrage longueur et niveau B2
  4. Questions → Génération automatique format DELF

### **🔍 DISTINCTION IMPORTANTE : Puppeteer vs Perplexity**
- **Puppeteer MCP** : Extraction de contenu web spécifique (articles de presse)
- **Perplexity MCP** : Recherche d'information et méthodologies d'apprentissage
- **Exemple CE** : 
  - Puppeteer → Extraire article Le Monde sur l'environnement
  - Perplexity → Rechercher "meilleures stratégies lecture rapide DELF B2"

### **📰 Sources Prioritaires**
- **Le Monde** (société, idées, culture) → `https://www.lemonde.fr/societe/`
- **Le Figaro** (société, débats) → `https://www.lefigaro.fr/actualite-france/`
- **L'Express** (analyses) → Articles de fond niveau B2+
- **Sciences et Avenir** → Vulgarisation scientifique
- **France Culture** → Transcriptions émissions intellectuelles

### **🎯 Critères DELF B2 Officiels (Format 2024-2025)**
- **Document 1** : 200-300 mots (texte authentique varié)
- **Document 2** : 200-300 mots (texte authentique varié)
- **Types** : Articles, lettres, extraits, documents administratifs/publicitaires
- **Complexité** : Niveau B2 avec structures grammaticales avancées
- **Thématiques B2** : Vie quotidienne, professionnelle, culturelle, actualité
- **Authenticité** : Documents réels non adaptés

## **Grille d'évaluation DELF B2 Officielle (Réforme 2024)**
- **Questions QCM** : Format dominant (4 choix par question)
- **Questions courtes** : Réponses brèves spécifiques
- **Évaluation** : Compréhension globale + détaillée + inférences
- **Total** : 25 points pour la compréhension écrite
- **Seuil de réussite** : 12,5/25 (50%) + 5/25 minimum

## **Test diagnostic initial**
**PRIORITÉ** : Évaluer vitesse de lecture actuelle avec chronométrage strict

## **🔄 Workflow Création Leçon avec MCP Puppeteer**

### **Étape 1 : Navigation et Extraction**
```javascript
// 1. Naviguer vers site cible
mcp__puppeteer__puppeteer_navigate("https://www.lemonde.fr/societe/")

// 2. Extraire articles disponibles
mcp__puppeteer__puppeteer_evaluate(`
  const articles = document.querySelectorAll('article');
  const articleData = [];
  articles.forEach((article, i) => {
    if (i < 5) {
      const title = article.querySelector('h2, h3')?.textContent;
      const link = article.querySelector('a')?.href;
      const preview = article.querySelector('p')?.textContent;
      if (title && link) articleData.push({title, link, preview});
    }
  });
  console.log('Articles trouvés:', articleData);
`);

// 3. Sélectionner article optimal pour niveau B2
```

### **Étape 2 : Adaptation DELF B2 Format Réel 2024-2025**
- **Document 1** : 200-300 mots (texte authentique)
- **Document 2** : 200-300 mots (texte authentique différent)
- **Questions générées** : Principalement QCM 4 choix + questions courtes
- **Types d'évaluation** : Compréhension explicite/implicite + vocabulaire + inférences
- **Barème officiel** : 25 points total

### **Étape 3 : Création Leçon**
- **Fichier texte** : `/01_evaluations/ce_lemonde_[date].md`
- **Corrigé détaillé** : Explications vocab + grammaire contextualisée
- **Suivi progression** : Mise à jour automatique scores + vocabulaire acquis

### **🎯 Avantages Méthode MCP Puppeteer**
- ✅ **Authenticité garantie** : Vrais articles journalistes français
- ✅ **Actualité constante** : Contenus récents et pertinents  
- ✅ **Niveau variable** : Possibilité d'adapter selon progression Kyle
- ✅ **Sources diversifiées** : Rotation automatique entre sites
- ✅ **Efficacité** : Création leçon complète en 10-15 minutes

---

## **📋 STRUCTURE EXERCICE AMÉLIORÉE (Instructions Kyle)**

### **🎯 Format Standard Obligatoire**

#### **1. 📚 LEÇON PRÉPARATOIRE INTENSIVE** *(Avant exercice - 25-30 min)*

**🎯 OBJECTIF** : Maîtriser 95% du vocabulaire et structures avant l'exercice

##### **A. VOCABULAIRE STRATÉGIQUE** *(15 min)*
- **20-25 mots essentiels** avec analyse complète :
  - **Définition précise** + **registre de langue**
  - **Exemples contextualisés** (2-3 par mot)
  - **Synonymes/antonymes** par niveau de registre
  - **Constructions grammaticales** spécifiques
  - **Collocations courantes** (verbe + nom, adj + nom)
  - **Champ lexical** et mots de la même famille

##### **B. EXPRESSIONS IDIOMATIQUES DÉTAILLÉES** *(5 min)*
- **5-8 expressions** avec analyse approfondie :
  - **Sens littéral** vs **sens figuré**  
  - **Contextes d'usage** appropriés
  - **Variations** et constructions alternatives
  - **Fréquence DELF** et **registre**
  - **Techniques de mémorisation** (images mentales)

##### **C. STRUCTURES GRAMMATICALES COMPLEXES** *(3 min)*
- **3-5 points grammaticaux** B2+ présents dans le texte :
  - **Règles** avec exceptions
  - **Exemples** du texte analysés
  - **Exercices flash** (2-3 transformations)
  - **Pièges à éviter** fréquents

##### **D. RÉFÉRENCES CULTURELLES & CONTEXTE** *(2 min)*
- **Contexte français/européen** nécessaire
- **Enjeux contemporains** abordés
- **Personnalités/institutions** mentionnées
- **Implicites culturels** à saisir

#### **2. 📝 EXERCICE FORMAT DELF B2 + RÉPONSES KYLE**
- **Présentation** : "DELF B2 - COMPRÉHENSION ÉCRITE" + "Durée: ~45 minutes" + "Note sur: 25 points"
- **Consigne officielle** : "Vous allez lire deux documents et vous devrez répondre aux questions..."
- **2 Documents distincts** : Document 1 (200-300 mots) + Document 2 (200-300 mots)
- **Questions DELF authentiques** : Principalement QCM 4 choix + questions courtes (réforme 2024)
- **Format réponses Kyle** : "**Ma réponse :**" après chaque question (pas de cases/blancs)
- **100% DELF** : Types de questions, formulation, niveau, barème officiels ✅

#### **3. ✅ FICHIER CORRECTION DÉTAILLÉ** *(Après exercice)*
- **Correction complète** : Réponses + justifications
- **Erreurs analysées** : Explications grammaticales
- **Discussion Kyle/Claude** : Échanges documentés
- **Recommandations** : Prochaines étapes personnalisées

### **🔄 Processus Intégré DELF B2 FORMAT RÉEL 2024-2025 ✨**
1. **Extraction 2 documents** (MCP Puppeteer sites français) → 200-300 mots chacun
2. **Analyse vocabulaire** → Vérification `/00_vocabulaire/vocabulaire_master.json`
3. **Génération leçon ciblée** → 15-20 mots nouveaux + 3-5 expressions + grammaire B2
4. **Kyle étudie** 20-25 min (maîtrise textes courts mais authentiques)
5. **Exercice FORMAT RÉEL** → 2 documents + QCM dominant + questions courtes
6. **Kyle complète** en 45 min (format intégré réaliste)
7. **Correction détaillée** + analyse progression
8. **Intégration système** → Vocabulaire + erreurs trackées + export Anki

### **🎯 Avantages Système Unifié DELF B2**
- ✅ **AUTHENTICITÉ DELF 100%** : Questions, formulations, niveau, barème officiels
- ✅ **FORMAT RÉPONSE KYLE** : "Ma réponse :" pratique, pas de cases/blancs à gérer
- ✅ **Leçons intensives ciblées** : 25-30 min d'étude sur vraiment nouveau uniquement
- ✅ **Pas de redondance** : Vocabulaire acquis automatiquement exclu via système central
- ✅ **Maîtrise pré-exercice** : 95% compréhension garantie avant les questions
- ✅ **Révisions optimisées** : Anki centralisé TOUTES sessions + erreurs trackées
- ✅ **Progression mesurable** : Scores DELF comparables + Dashboard global Kyle

### **📊 RÉSULTATS ATTENDUS**
- **CE_01** : 11,5/15 (77%) → Objectif atteint
- **CE_02** : ___/25 → Format DELF officiel  
- **Objectif global** : 18-20/25 (72-80%) réguliers