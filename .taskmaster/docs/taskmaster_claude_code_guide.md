# TaskMaster AI + Claude Code Configuration Guide

## Overview
This guide explains how to use TaskMaster AI with Claude Code for managing your French B2 study project.

## Initial Setup (Already Complete)
- ✅ TaskMaster initialized with `mcp__task-master-ai__initialize_project`
- ✅ Model configured: Claude Opus 4 (claude-opus-4-20250514)
- ✅ API key loaded from `/Users/kylepham/.credentials/.env`
- ✅ PRD created and tasks generated

## Essential TaskMaster Commands

### 1. View All Tasks
```
mcp__task-master-ai__get_tasks --projectRoot "/Users/kylepham/Study/French"
```
Options:
- `--status "pending"` - Filter by status (pending, in-progress, done, etc.)
- `--withSubtasks true` - Include subtasks in response

### 2. Get Next Task to Work On
```
mcp__task-master-ai__next_task --projectRoot "/Users/kylepham/Study/French"
```
This considers dependencies and suggests the most logical next task.

### 3. Update Task Status
```
mcp__task-master-ai__set_task_status --projectRoot "/Users/kylepham/Study/French" --id "1" --status "in-progress"
```
Status options: pending, in-progress, done, review, deferred, cancelled

### 4. Expand Task into Subtasks
```
mcp__task-master-ai__expand_task --projectRoot "/Users/kylepham/Study/French" --id "4" --num "5"
```
This creates subtasks for detailed implementation.

### 5. Add New Task
```
mcp__task-master-ai__add_task --projectRoot "/Users/kylepham/Study/French" --prompt "Create flashcards for irregular verbs"
```

### 6. Update Task with New Information
```
mcp__task-master-ai__update_task --projectRoot "/Users/kylepham/Study/French" --id "4" --prompt "Add focus on subjunctive mood with SI clauses"
```

### 7. Research Mode (PRIORITIZE Perplexity MCP)
```
mcp__task-master-ai__research --projectRoot "/Users/kylepham/Study/French" --query "Best methods for mastering French SI clauses" --saveToFile true
```
**Research Priority Order**:
1. **PREFERRED**: `mcp__task-master-ai__research` (Perplexity MCP with citations)
2. **Alternative**: `--research` flag with other commands (requires PERPLEXITY_API_KEY)
3. **Last Resort**: WebSearch tool (use only if Perplexity unavailable)

## Workflow Examples

### Daily Study Session
1. Check today's tasks:
   ```
   mcp__task-master-ai__next_task --projectRoot "/Users/kylepham/Study/French"
   ```

2. Mark task as in-progress:
   ```
   mcp__task-master-ai__set_task_status --projectRoot "/Users/kylepham/Study/French" --id "7" --status "in-progress"
   ```

3. Complete task and mark done:
   ```
   mcp__task-master-ai__set_task_status --projectRoot "/Users/kylepham/Study/French" --id "7" --status "done"
   ```

### Planning a Complex Task
1. View task details:
   ```
   mcp__task-master-ai__get_task --projectRoot "/Users/kylepham/Study/French" --id "4"
   ```

2. Expand into subtasks:
   ```
   mcp__task-master-ai__expand_task --projectRoot "/Users/kylepham/Study/French" --id "4" --num "6" --prompt "Break down SI clause mastery into daily practice sessions"
   ```

3. Update subtask as you progress:
   ```
   mcp__task-master-ai__update_subtask --projectRoot "/Users/kylepham/Study/French" --id "4.1" --prompt "Completed 20 exercises, no errors with present + future"
   ```

## Task Dependencies
Tasks have dependencies that ensure logical progression:
- Task 1 (B1 Assessment) must be done first
- Tasks 4 & 5 (SI clauses, Pronouns) depend on Task 3 (Error Tracking)
- Task 12 (B2 Speaking) depends on Tasks 7, 8, and 10

## Tips for Claude Code Integration

1. **Always include projectRoot**: 
   ```
   --projectRoot "/Users/kylepham/Study/French"
   ```

2. **Use task IDs from the list**: Run `get_tasks` first to see all IDs

3. **Batch operations**: Update multiple tasks with comma-separated IDs:
   ```
   --id "4,5,6" --status "in-progress"
   ```

4. **Track progress**: Use the append option to add timestamped notes:
   ```
   mcp__task-master-ai__update_task --append true --id "4" --prompt "Day 3: Still struggling with past conditional"
   ```

## Your Current Priority Tasks
Based on your assessment results, focus on:
1. Task 4: Master SI + Conditional Clauses (Critical weakness)
2. Task 5: Pronoun Order Mastery
3. Task 7: Daily Speaking Practice

## Model Configuration
Current: Claude Sonnet 4 (claude-sonnet-4-20250514)
- Model ID: `claude-sonnet-4-20250514`
- Context window: 200K tokens (~150K words)
- Maximum output: 64,000 tokens (~48K words)
- Cost: $3 input / $15 output per million tokens
- Capabilities: High intelligence, balanced performance, multilingual, vision, extended thinking
- Training cutoff: March 2025
- Best for: High-performance task generation with cost efficiency

Alternative models available:
- claude-opus-4-20250514: Maximum performance ($15/$75 per million tokens)
- claude-3-7-sonnet-20250219: Budget option ($3/$15 per million tokens)