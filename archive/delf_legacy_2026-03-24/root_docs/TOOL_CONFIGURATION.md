# 🛠️ TOOL CONFIGURATION GUIDE - MCP Servers & APIs

**Purpose**: Detailed configuration for all external tools and MCP servers  
**Target**: System administrators and advanced users  
**Last Updated**: August 2025

---

## 🎯 OVERVIEW

The French DELF B2 system integrates multiple MCP (Model Context Protocol) servers to automate content sourcing, data processing, and workflow management. This guide provides complete configuration details for each component.

---

## 🔧 MCP SERVERS - COMPLETE CONFIGURATION

### **Claude Code MCP Configuration File**

Location: `~/.config/claude-code/mcp_servers.json` (or equivalent)

```json
{
  "mcpServers": {
    "perplexity-mcp": {
      "command": "mcp-server-perplexity",
      "args": [],
      "env": {
        "PERPLEXITY_API_KEY": "${PERPLEXITY_API_KEY}"
      },
      "description": "Web search and research for authentic French content"
    },
    "mcp-server-firecrawl": {
      "command": "npx",
      "args": ["-y", "@mendable/firecrawl-mcp"],
      "env": {
        "FIRECRAWL_API_KEY": "${FIRECRAWL_API_KEY}"
      },
      "description": "Content extraction from French news sites (Le Monde, Le Figaro)"
    },
    "sequential-thinking": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-sequential-thinking"],
      "description": "Complex problem planning and session structure"
    },
    "filesystem": {
      "command": "npx", 
      "args": ["-y", "@modelcontextprotocol/server-filesystem"],
      "env": {
        "MCP_FILESYSTEM_ALLOWED_DIRECTORIES": "${HOME}/Study"
      },
      "description": "File operations within study directory"
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "${GITHUB_TOKEN}"
      },
      "description": "Git operations and progress backup"
    }
  }
}
```

---

## 🔑 API KEYS & CREDENTIALS

### **Required API Keys**

#### **1. Perplexity AI API**
- **Purpose**: Web search for authentic French content
- **Signup**: [https://perplexity.ai/settings/api](https://perplexity.ai/settings/api)
- **Cost**: ~$0.005 per search query
- **Monthly Budget**: ~$10-15 for intensive study

**Environment Variable Setup:**
```bash
# Add to ~/.bashrc or ~/.zshrc
export PERPLEXITY_API_KEY="pplx-your-api-key-here"

# Or create .env file in project root
echo "PERPLEXITY_API_KEY=pplx-your-api-key-here" >> ~/.env
```

#### **2. Firecrawl API**
- **Purpose**: Content extraction from French news websites
- **Signup**: [https://firecrawl.dev/app](https://firecrawl.dev/app)
- **Cost**: ~$0.002 per page extraction
- **Monthly Budget**: ~$5-10 for daily article extraction

**Environment Variable Setup:**
```bash
export FIRECRAWL_API_KEY="fc-your-api-key-here"
```

#### **3. GitHub Personal Access Token (Optional)**
- **Purpose**: Automated git commits and progress backup
- **Setup**: GitHub Settings → Developer Settings → Personal Access Tokens
- **Permissions**: `repo`, `workflow`

```bash
export GITHUB_TOKEN="ghp_your-token-here"
```

### **API Key Security**

Create a secure environment file:

```bash
# Create secure .env file
cat > ~/.config/claude-code/.env << 'EOF'
PERPLEXITY_API_KEY=pplx-your-actual-key
FIRECRAWL_API_KEY=fc-your-actual-key  
GITHUB_TOKEN=ghp_your-actual-token
EOF

# Secure permissions
chmod 600 ~/.config/claude-code/.env

# Source in shell profile
echo "source ~/.config/claude-code/.env" >> ~/.bashrc
```

---

## 🌐 TOOL-SPECIFIC CONFIGURATIONS

### **Perplexity MCP - Search Configuration**

**Default Search Parameters:**
```json
{
  "recency": "week",
  "lang": "fr",
  "country": "fr", 
  "max_results": 5
}
```

**Common Search Queries for French Content:**
```bash
# Society themes
"articles français société éducation site:lemonde.fr OR site:lefigaro.fr"

# Economy themes  
"économie France travail emploi site:lesechos.fr"

# Environment themes
"environnement climat France développement durable"

# Culture themes
"culture française arts spectacles site:telerama.fr"
```

### **Firecrawl MCP - Extraction Configuration**

**Optimal Settings for French News Sites:**
```json
{
  "formats": ["markdown"],
  "onlyMainContent": true,
  "removeBase64Images": true,
  "waitFor": 2000,
  "timeout": 30000
}
```

**Supported French News Sources:**
- **Le Monde** (`lemonde.fr`) - ✅ Full support
- **Le Figaro** (`lefigaro.fr`) - ✅ Full support  
- **L'Express** (`lexpress.fr`) - ✅ Full support
- **Libération** (`liberation.fr`) - ✅ Full support
- **Les Échos** (`lesechos.fr`) - ✅ Full support
- **France 24** (`france24.com`) - ✅ Full support

### **Sequential Thinking MCP - Session Planning**

**Typical Session Structure Planning:**
```json
{
  "thought": "Plan comprehensive CE session with weakness practice",
  "nextThoughtNeeded": true,
  "thoughtNumber": 1,
  "totalThoughts": 5
}
```

---

## 📊 DATA INTEGRATION CONFIGURATIONS

### **JSON Schema Validation**

**vocabulaire_master.json Schema:**
```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "properties": {
    "metadata": {
      "type": "object",
      "required": ["created", "total_words", "target_delf_b2"]
    },
    "words": {
      "type": "array", 
      "items": {
        "type": "object",
        "required": ["mot", "definition", "competence", "date_acquisition"],
        "properties": {
          "mot": {"type": "string"},
          "definition": {"type": "string"},
          "competence": {"enum": ["CE", "CO", "PE", "PO"]},
          "niveau_maitrise": {"type": "number", "minimum": 0, "maximum": 1}
        }
      }
    }
  }
}
```

**erreurs_en_cours.json Schema:**
```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "properties": {
    "errors": {
      "type": "array",
      "items": {
        "required": ["id", "erreur_kyle", "correction", "type", "competence"],
        "properties": {
          "gravite": {"enum": ["critique", "importante", "mineure"]},
          "statut": {"enum": ["detecte", "en_cours", "resolu"]},
          "frequence": {"type": "integer", "minimum": 1}
        }
      }
    }
  }
}
```

### **Automated Data Processing Scripts**

**Vocabulary Processing:**
```bash
#!/bin/bash
# File: scripts/process_vocabulary.sh

# Validate JSON structure
jq '.' 06_vocabulaire/vocabulaire_master.json > /dev/null || {
    echo "❌ Invalid JSON structure in vocabulaire_master.json"
    exit 1
}

# Update statistics
jq '.statistics.by_competence = (.words | group_by(.competence) | map({key: .[0].competence, value: length}) | from_entries)' 06_vocabulaire/vocabulaire_master.json > tmp.json && mv tmp.json 06_vocabulaire/vocabulaire_master.json

echo "✅ Vocabulary statistics updated"
```

**Error Tracking Processing:**
```bash
#!/bin/bash
# File: scripts/process_errors.sh

# Calculate progression scores
jq '.errors = [.errors[] | . + {progression: (if .nb_corrections > 0 then (.nb_corrections / (.frequence + .nb_corrections)) else 0 end)}]' 05_grammaire_supplementaire/erreurs_en_cours.json > tmp.json && mv tmp.json 05_grammaire_supplementaire/erreurs_en_cours.json

echo "✅ Error progression scores calculated"
```

---

## ⚙️ WORKFLOW AUTOMATION

### **Session Automation Scripts**

**Pre-Session Setup:**
```bash
#!/bin/bash
# File: scripts/pre_session.sh

echo "🚀 Preparing session environment..."

# Validate all JSON files
for file in data/progression_master.json 06_vocabulaire/vocabulaire_master.json 05_grammaire_supplementaire/erreurs_en_cours.json; do
    jq '.' "$file" > /dev/null || {
        echo "❌ Invalid JSON: $file"  
        exit 1
    }
done

# Check MCP server connectivity
echo "Testing MCP servers..."
# Add specific connectivity tests here

# Update session counter
jq '.cumulative_stats.total_sessions += 1' data/progression_master.json > tmp.json && mv tmp.json data/progression_master.json

echo "✅ Session environment ready"
```

**Post-Session Cleanup:**
```bash
#!/bin/bash
# File: scripts/post_session.sh

echo "📊 Processing session data..."

# Export Anki cards from new vocabulary
jq -r '.words[] | select(.date_acquisition == "'$(date +%Y-%m-%d)'") | .mot + ";" + .definition + ";" + (.exemples[0] // "") + ";" + .competence' 06_vocabulaire/vocabulaire_master.json > exports/anki_$(date +%Y%m%d).csv

# Generate progress report
echo "Session $(date +%Y-%m-%d) completed" >> logs/session_log.txt

# Auto-commit if git configured
if git rev-parse --git-dir > /dev/null 2>&1; then
    git add -A
    git commit -m "Session $(date +%Y-%m-%d): Auto-commit post-session data"
fi

echo "✅ Session data processed and backed up"
```

### **Automated Exports**

**Anki Export Configuration:**
```bash
# Export vocabulary for Anki import
export_anki_vocab() {
    jq -r '.words[] | select(.niveau_maitrise < 0.7) | 
    .mot + ";" + 
    .definition + "<br><b>Contexte:</b> " + .contexte_acquisition + 
    "<br><b>Exemples:</b> " + (.exemples | join("; ")) + 
    ";" + .competence + 
    ";" + (.niveau_maitrise * 100 | tostring) + "%"' \
    06_vocabulaire/vocabulaire_master.json > exports/anki_vocabulary_$(date +%Y%m%d).csv
}
```

---

## 🔍 MONITORING & DEBUGGING

### **Health Check Scripts**

**System Health Check:**
```bash
#!/bin/bash
# File: scripts/health_check.sh

echo "🔍 Running system health check..."

# Check API key availability
[ -n "$PERPLEXITY_API_KEY" ] && echo "✅ Perplexity API key configured" || echo "❌ Missing Perplexity API key"
[ -n "$FIRECRAWL_API_KEY" ] && echo "✅ Firecrawl API key configured" || echo "❌ Missing Firecrawl API key"

# Check data integrity
jq '.words | length' 06_vocabulaire/vocabulaire_master.json > /dev/null && echo "✅ Vocabulary data valid"
jq '.errors | length' 05_grammaire_supplementaire/erreurs_en_cours.json > /dev/null && echo "✅ Error tracking data valid"

# Check disk space
available_space=$(df -h . | tail -1 | awk '{print $4}')
echo "💾 Available space: $available_space"

# Check recent session activity
recent_sessions=$(ls -1 sessions/*.md 2>/dev/null | wc -l)
echo "📊 Total sessions logged: $recent_sessions"

echo "🏁 Health check completed"
```

**Performance Monitoring:**
```bash
#!/bin/bash
# File: scripts/performance_monitor.sh

# Calculate vocabulary acquisition rate
vocab_rate=$(jq '.words | map(select(.date_acquisition >= "'$(date -d '7 days ago' +%Y-%m-%d)'")) | length' 06_vocabulaire/vocabulaire_master.json)
echo "📈 Vocabulary acquired (7 days): $vocab_rate words"

# Calculate error resolution rate  
resolved_errors=$(jq '.errors | map(select(.statut == "resolu" and .date >= "'$(date -d '7 days ago' +%Y-%m-%d)'")) | length' 05_grammaire_supplementaire/erreurs_en_cours.json)
echo "🔧 Errors resolved (7 days): $resolved_errors"

# Calculate session frequency
recent_sessions=$(find sessions -name "*.md" -mtime -7 | wc -l)
echo "🎯 Sessions completed (7 days): $recent_sessions"
```

---

## 🚨 TROUBLESHOOTING GUIDE

### **Common Issues**

#### **MCP Server Connection Failures**
```bash
# Debug MCP server status
echo "Debugging MCP servers..."

# Test Perplexity
curl -H "Authorization: Bearer $PERPLEXITY_API_KEY" https://api.perplexity.ai/chat/completions || echo "❌ Perplexity connection failed"

# Test Firecrawl  
curl -H "Authorization: Bearer $FIRECRAWL_API_KEY" https://api.firecrawl.dev/v0/crawl || echo "❌ Firecrawl connection failed"
```

#### **JSON Corruption Recovery**
```bash
# Backup and repair JSON files
backup_and_repair_json() {
    local file="$1"
    cp "$file" "${file}.backup.$(date +%Y%m%d_%H%M%S)"
    
    if jq '.' "$file" > /dev/null 2>&1; then
        echo "✅ $file is valid"
    else
        echo "❌ $file is corrupted, restoring from git"
        git checkout HEAD -- "$file"
    fi
}

# Repair all JSON files
backup_and_repair_json "data/progression_master.json"
backup_and_repair_json "06_vocabulaire/vocabulaire_master.json" 
backup_and_repair_json "05_grammaire_supplementaire/erreurs_en_cours.json"
```

#### **Performance Optimization**
```bash
# Clean up large files
find sessions -name "*.md" -mtime +30 -exec gzip {} \;

# Optimize JSON files (remove duplicates)
jq 'unique_by(.mot)' 06_vocabulaire/vocabulaire_master.json > tmp.json && mv tmp.json 06_vocabulaire/vocabulaire_master.json
```

---

## 📋 MAINTENANCE SCHEDULE

### **Daily (Automated)**
- JSON data validation
- Session backup
- Performance metrics collection

### **Weekly (Manual)**  
- API usage review
- Health check script execution
- Git repository cleanup

### **Monthly (Manual)**
- API key rotation (if required)
- Complete system backup
- Performance optimization
- Documentation updates

---

## 🔐 SECURITY CONSIDERATIONS

### **API Key Protection**
- Store in secure environment files only
- Never commit to version control
- Rotate keys monthly
- Monitor usage for anomalies

### **Data Privacy**
- Personal study data stays local
- Optional git backup to private repositories only
- Secure file permissions on all configuration files

---

**✅ Configuration Complete**: All tools and MCP servers are now properly configured for optimal French DELF B2 study system performance!