# 🗣️ PRODUCTION ORALE - Guide Spécifique DELF B2

## 📋 RÈGLES PO

### **Format DELF B2**
- 20 min préparation + 20 min passage
- Partie 1 : Exposé (10 min) + Partie 2 : Débat (10 min)
- Score cible : 16-18/25

### **Voice-Mode Obligatoire**
```python
# Configuration française obligatoire
converse(
    "Je vais simuler votre examen DELF B2...",
    voice="ff_siwis", 
    tts_provider="kokoro",
    listen_duration=120
)
```

---

## 📊 SESSION PO

### **Structure Obligatoire**
#### **1. Préparation (15 min)**
- **5 min** : Analyse document + position personnelle
- **7 min** : Plan détaillé (Intro + 2 arguments + nuance + conclusion)
- **3 min** : Mémorisation phrases clés + connecteurs oraux

#### **2. Exposé Voice-Mode (10 min)**
- **1-2 min** : Présentation document
- **6-7 min** : Développement personnel (arguments + exemples)
- **1-2 min** : Conclusion + ouverture

#### **3. Débat Voice-Mode (10 min)**
- Questions examinateur (Claude)
- Réponses spontanées Kyle
- Réactivité + interaction

#### **4. Post-Exposé (15 min)**
- Auto-évaluation ressentie
- Feedback Claude pronunciation/fluidité
- `poXX_apres_oral.md` avec analyse

---

## 🎤 TECHNIQUES VOICE

### **Connecteurs Oraux Obligatoires**
- **Transitions** : alors, donc, d'ailleurs, justement
- **Concession** : il faut reconnaître que, certes mais
- **Reformulation** : autrement dit, c'est-à-dire
- **Temporisation** : c'est une question pertinente...

### **Expressions Gain Temps**
- **Réflexion** : "C'est une question très pertinente... [pause 2-3 sec]"
- **Angle différent** : "Si je peux aborder cette question sous un autre angle..."
- **Distinction** : "Il faut distinguer plusieurs aspects ici..."

---

## 📊 INTÉGRATION DONNÉES

### **Mise à Jour Obligatoire**
```bash
# Expressions orales → vocabulaire_master.json
# Erreurs pronunciation → erreurs_en_cours.json
# Voice statistics → tracking progression
# Score estimé → data/progression_master.json
```

---

## 📝 FORMAT KYLE OBLIGATOIRE

### **Voice Session**
```markdown
# DELF B2 - PRODUCTION ORALE [Voice Session]
**Thème** : [Document/problématique]
**Durée** : 20 min préparation + 20 min passage
**Mode** : Voice conversation avec Claude

---

## DOCUMENT DÉCLENCHEUR
[Article déclencheur pour exposé]

---

## PRÉPARATION (20 min)
### Plan Exposé
**Ma préparation :**
[Notes plan - arguments - exemples]

---

## EXPOSÉ (10 min)
**[Voice conversation - enregistrement automatique]**

## DÉBAT (10 min) 
**[Voice conversation - enregistrement automatique]**

---

## AUTO-ÉVALUATION POST-VOICE
**Score auto-estimé :** ___/25
**Points forts ressentis :**
**Points faibles détectés :**
```

### **Nomenclature**
- **Leçon** : `lecon_preparatoire_po_YYYYMMDD.md`
- **Exercice** : `po[XX]_exercice_delf_b2_YYYYMMDD.md`
- **Après** : `apres_po[XX]_YYYYMMDD.md`

### **Règles Voice Strictes**
- **TOUJOURS** voice-mode simulation authentique
- **TOUJOURS** timing 20+20 minutes respecté
- **TOUJOURS** enregistrement pour playback analysis
- **TOUJOURS** French voice ff_siwis + kokoro

---

**💡 Rappel** : Phase 2 du workflow universel délègue ici