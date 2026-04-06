# CE QUE / CE QUI / DONT en contexte

- status: active spot-check
- updated: 2026-04-06
- sources: `05_grammaire_supplementaire/erreurs_en_cours.json`, `sessions/2026-03-26_tcf_voc.md`, `sessions/2026-03-31_tcf_voc.md`, `data/progression_master.json`
- related pages: `fr/grammar/error-patterns/si-plus-que-parfait-conditionnel-passe.md`, `fr/questions/qcm-distractor-patterns.md`, `fr/sessions/milestones.md`

## Purpose

Canonical page for the recurring TCF-context confusion between `ce que`, `ce qui`, and `dont`.
This page exists so the contrast does not have to be reconstructed from session logs and error JSON each time.

## Canonical rule
- `ce qui` = subject of the following verb
- `ce que` = direct object of the following verb
- `dont` = complement introduced by `de`

Short repair heuristic:
- if the missing element is doing the action -> think `ce qui`
- if the verb takes a direct object -> think `ce que`
- if the structure is `de + ...` -> test `dont`

## Kyle-specific failure pattern

The main recurring problem is overusing `dont` in places where the verb actually takes a direct object.
A second recurring problem is hesitating between subject and COD in indirect or slightly more abstract phrasing.

## Observed wrong -> right patterns
- ❌ `Ce dont m'a frappé` -> ✅ `Ce qui m'a frappé`
  `Ce qui` is the subject of `a frappé`.
- ❌ `Ce n'est pas ce dont je voulais dire` -> ✅ `Ce n'est pas ce que je voulais dire`
  `Dire quelque chose` takes a direct object.
- ❌ `Je comprends ce dont vous reprochez à ce journal` -> ✅ `Je comprends ce que vous reprochez à ce journal`
  `Reprocher quelque chose à quelqu'un` calls for `ce que`, not `ce dont`.

## TCF-style examples
- `Ce qui inquiète le plus les écologistes, c'est la hausse des températures.`
- `Je comprends ce que vous voulez protéger dans ce parc naturel.`
- `Voilà un sujet dont on parle souvent sans vraiment le comprendre.`

## Safe decision tree

1. Identify the verb after the blank.
2. Ask whether the blank is the subject of that verb.
3. If not, ask whether the verb takes a direct object.
4. If the structure requires `de`, then test `dont`.

## Current mastery state
- Reappeared clearly during the 2026-03-26 VOC session.
- Validated cleanly in the 2026-03-31 warm-up.
- Current operating status: keep as a short spot-check, not as a full default drill, unless a relapse appears.

## Reuse notes
- use in `SL` warm-ups on pronoms relatifs
- link from future CE/CO/QCM distractor pages when grammar framing is the real trap
- reuse whenever a session contains abstract reporting verbs such as `dire`, `reprocher`, `comprendre`, `frapper`
