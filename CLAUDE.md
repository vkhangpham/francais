# 🇫🇷 CLAUDE.md - Projet d'Apprentissage du Français

Guide principal pour Claude Code dans le travail avec le répertoire d'apprentissage du français de Kyle.

---

## 🎯 APERÇU DU PROJET

Répertoire d'apprentissage du français de Kyle Pham axé sur la **réussite du DELF B2**.

### **✅ Phase 1 : Grammaire Progressive Avancé (TERMINÉE)**
- **Méthode** : Grammaire Progressive du Français Avancé - **27 chapitres complétés**
- **Accomplissement** : Base grammaticale B2 consolidée (août 2025)
- **Statut** : Livre terminé avec excellents résultats

### **🔄 Phase 2 : Préparation DELF B2 (EN COURS)**
- **🎯 Objectif** : Réussite DELF B2 toutes compétences
- **📋 Approche** : Entraînement systématique par compétence
- **⏱️ Timeline** : 11 semaines (3 phases)
- **📊 Suivi** : `PROGRESSION_GLOBALE.md` + `/progression/kyle_competences_francais.md`

---

## 🚀 DÉMARRAGE RAPIDE

### **Commande de Démarrage**
```
/learn-fr
```
**→** Actions automatiques permises :
1. **Vérifier dernière session** et progression
2. **Créer journal session** via système `sessions/AAAA-MM-JJ_sujet.md`
3. **STOP** - Attendre instructions Kyle pour la suite
4. **Ne pas démarrer** pratique/exercices automatiquement

### **Signal de Fin**
```
"terminons cette séance"
```
**→** Finalise automatiquement la séance avec :
1. **Résumé + mise à jour progression**
2. **Commit git automatique** de tous les changements
3. **Push vers https://github.com/vkhangpham/francais.git**

---

## 📁 STRUCTURE PROJET (OPTIMISÉE DELF B2)

```
/Study/French/
├── 📊 PROGRESSION_GLOBALE.md           # 🔥 SUIVI UNIFIÉ COMPLET
├── 00_evaluations/                     # 🎯 Tests diagnostics + bilans
│   ├── test_diagnostic_ce.md           # Test initial Kyle (20/25)
│   ├── corrige_diagnostic_ce.md        # Correction détaillée
│   └── discussion_test_diagnostic.md   # Analyse + recommandations
├── 01_comprehension_ecrite/            # 🎯 Score cible: 18-20/25
│   ├── CLAUDE.md                       # Méthodologie + sources
│   ├── ce_01_apres_lecon.md            # 💬 Discussions + erreurs CE 01
│   ├── ce_02_apres_lecon.md            # 💬 Discussions + erreurs CE 02
│   └── ce_XX_apres_lecon.md            # 💬 Fichiers par exercice CE
├── 02_comprehension_orale/             # 🎯 Score cible: 16-18/25
│   └── CLAUDE.md                       # Prise de notes + accents
├── 03_production_ecrite/               # 🎯 Score cible: 17-20/25
│   └── CLAUDE.md                       # Structure essai argumenté
├── 04_production_orale/                # 🎯 Score cible: 16-18/25
│   ├── CLAUDE.md                       # Exposé + débat
│   └── enregistrements/                # Archive MP3 sessions
├── 05_grammaire_supplementaire/        # 🔧 Correction erreurs temps réel
│   ├── CLAUDE.md                       # Plan de remédiation
│   ├── erreurs_en_cours.json          # Base données erreurs
├── 06_vocabulaire/                     # 🔥 HUB CENTRAL UNIFIÉ
│   ├── CLAUDE.md                       # Plan acquisition optimisé
│   ├── vocabulaire_master.json         # ✨ SOURCE UNIQUE DE VÉRITÉ
│   ├── workflow_unifie.md              # Process leçons personnalisées
│   ├── anki_export.txt                 # Export Anki automatique
│   └── progression_hebdomadaire.md     # Stats globales centralisées
│   └── fiche_modele.md                # Template nouvelles erreurs
├── revisions/                          # 📚 Archive Grammaire Progressive
│   ├── CLAUDE.md                       # → Voir workflow historique détaillé
│   └── grammaire_progressive_avance/   # 27 chapitres complétés
└── progression/                        # Suivi historique général
    └── kyle_competences_francais.md    # Forces/faiblesses détaillées
```

---

## ⚡ WORKFLOW PRINCIPAL DELF B2

### **🏋️ PRATIQUE FAIBLESSES OBLIGATOIRE (30-60min)**
**AVANT TOUTE SÉANCE** - Système de fichiers d'exercices personnalisés

#### **📚 Hub Central Vocabulaire**
- **Source unique** : `06_vocabulaire/vocabulaire_master.json`
- **Coordination** : Vocab CE/CO/PE/PO intégré automatiquement  
- **Révisions** : Anki export + repetition système
- **Objectif** : 15-20 mots par séance (basés sur LEÇON PRÉPARATOIRE + post-exercice Kyle)

#### **🔧 Grammaire Personnalisée - FAIBLESSE CRITIQUE KYLE**
- **Source** : `05_grammaire_supplementaire/erreurs_en_cours.json`
- **⚠️ FOCUS PRIORITAIRE** : **CONJUGAISON + CHOIX DU TEMPS** (faiblesse identifiée Kyle)
- **Erreurs critiques** : Imparfait/PC, Subjonctif/Indicatif, les pronoms (personnels, demonstratifs, relatifs, neutres, indéfinis, etc.), corrections récentes
- **Validation** : 15/20 minimum pour continuer
- **Révisions Grammaire Progressive** : Chapitres 4 (Temps), 17-19 (Pronoms), 5-6 (Subjonctif/Conditionnel)

#### **🎯 SYSTÈME CRÉATION FICHIERS EXERCICES (NOUVEAU)**

##### **Format Obligatoire des Fichiers**
```
06_vocabulaire/exercice_vocab_[source]_AAAAMMJJ.md
05_grammaire_supplementaire/exercice_[focus]_AAAAMMJJ.md
```

##### **Processus de Création (Basé sur @revisions/CLAUDE.md)**
1. **Vocabulaire** :
   - Créer `06_vocabulaire/exercice_vocab_ce0X_AAAAMMJJ.md`
   - 20 mots de la dernière séance CE/CO/PE/PO
   - 3 blocs thématiques + auto-correction
   - Mini-production écrite bonus (5 points)

2. **Grammaire Avancée** :
   - Créer `05_grammaire_supplementaire/exercice_[focus]_AAAAMMJJ.md`
   - **PRIORITÉ ABSOLUE** : Conjugaison + choix temps
   - Basé sur erreurs RÉELLES détectées dans dernière session
   - Révisions ciblées Grammaire Progressive (Chapitres concernés)
   - Score minimum 15/20 obligatoire

##### **Structure Type Exercice Grammaire** 
```markdown
## 🎯 PARTIE A : CORRECTIONS ERREURS [SESSION] (8 points)
## 🎯 PARTIE B : CONJUGAISON/TEMPS - Révision Chapitre X (6 points) 
## 🎯 PARTIE C : [POINT FAIBLE] - Révision Chapitres Y-Z (6 points)
```

##### **⚠️ FOCUS CONJUGAISON/TEMPS - Kyle**
**Exercices OBLIGATOIRES à chaque pratique faiblesses** :
- **Imparfait vs Passé composé** (Chapitre 4) - Aspect duratif vs ponctuel
- **Subjonctif vs Indicatif** - Selon connecteurs (parce que vs bien que)
- **Choix temps selon expressions** (soudain, autrefois, hier matin, etc.)
- **Concordance des temps** - Révision si erreurs détectées
- **Verbes irréguliers** - Conjugaison selon contexte

#### **🎯 Orchestration Intelligente**
- **Pas de redondance** : Vocab déjà acquis exclu automatiquement
- **Leçons personnalisées** : Générées selon acquis RÉELS Kyle (dernière séance)
- **Exercices ciblés** : Conjugaison/temps selon faiblesses SPÉCIFIQUES Kyle
- **Progression trackée** : Dashboard unifié tous apprentissages
- **Intégration temps réel** : Erreurs détectées → système central

### **📋 SESSIONS COMPÉTENCES SPÉCIFIQUES**

### **📋 Phase 1 : Diagnostic et Familiarisation (Semaines 1-3)**
1. **Semaine 1** : ✅ **Tests blancs** toutes compétences → **COMPLÉTÉ** (Kyle 20/25 CE)
2. **Semaine 2** : ✅ **Analyse résultats** + plan personnalisé → **EN COURS** (CE 02: 17/25 ✅)
3. **Semaine 3** : ✅ **Techniques de base** par compétence

### **🎯 Phase 2 : Entraînement Intensif (Semaines 4-9)**
- **Lun/Mer/Ven** : Compréhensions (CE/CO alternées)
- **Mar/Jeu** : Productions (PE/PO alternées)
- **Sam** : Révision vocabulaire + grammaire ciblée
- **Dim** : Repos ou rattrapage
- **🎯 Objectif quotidien** : **15-20 mots nouveaux** + correction erreurs

### **⚡ Phase 3 : Examens Blancs (Semaines 10-11)**
- **3 examens blancs complets** en conditions réelles
- **Correction détaillée** avec barème officiel
- **Ajustements finaux** selon résultats

### **🔄 SYSTÈME UNIFIÉ VOCABULAIRE + LEÇONS (NOUVEAU) ✨**
1. **📚 Hub Central** : `/00_vocabulaire/vocabulaire_master.json` = Source unique vérité
2. **🎯 Leçons personnalisées** : Générées selon acquis Kyle (pas de redondance)
3. **📱 Export Anki automatique** : Révisions optimisées toutes sessions
4. **📊 Progression trackée** : Dashboard unifié apprentissages
5. **🔧 Grammaire intégrée** : Détection erreurs → système central

---

## 🎯 OBJECTIFS DELF B2

### **🏆 Scores Cibles**
| Compétence | Score Cible | Seuil Minimum |
|------------|-------------|---------------|
| **🔍 Compréhension Écrite** | **18-20**/25 | 12.5/25 |
| **🎧 Compréhension Orale** | **16-18**/25 | 12.5/25 |
| **✍️ Production Écrite** | **17-20**/25 | 12.5/25 |
| **🗣️ Production Orale** | **16-18**/25 | 12.5/25 |
| **📊 TOTAL** | **65-75**/100 | **50**/100 |

### **⚡ Objectifs Quotidiens**
- ✅ **20 mots nouveaux** par séance (toutes compétences)
- ✅ **Correction immédiate** des erreurs détectées
- ✅ **1h30-2h** d'entraînement DELF quotidien

### **🎨 Préférences d'Apprentissage**
- ✅ **Exercices grammaticaux purs** (QCM, transformations, corrections)
- ❌ **Pas de production longue** ou justifications détaillées
- ✅ **Correction immédiate** avec explications brèves (1-2 phrases max)
- ✅ **Progression systématique** plutôt que perfectionnement

---

## 🔧 PHILOSOPHIE DE CORRECTION

### **⚡ RÈGLE UNIVERSELLE OBLIGATOIRE**
**🚨 CORRECTION SYSTÉMATIQUE TOUTES CONVERSATIONS** 
- **TOUJOURS corriger TOUTES les erreurs** de Kyle dans CHAQUE message
- **S'applique à TOUTES les sessions** : CE, CO, PE, PO, discussions, planning
- **Aucune exception** : erreurs grammaticales, vocabulaire, orthographe
- **Système automatique** : correction + alternative naturelle + explication brève
- **Obligation pédagogique** : Kyle DOIT être corrigé pour progresser

### **💬 Format Corrections Conversation OBLIGATOIRE**
```
❌ erreur → ✅ correction
📝 2-3 alternatives plus naturelles
💡 Explication brève (1-2 phrases max)
🎯 Usage pratique > règles théoriques
```

### **⚡ Règles de Base**
- **🔍 Identifier TOUTES les erreurs** immédiatement
- **✅ Fournir corrections exactes** avec règles
- **🎯 Être sévère mais constructif**
- **💡 Accepter arguments logiques** dans l'évaluation
- **📈 Focus sur progression** plutôt que perfection

### **🔍 Flexibilité d'Évaluation**
- **🟢 Tolérer** : Fautes de frappe, distractions momentanées
- **🟡 Signaler** : Erreurs mineures sans sur-pénalisation
- **🔴 Corriger** : Erreurs significatives avec mise en évidence
- **💎 Clarifier** : Points subtils avec sources quand flexibilité permise

---

## 📊 SYSTÈME DE SUIVI

### **📝 GESTION JOURNAL (SYSTÈME LOCAL)**
- **Journal local** : `sessions/YYYY-MM-DD_sujet.md`
- **Modèle** : Utiliser `modele_session.md`
- **Heure système** : `$(date '+%Y-%m-%d %H:%M')` (jamais inventée)
- **Structure complète** : Faiblesses + session + résultats + planning
- **Instructions détaillées** : Voir `systeme_journal.md`

### **📊 FICHIERS PROGRESSION - MODE D'EMPLOI**
**Instructions détaillées** : Voir `guide_fichiers_progression.md`

1. **`PROGRESSION_GLOBALE.md`** :
   - **Dashboard unifié** : Vue d'ensemble + planning 11 semaines
   - **Update après session** : Scores + vocab + erreurs critiques
   - **Métriques globales** : Progression vers objectifs DELF B2

2. **`progression/kyle_competences_francais.md`** :
   - **Analyse détaillée** : Points forts/faibles par domaine  
   - **Update temps réel** : Nouvelles erreurs + corrections
   - **Notes sessions** : Observations pédagogiques complètes

### **🔄 Pendant Chaque Séance**
1. **📚 Vocabulaire nouveau** → `00_vocabulaire/vocabulaire_master.json`
2. **🔧 Erreurs détectées** → `05_grammaire_supplementaire/erreurs_en_cours.json`
3. **📊 Scores obtenus** → Journal + `PROGRESSION_GLOBALE.md`
4. **🧠 Concepts abordés** → `progression/kyle_competences_francais.md`
5. **💬 Discussions CE** → Fichier post-exercice spécifique

### **📈 Après Chaque Séance**
1. **📝 Résumé automatique** dans journal session local `sessions/AAAA-MM-JJ_sujet.md`
2. **🔄 Mise à jour** `PROGRESSION_GLOBALE.md` avec scores/vocab/erreurs
3. **📊 Statistiques** détaillées dans `kyle_competences_francais.md`
4. **🎯 Planification** prochaine séance selon résultats

---

## 🎛️ COMMANDES UTILES

### **Task Master Integration**
```bash
# Voir tâches actuelles
task-master list

# Compléter une séance
task-master set-status --id=[X.X] --status=done

# Notes de progression  
task-master update-subtask --id=[X.X] --prompt="Score: XX/25, Vocab: XX/20, Erreurs: [liste]"
```

### **📚 SYSTÈME CE POST-EXERCICES (OBLIGATOIRE)**
```bash
# Fichiers automatiques par exercice CE
01_comprehension_ecrite/ce_XX_post_lesson.md
```

**SAUVEGARDE AUTOMATIQUE SANS RAPPEL** :
1. **Pendant la leçon** : Vocab/structures que Kyle demande d'expliquer
2. **Pendant exercices** : Questions de Kyle sur points non clairs
3. **Après correction** : Analyse erreurs + pourquoi Kyle s'est trompé
4. **Enrichissement continu** : Ajout discussions/clarifications temps réel

**FORMAT TYPE** :
```
# CE XX - Post-Exercice Lessons

## 📚 Questions pendant la leçon
- [Timestamp] Kyle: "Question vocab/structure"
- [Réponse] + exemples + contexte

## 🤔 Clarifications pendant exercices  
- [Point confus] + explication détaillée

## ❌ Analyse erreurs après correction
- [Erreur] → [Cause probable] → [Stratégie évitement]
```

### **🗣️ Mode Vocal Français**
- **Quand Kyle demande parler/prononcer** → Mode vocal français automatique
- **Production orale** → Parler français + TOUJOURS attendre réponse Kyle

### **🔍 RECHERCHE ET INVESTIGATION**
**ORDRE DE PRIORITÉ POUR TOUTE RECHERCHE** :
1. **PRIORITÉ 1** : `mcp__task-master-ai__research` (Perplexity MCP avec citations)
2. **PRIORITÉ 2** : Commandes TaskMaster avec `--research` flag 
3. **DERNIERS RECOURS** : WebSearch (seulement si Perplexity indisponible)

**Exemples d'usage Perplexity MCP** :
- Méthodologies d'apprentissage français
- Techniques DELF B2 spécifiques  
- Recherches grammaticales approfondies
- Stratégies de mémorisation vocabulaire
- Ressources pédagogiques actualisées

---

## 📚 RESSOURCES DISPONIBLES

### **Livres de Grammaire**
- **Avancé** : `~/Study/books/Grammaire Progressive Du Francais Avance.pdf`
- **B2** : `~/Study/books/Grammaire Essentielle du Francais B2/`
- **B1** : `~/Study/books/Grammaire essentielle du français B1...`

### **Ressources Vocabulaire**
- **B2** : `~/Study/books/vocabulaire progressive b2/`
- **Expressions** : `~/Study/books/198 French Phrases and expressions.pdf`

---

## ⚠️ NOTES IMPORTANTES

### **🎯 Priorités Actuelles DELF B2**
1. **🔍 Pratique faiblesses** : Exercices basés sur acquis RÉELS Kyle (CE 02)
2. **📚 Vocabulaire acquis** : Révision mots spécifiques dernière séance
3. **🔧 Conjugaison ciblée** : Imparfait/PC, CE QUE/QUI, corrections erreurs
4. **🏆 Objectif final** : 65-75/100 au DELF B2

### **✅ Transition de Phase Réussie**
- **📚 Phase précédente** : Grammaire Progressive → **27 chapitres terminés ✅**
- **🎯 Phase actuelle** : Préparation DELF B2 systématique
- **📈 Progression > Perfection** : 15/20 suffit pour continuer
- **🔄 Documentation** : Toute session journalisée automatiquement

### **🔧 Workflow Historique**
**📎 Référence complète** → Voir `/revisions/CLAUDE.md` pour méthodologie détaillée création leçons Grammaire Progressive (27 chapitres complétés)

---

## 🎯 PROCHAINES ÉTAPES

**Phase actuelle** : Diagnostic et Familiarisation (Semaine 2)
**Action immédiate** : Pratique faiblesses personnalisée (vocab CE 02 + conjugaison ciblée)

**💡 Pour démarrer** : Tapez simplement `/learn-fr`
