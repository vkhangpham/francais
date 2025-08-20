# 🚀 SETUP GUIDE - French DELF B2 Study System

**Version**: 1.0  
**Last Updated**: August 2025  
**Purpose**: Complete system setup and recovery guide

---

## 📋 SYSTEM OVERVIEW

This setup guide covers the complete French DELF B2 study system installation and configuration. The system integrates multiple components:
- **Automated workflow** with 3-phase session structure
- **Real-time data tracking** with JSON analytics  
- **MCP tool integration** for content sourcing
- **Git-based progress tracking** and backup

---

## 🎯 PREREQUISITES 

### **Required Software**
- **Claude Code CLI** with MCP server support
- **Git** (for version control and progress tracking)
- **jq** (for JSON data manipulation)
- **Node.js** (for some MCP server operations)
- **Python** (optional, for advanced analytics)

### **Required MCP Servers**
- **Perplexity MCP** - Web search and research
- **Firecrawl MCP** - Content extraction from French news sites
- **Sequential Thinking MCP** - Complex problem planning
- **File System MCP** - File operations
- **GitHub MCP** - Version control integration

### **Knowledge Requirements**
- Basic command line operations
- Understanding of JSON file structure
- Git basics (add, commit, push)

---

## 🔧 INSTALLATION STEPS

### **Step 1: Directory Structure Setup**

Create the complete directory structure:

```bash
mkdir -p ~/Study/French/{00_evaluations,01_comprehension_ecrite/{articles_sources},02_comprehension_orale,03_production_ecrite,04_production_orale/{enregistrements,transcriptions,methodes,exercices},05_grammaire_supplementaire,06_vocabulaire,data,revisions/grammaire_progressive_avance,sessions,progression}

# Verify structure
tree ~/Study/French -L 2
```

### **Step 2: Core Documentation Files**

Initialize essential documentation files:

```bash
cd ~/Study/French

# Core workflow files (if not present)
touch CLAUDE.md GUIDE_EXERCICES_FAIBLESSES.md PROGRESSION_GLOBALE.md README.md

# Data tracking files  
touch data/progression_master.json
touch 05_grammaire_supplementaire/erreurs_en_cours.json
touch 06_vocabulaire/vocabulaire_master.json
```

### **Step 3: Initialize JSON Data Files**

Create initial JSON structure for data tracking:

```bash
# Initialize progression_master.json
cat > data/progression_master.json << 'EOF'
{
  "current_week": 1,
  "current_phase": "Entraînement Intensif", 
  "total_weeks": 11,
  "start_date": "2025-08-08",
  "current_focus": "CE",
  "sessions": {},
  "cumulative_stats": {
    "total_sessions": 0,
    "total_vocabulary": 0,
    "total_errors_fixed": 0,
    "average_daily_time": 0,
    "ce_average": null,
    "co_average": null,
    "pe_average": null,
    "po_average": null
  }
}
EOF

# Initialize vocabulaire_master.json
cat > 06_vocabulaire/vocabulaire_master.json << 'EOF'
{
  "metadata": {
    "created": "$(date +%Y-%m-%d)",
    "last_updated": "$(date +%Y-%m-%d)",
    "total_words": 0,
    "target_delf_b2": 2000,
    "version": "1.0"
  },
  "statistics": {
    "by_competence": {
      "CE": 0, "CO": 0, "PE": 0, "PO": 0
    },
    "by_domain": {
      "société": 0, "économie": 0, "environnement": 0, "culture": 0, "santé": 0
    }
  },
  "words": []
}
EOF

# Initialize erreurs_en_cours.json
cat > 05_grammaire_supplementaire/erreurs_en_cours.json << 'EOF'
{
  "metadata": {
    "created": "$(date +%Y-%m-%d)",
    "last_updated": "$(date +%Y-%m-%d)", 
    "total_errors_detected": 0,
    "critical_errors_remaining": 0,
    "version": "1.0"
  },
  "error_categories": {
    "critiques": {
      "si_conditionnel": [],
      "imparfait_pc": [],
      "subjonctif_indicatif": []
    },
    "importantes": {},
    "mineures": {}
  },
  "errors": []
}
EOF
```

---

## ⚙️ MCP SERVER CONFIGURATION

### **Required MCP Servers Setup**

Each MCP server must be configured in your Claude Code settings:

#### **1. Perplexity MCP**
```json
{
  "name": "perplexity-mcp",
  "command": "mcp-server-perplexity",
  "args": [],
  "env": {
    "PERPLEXITY_API_KEY": "your-api-key-here"
  }
}
```

#### **2. Firecrawl MCP** 
```json
{
  "name": "mcp-server-firecrawl",
  "command": "npx",
  "args": ["-y", "@mendable/firecrawl-mcp"],
  "env": {
    "FIRECRAWL_API_KEY": "your-firecrawl-key"
  }
}
```

#### **3. Sequential Thinking MCP**
```json
{
  "name": "sequential-thinking",
  "command": "mcp-server-sequential-thinking", 
  "args": []
}
```

#### **4. File System MCP**
```json
{
  "name": "filesystem", 
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-filesystem"],
  "env": {
    "MCP_FILESYSTEM_ALLOWED_DIRECTORIES": "~/Study"
  }
}
```

### **API Keys Required**
- **Perplexity API Key**: [https://perplexity.ai/settings/api](https://perplexity.ai/settings/api)
- **Firecrawl API Key**: [https://firecrawl.dev/app](https://firecrawl.dev/app)

---

## 📚 CONTENT INITIALIZATION

### **Step 4: Reference Books Setup**

Ensure reference materials are accessible:

```bash
# Verify book paths exist
ls -la ~/Study/books/
# Expected:
# - "Grammaire Progressive Du Francais Avance.pdf"
# - "Grammaire Essentielle du Francais B2/"  
# - "vocabulaire progressive b2/"
# - "198 French Phrases and expressions.pdf"
```

### **Step 5: Git Repository Initialization**

Set up version control and backup:

```bash
cd ~/Study/French

# Initialize git repository
git init

# Create .gitignore
cat > .gitignore << 'EOF'
# Temporary files
*.tmp
*~

# System files  
.DS_Store
Thumbs.db

# Personal notes (optional)
notes_personnelles/

# API keys or sensitive configs
.env
config.local.json
EOF

# Initial commit
git add .
git commit -m "Initial French DELF B2 system setup

- Complete directory structure
- Core documentation files
- JSON data tracking initialized
- MCP server configuration ready"

# Optional: Add remote repository
# git remote add origin https://github.com/yourusername/french-study.git
# git push -u origin main
```

---

## ✅ VERIFICATION & TESTING

### **Step 6: System Verification**

Test all components to ensure proper setup:

```bash
# Test JSON file validity
echo "Testing JSON files..."
jq '.' data/progression_master.json > /dev/null && echo "✅ progression_master.json valid"
jq '.' 06_vocabulaire/vocabulaire_master.json > /dev/null && echo "✅ vocabulaire_master.json valid" 
jq '.' 05_grammaire_supplementaire/erreurs_en_cours.json > /dev/null && echo "✅ erreurs_en_cours.json valid"

# Test directory structure
echo "Testing directory structure..."
[ -d "01_comprehension_ecrite" ] && echo "✅ CE directory exists"
[ -d "02_comprehension_orale" ] && echo "✅ CO directory exists"  
[ -d "03_production_ecrite" ] && echo "✅ PE directory exists"
[ -d "04_production_orale" ] && echo "✅ PO directory exists"
[ -d "data" ] && echo "✅ Data directory exists"

# Test core documentation
echo "Testing core documentation..."
[ -f "CLAUDE.md" ] && echo "✅ CLAUDE.md exists"
[ -f "README.md" ] && echo "✅ README.md exists"
[ -f "GUIDE_EXERCICES_FAIBLESSES.md" ] && echo "✅ GUIDE_EXERCICES_FAIBLESSES.md exists"

# Test Git
echo "Testing Git setup..."
git status > /dev/null && echo "✅ Git repository active"
```

### **Step 7: MCP Server Testing**

Test MCP server connectivity (run in Claude Code):

```bash
# Test Perplexity
mcp__perplexity-mcp__perplexity_search_web({"query": "test"})

# Test Firecrawl  
mcp__mcp-server-firecrawl__firecrawl_scrape({"url": "https://example.com"})

# Test Sequential Thinking
mcp__sequential-thinking__sequentialthinking({"thought": "Testing setup", "nextThoughtNeeded": false, "thoughtNumber": 1, "totalThoughts": 1})

# Test File System
mcp__filesystem__list_directory({"path": "~/Study/French"})
```

---

## 🚀 FIRST SESSION SETUP

### **Step 8: Ready for First Session**

Once setup is complete, you can start your first session:

```bash
cd ~/Study/French

# Launch Claude Code in this directory
claude-code

# In Claude Code, run:
/learn-fr
```

The system will:
1. **Guide you through skill selection** (CE/CO/PE/PO)
2. **Execute Phase 1** - Weakness practice (auto-generated)
3. **Execute Phase 2** - Main skill practice  
4. **Execute Phase 3** - Data integration and tracking

---

## 🔧 TROUBLESHOOTING

### **Common Issues & Solutions**

#### **JSON Parsing Errors**
```bash
# Validate and fix JSON syntax
jq '.' data/progression_master.json
# If error, check for trailing commas, missing quotes
```

#### **MCP Server Connection Issues**
- Verify API keys are set correctly
- Check MCP server configuration in Claude Code settings
- Restart Claude Code after configuration changes

#### **Git Issues**  
```bash
# Reset git if needed
git reset --hard HEAD
git clean -fd
```

#### **Directory Permission Issues**
```bash
# Fix permissions
chmod -R 755 ~/Study/French
```

#### **Missing Dependencies**
```bash
# Install jq (macOS)
brew install jq

# Install Node.js dependencies
npm install -g @mendable/firecrawl-mcp
```

---

## 🔄 BACKUP & RECOVERY

### **Backup Procedure**
```bash
# Create timestamped backup
cd ~/Study
tar -czf "French_backup_$(date +%Y%m%d_%H%M).tar.gz" French/

# Git-based backup (if remote configured)
cd ~/Study/French
git add -A
git commit -m "Backup $(date +%Y-%m-%d)"
git push origin main
```

### **Recovery Procedure**
```bash
# From backup archive
cd ~/Study  
tar -xzf French_backup_YYYYMMDD_HHMM.tar.gz

# From git repository
git clone https://github.com/yourusername/french-study.git French
cd French
# Re-run MCP server setup
```

---

## 📋 POST-SETUP CHECKLIST

- [ ] Directory structure created and verified
- [ ] JSON data files initialized and valid
- [ ] Git repository initialized with proper .gitignore
- [ ] MCP servers configured with valid API keys
- [ ] Reference books accessible at expected paths
- [ ] First test session completed successfully
- [ ] Backup procedure tested and documented
- [ ] System verification script run without errors

---

## 📖 NEXT STEPS

After successful setup:

1. **Read [CLAUDE.md](CLAUDE.md)** - Main workflow guide
2. **Run first `/learn-fr` session** to test complete system  
3. **Familiarize with [GUIDE_EXERCICES_FAIBLESSES.md](GUIDE_EXERCICES_FAIBLESSES.md)**
4. **Monitor [PROGRESSION_GLOBALE.md](PROGRESSION_GLOBALE.md)** for progress tracking

---

**🎯 System Ready**: Your French DELF B2 study system is now configured and ready for intensive training sessions!