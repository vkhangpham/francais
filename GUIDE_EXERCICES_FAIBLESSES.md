# 🏋️ GUIDE CRÉATION EXERCICES FAIBLESSES

**Guide complet pour Phase 1 des sessions DELF B2**  
**Durée** : 30 minutes avant chaque session principale  
**Intégration** : Données centralisées + tracking automatique

---

## 📋 VUE D'ENSEMBLE ENHANCED

### **Structure Phase 1 (30 min)**
- **10 min** : Conjugaison/Temps avancé (20 points)
- **10 min** : Vocabulaire révision (20-30 mots)
- **10 min** : Erreurs récentes patterns

### **Objectif Global**
- Seuil minimum : **15/20** pour continuer
- Révision ciblée faiblesses Kyle
- Variété quotidienne (jamais répétitif)
- Challenge B2+ vers C1
- **Tracking automatique** → `data/progression_master.json`

### **🔗 Intégration Workflow Centralisé**
#### **Pré-Exercices : Diagnostic Data (2 min)**
```bash
# Vérification données base avant exercices
jq 'length' 06_vocabulaire/vocabulaire_master.json  # Nombre total mots
jq '.[] | select(.statut == "en_cours") | length' 05_grammaire_supplementaire/erreurs_en_cours.json  # Erreurs actives
ls -1 sessions/2025-*.md | wc -l  # Sessions totales
```

#### **Post-Exercices : Mise à Jour Auto (3 min)**
```bash
# Tracking performance Phase 1 immédiat
echo "Phase1_$(date +%Y%m%d): Conjugaison=$score1/20, Vocab=$score2, Erreurs=$corrections" >> data/phase1_tracking.log

# Mise à jour niveau maîtrise si amélioration
jq '.[] | if .mot == "$mot_révisé" then .niveau_maitrise += 0.1 else . end' 06_vocabulaire/vocabulaire_master.json
```

---

## 🎯 EXERCICE CONJUGAISON/TEMPS AVANCÉ

### **Format Standard (20 questions = 20 points)**

#### **PARTIE A : Conjugaison Créative (5 points)**
**Verbes aléatoires → Phrases contextuelles utiles**

**Méthode de création** :
```bash
# 1. Sélection verbes complexes (éviter être/avoir/aller)
verbes_pool = [accomplir, résoudre, convaincre, se plaindre, s'inquiéter, 
               entreprendre, contraindre, parcourir, reconnaître, satisfaire...]

# 2. Temps imposés (rotation quotidienne)
temps_avances = [conditionnel passé, subjonctif imparfait, passé antérieur,
                 gérondif, participe présent/passé, concordance complexe]

# 3. Contextes utiles
contextes = [professionnel, relationnel, culturel, académique, social]
```

**Exemple type** :
```
1. ACCOMPLIR (conditionnel passé) → Contexte professionnel
   "Si j'_______ ce projet à temps, j'aurais obtenu la promotion."

2. SE PLAINDRE (subjonctif présent) → Contexte relationnel  
   "Il faut qu'elle _______ moins de ses collègues."
```

#### **PARTIE B : Maîtrise Temps Complexes - Paragraphe (5 points)**
**Paragraphe 150 mots à compléter**

**Thèmes quotidiens (rotation)** :
- **Lundi** : Politique/société
- **Mardi** : Culture/arts
- **Mercredi** : Sciences/technologies  
- **Jeudi** : Économie/travail
- **Vendredi** : Environnement/futur

**Temps obligatoires à intégrer** :
- Passé simple (récit littéraire)
- Conditionnel passé (regrets/hypothèses)
- Subjonctif imparfait (style soutenu)
- Concordance rigoureuse

**Structure type** :
```
"L'année dernière, le gouvernement _______ (adopter, passé simple) une loi
controversée. Si les citoyens _______ (être informé, plus-que-parfait) des
conséquences, ils _______ (réagir, conditionnel passé) différemment. 
Bien qu'il _______ (falloir, subjonctif imparfait) plus de transparence..."
```

#### **PARTIE C : Pronoms Multiples (5 points)**
**Tous types confondus - exercices à trous**

**Types obligatoires** :
- **Relatifs** : qui, que, dont, où, lequel, duquel, auquel...
- **Indéfinis** : chacun, plusieurs, quelques-uns, certains, d'autres...
- **Démonstratifs** : celui-ci, celle-là, ceux, celles...
- **Neutres** : il (impersonnel), ce, cela, ça
- **Composés** : celui qui, ce dont, celui que...
- **Doubles** : le lui, la leur, les y, leur en...

**Exemples types** :
```
1. _______ livre est _______ ? (démonstratif + interrogatif)
   → "Ce livre est à qui ?"

2. Les personnes _______ tu parlais sont _______ (relatif + indéfini)
   → "Les personnes dont tu parlais sont parties."

3. Elle _______ _______ donne souvent (double COD/COI)
   → "Elle le lui donne souvent."
```

#### **PARTIE D : Chapitre Aléatoire Grammaire Progressive (5 points)**
**Sélection automatique + lecture fichier obligatoire**

**Algorithme sélection** :
```bash
# 1. Génération aléatoire (éviter répétition)
random_chapter = random(1, 27) excluding last_3_used_chapters

# 2. Lecture obligatoire du fichier
file_path = "~/Study/French/revisions/grammaire_progressive_avance/lecon_{chapter}.md"
content = Read(file_path)

# 3. Tracking chapitres utilisés
last_used_chapters = [store in session or temp file]
```

**Méthode création exercices** :
1. **Analyser structure leçon** du fichier lu
2. **Identifier points grammaticaux** spécifiques du chapitre
3. **Créer 5 exercices variés** selon contenu EXACT
4. **Adapter niveau Kyle** (plus difficile que livre original)
5. **Intégrer exemples** authentiques du chapitre

**Format type** :
```
📚 CHAPITRE [X] : [TITRE EXACT DU FICHIER]

[5 exercices basés sur le contenu spécifique du chapitre]
1. [Exercice point grammatical 1]
2. [Exercice point grammatical 2] 
3. [Transformation selon règle chapitre]
4. [Application contexte B2+]
5. [Synthèse chapitre niveau avancé]
```

---

## 📚 RÉVISION VOCABULAIRE STRATÉGIQUE (10 min)

### **Base Sessions Récentes Réelles + Analytics**

#### **Méthode de sélection enhanced** :
```bash
# 1. Identifier vocabulaire faible avec contexte
jq '.[] | select(.niveau_maitrise < 0.7) | {mot: .mot, niveau: .niveau_maitrise, competence: .competence, contexte: .contexte_acquisition}' 06_vocabulaire/vocabulaire_master.json

# 2. Analyser 3 dernières sessions par compétence
ls -t sessions/2025-*_ce*.md | head -1  # Dernière CE
ls -t sessions/2025-*_pe*.md | head -1  # Dernière PE
ls -t sessions/2025-*_co*.md | head -1  # Dernière CO
ls -t sessions/2025-*_po*.md | head -1  # Dernière PO

# 3. Priorité révision selon fréquence erreurs
jq 'group_by(.mot) | map({mot: .[0].mot, erreurs_count: length}) | sort_by(.erreurs_count) | reverse' 05_grammaire_supplementaire/erreurs_en_cours.json

# 4. Éviter sur-révision mots acquis
jq '.[] | select(.niveau_maitrise > 0.85 and (.date | frozenset | contains(["2025-08"]))' 06_vocabulaire/vocabulaire_master.json
```

#### **Stratégie Révision Intelligente**
- **Priorité 1** : Mots < 50% maîtrise (révision obligatoire)
- **Priorité 2** : Mots 50-70% maîtrise (consolidation)
- **Priorité 3** : Expressions récentes sessions (renforcement)
- **Exclusion** : Mots > 85% maîtrise vus dans les 7 derniers jours

#### **Structure révision** :
```markdown
## 📚 RÉVISION VOCABULAIRE

### Bloc 1 : Mots Session [Date] ([Compétence]) - 10 mots
1. "néanmoins" → Contexte: [phrase exacte session] → Définition?
2. "dilemme cornélien" → Usage: _______ → Synonyme?
[...mots authentiques dernière session]

### Bloc 2 : Mots Faible Maîtrise (<70%) - 10 mots
[...mots selon vocabulaire_master.json]

### Bloc 3 : Expressions Session Récente - 5-10 expressions
[...expressions idiomatiques des dernières sessions]

### Auto-Correction + Export Anki
```

---

## 🔧 CORRECTION ERREURS PATTERNS ADVANCED (10 min)

### **Base Données Erreurs + Machine Learning Patterns**

#### **Analyse patterns enhanced** :
```bash
# 1. Erreurs actives par compétence et fréquence
jq '.[] | select(.statut == "en_cours") | {id: .id, type: .type, competence: .competence, frequence: .frequence, derniere_occurrence: .date}' 05_grammaire_supplementaire/erreurs_en_cours.json

# 2. Top 5 patterns les plus critiques
jq 'group_by(.type) | map({type: .[0].type, count: length, avg_frequence: (map(.frequence) | add / length)}) | sort_by(.avg_frequence) | reverse | .[0:5]' 05_grammaire_supplementaire/erreurs_en_cours.json

# 3. Erreurs récurrentes par compétence spécifique
jq '.[] | select(.competence == "CE" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json
jq '.[] | select(.competence == "PE" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json

# 4. Timeline erreurs pour identifier tendances
jq '.[] | select(.statut == "en_cours") | {semaine: (.date[0:7]), type: .type}' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s 'group_by(.semaine)'
```

#### **Stratégie Correction Prédictive**
- **Patterns A** : Erreurs >3 occurrences (exercices intensifs)
- **Patterns B** : Erreurs nouvelles <7 jours (prévention)
- **Patterns C** : Erreurs spécifiques compétence (contextualisées)
- **ML Learning** : Anticiper erreurs futures selon historique

#### **Structure exercices** :
```markdown
## 🔧 CORRECTION ERREURS RÉCENTES

### Type 1 : [Pattern fréquent Kyle] (Ex: Pronoms personnels)
- Erreur récurrente: "Je leurs ai dit" → "Je leur ai dit"
- Exercice: 5 phrases similaires pattern
- Focus spécifique: [selon erreur documentée]

### Type 2 : [Autre pattern] (Ex: Accord participes)
- Erreur récurrente: [selon erreurs_en_cours.json]
- Exercice ciblé: [transformation/correction]
- Règle rappel: [référence chapitre]

### Auto-correction + Mise à jour statut erreurs
```

### **🔧 FORMAT RÉPONSES KYLE OBLIGATOIRE**
**IMPORTANT**: Tous exercices doivent inclure espaces vides pour réponses Kyle, comme format CE :
```markdown
1. Question exemple ?
**Ma réponse :** 

2. Transformation : Il pleut → Hier, ...
**Ma réponse :** 

3. Choix multiple (a, b, c) ?
**Ma réponse :** 
```

**JAMAIS de lignes avec tirets/underscores préremplis**

---

## ✅ CRITÈRES QUALITÉ EXERCICES

### **Standards Obligatoires**
- ✅ **Créativité maximale** (verbes/contextes inattendus)
- ✅ **Difficulté B2+ à C1** (challenge permanent Kyle)
- ✅ **Variété quotidienne** (jamais répétitif)
- ✅ **Intégration livre** (contenu authentique Grammaire Progressive)
- ✅ **Basé données réelles** (vocabulaire/erreurs Kyle)
- ✅ **Contextualisation** (phrases utiles, pas artificielles)

### **Seuils de Performance**
- **Conjugaison/Temps** : 15/20 minimum pour continuer
- **Vocabulaire** : 80% rétention pour validation
- **Erreurs** : Correction immédiate avec explications
- **Progression** : Tracking automatique toutes données

### **Formats de Correction**
```
❌ [erreur] → ✅ [correction]
💡 [Explication brève 1-2 phrases]
📖 [Référence chapitre si applicable]
```

---

## 📊 DASHBOARD PHASE 1 PERFORMANCE

### **Métriques Temps Réel**
#### **Commandes Diagnostic Instantané**
```bash
# Performance conjugaison dernière semaine
grep "Conjugaison" data/phase1_tracking.log | tail -7 | awk -F'=' '{print $2}' | awk -F'/' '{sum += $1; count++} END {print "Moyenne: " sum/count "/20"}

# Vocabulaire progression (mots passés >70% maîtrise)
jq '.[] | select(.niveau_maitrise > 0.7 and .niveau_maitrise <= 0.85)' 06_vocabulaire/vocabulaire_master.json | jq length

# Erreurs résolues ce mois
jq '.[] | select(.statut == "resolu" and (.date | startswith("2025-08")))' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length

# Taux réussite Phase 1 (objectif 15/20)
grep "Phase1_" data/phase1_tracking.log | tail -10 | awk -F'=' '{if ($2 >= 15) success++; total++} END {print "Taux réussite: " (success/total)*100 "%"}'
```

### **Alertes Automatiques**
#### **Seuils d'Intervention**
```bash
# ALERTE : Score conjugaison <15/20 pendant 3 sessions
if [ $(grep "Conjugaison" data/phase1_tracking.log | tail -3 | awk -F'=' '{if ($2 < 15) count++} END {print count}') -eq 3 ]; then
    echo "🚨 ALERTE: Révision conjugaison urgente - 3 échecs consécutifs"
fi

# ALERTE : Plus de 20 erreurs actives
if [ $(jq '.[] | select(.statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq -s length) -gt 20 ]; then
    echo "🚨 ALERTE: Trop d'erreurs actives (>20) - Session correction intensive"
fi

# ALERTE : Stagnation vocabulaire (aucun progrès >70% depuis 5 jours)
if [ $(jq '.[] | select(.niveau_maitrise > 0.7 and (.date | . > "2025-08-10"))' 06_vocabulaire/vocabulaire_master.json | jq length) -eq 0 ]; then
    echo "🚨 ALERTE: Stagnation vocabulaire - Intensifier révisions"
fi
```

### **Recommandations IA**
#### **Suggestions Automatiques**
```bash
# Recommandation focus conjugaison
echo "💡 FOCUS SUGGÉRÉ:"
if [ $(jq '.[] | select(.type == "conjugaison" and .statut == "en_cours")' 05_grammaire_supplementaire/erreurs_en_cours.json | jq length) -gt 5 ]; then
    echo "- Conjugaison: Révision intensive temps composés"
fi

# Recommandation vocabulaire par compétence
echo "- Vocabulaire priorité:"
jq -r '.[] | select(.niveau_maitrise < 0.5) | "  * " + .mot + " (" + .competence + ") - " + (.niveau_maitrise * 100 | tostring) + "%"' 06_vocabulaire/vocabulaire_master.json | head -5

# Recommandation chapitre Grammaire Progressive
echo "- Chapitre recommandé Grammaire Progressive: $(shuf -i 1-27 -n 1)"
```

### **Export Anki Automatique**
```bash
# Génération cartes Anki vocabulaire faible
jq -r '.[] | select(.niveau_maitrise < 0.7) | .mot + ";" + .definition + ";" + (.exemples[0] // "") + ";" + .competence' 06_vocabulaire/vocabulaire_master.json > exports/anki_vocab_faible_$(date +%Y%m%d).csv

# Génération cartes conjugaison erreurs récurrentes
jq -r '.[] | select(.type == "conjugaison" and .statut == "en_cours") | .erreur + ";" + .correction + ";" + .explication + ";Conjugaison"' 05_grammaire_supplementaire/erreurs_en_cours.json > exports/anki_conjugaison_$(date +%Y%m%d).csv
```

---

## 🎯 INTEGRATION TOTALE WORKFLOW

### **Liaison avec Compétences Principales**
- **Phase 1 → CE** : Vocabulaire activé avant lecture articles
- **Phase 1 → CO** : Expressions orales révisées avant écoute
- **Phase 1 → PE** : Conjugaisons complexes maîtrisées avant rédaction
- **Phase 1 → PO** : Connecteurs argumentatifs fluides avant exposé

### **Feedback Loop Automatique**
```bash
# Après chaque Phase 1, mise à jour données
# Après chaque session principale, analyse erreurs détectées
# Fin de journée : consolidation metrics + recommandations lendemain
# Fin de semaine : rapport performance + ajustements stratégiques
```

---

## 📝 FORMATS FICHIERS STANDARDISÉS

### **📋 Format Questions - OBLIGATOIRE**
**Basé sur format préféré Kyle :** [ce04_exercice_delf_b2.md](01_comprehension_ecrite/ce04_exercice_delf_b2.md)

#### **Structure Question QCM**
```markdown
**X.** [Question text] :
- A. [Option A]
- B. [Option B]
- C. [Option C]
- D. [Option D]

**Ma réponse :**

---
```

#### **Structure Question Ouverte**
```markdown
**X.** [Question text]

**Ma réponse :**

---
```

#### **Structure Exercice Transformation**
```markdown
**X.** Transformez la phrase en utilisant [instruction]:
"[Phrase originale]"

**Ma réponse :**

---
```

### **📁 Nomenclature Fichiers**

#### **Phase 1 - Exercices Faiblesses**
- **Conjugaison** : `05_grammaire_supplementaire/exercice_conjugaison_[competence]_YYYYMMDD.md`
- **Vocabulaire** : `06_vocabulaire/exercice_vocab_[competence]XX_YYYYMMDD.md`
- **Erreurs** : `05_grammaire_supplementaire/exercice_erreurs_[type]_YYYYMMDD.md`

#### **Phase 2 - Leçons Préparatoires**
- **CE** : `01_comprehension_ecrite/lecon_preparatoire_ce_YYYYMMDD.md`
- **CO** : `02_comprehension_orale/lecon_preparatoire_co_YYYYMMDD.md`
- **PE** : `03_production_ecrite/lecon_preparatoire_pe_YYYYMMDD.md`
- **PO** : `04_production_orale/lecon_preparatoire_po_YYYYMMDD.md`

#### **Phase 2 - Exercices Principaux**
- **Format** : `[competence]/[competence]XX_exercice_delf_b2_YYYYMMDD.md`
- **Exemple** : `01_comprehension_ecrite/ce05_exercice_delf_b2_20250816.md`

#### **Phase 3 - Après-Leçon**
- **Format** : `[competence]/apres_[competence]XX_YYYYMMDD.md`
- **Exemple** : `01_comprehension_ecrite/apres_ce05_20250816.md`

### **📖 Structure Leçon Préparatoire**

#### **Template Standard (10 min)**
```markdown
# 📚 LEÇON PRÉPARATOIRE - [COMPÉTENCE] [XX]
**Date** : [YYYY-MM-DD]  
**Durée** : 10 minutes  
**Thème** : [Thème de la session]

---

## 🎯 OBJECTIF
Préparer les outils linguistiques nécessaires pour [exercice principal]

---

## A. [Premier élément - ex: Vocabulaire Thématique] (4 min)

**1.** [mot/expression] → [définition simple]
**Contexte :** [phrase d'usage]

**Ma note :**

---

**2.** [mot/expression] → [définition simple]
**Contexte :** [phrase d'usage]

**Ma note :**

---

[...continuer format identique]

## B. [Deuxième élément - ex: Connecteurs] (3 min)

[...même format que section A]

## C. [Troisième élément - ex: Structures] (3 min)

[...même format que section A]

---

## ✅ VALIDATION PRÉPARATION
- [ ] Vocabulaire clé mémorisé
- [ ] Connecteurs identifiés
- [ ] Structures comprises
- [ ] Prêt pour exercice principal

**Temps total :** _____ minutes
```

### **📝 Structure Après-Leçon**

#### **Template Standard (15 min)**
```markdown
# 📊 APRÈS-LEÇON - [COMPÉTENCE] [XX]
**Date** : [YYYY-MM-DD]  
**Durée** : 15 minutes  
**Score** : XX/25

---

## 📈 RÉSULTATS
- **Score obtenu** : XX/25 (XX%)
- **Objectif atteint** : ✅/❌ (Seuil Kyle : 16-18/25)
- **Temps utilisé** : XX minutes
- **Difficulté ressentie** : [1-5]/5

---

## ✅ POINTS FORTS
1. [Point fort identifié]
2. [Point fort identifié]
3. [Point fort identifié]

## ❌ POINTS FAIBLES
1. [Point faible identifié] → **Action** : [correction nécessaire]
2. [Point faible identifié] → **Action** : [correction nécessaire]
3. [Point faible identifié] → **Action** : [correction nécessaire]

---

## 📚 VOCABULAIRE ACQUIS ([X] mots)
1. **[mot]** → [définition] → [contexte session]
2. **[mot]** → [définition] → [contexte session]
[...continuer]

## 🔧 ERREURS DÉTECTÉES ([X] erreurs)
1. **Erreur** : [erreur Kyle] → **Correction** : [correction] → **Règle** : [explication]
2. **Erreur** : [erreur Kyle] → **Correction** : [correction] → **Règle** : [explication]
[...continuer]

---

## 📋 INTÉGRATION DONNÉES
```bash
# Mise à jour vocabulaire_master.json
[X] mots ajoutés avec contexte session

# Mise à jour erreurs_en_cours.json  
[X] erreurs ajoutées/mises à jour avec fréquence

# Mise à jour progression_master.json
Score XX/25 enregistré pour [COMPETENCE]
```

## 🎯 RECOMMANDATIONS PROCHAINE SESSION
1. [Recommandation basée sur faiblesses détectées]
2. [Recommandation basée sur progression]
3. [Recommandation basée sur objectifs DELF B2]

---

**Prochaine session recommandée** : [COMPETENCE] focus sur [points faibles identifiés]
```

### **🔧 Règles Format Strictes**
1. **TOUJOURS** utiliser `**Ma réponse :**` (jamais "Réponse:", "Answer:", etc.)
2. **TOUJOURS** laisser ligne vide après questions pour réponse Kyle
3. **TOUJOURS** utiliser séparateur `---` entre questions
4. **TOUJOURS** respecter nomenclature fichiers exacte
5. **TOUJOURS** inclure durée et score dans headers
6. **JAMAIS** créer exercices sans sections Ma réponse prévues

---

**💡 Retour workflow principal** : [CLAUDE.md](CLAUDE.md) Phase 2 - Compétence sélectionnée avec faiblesses corrigées