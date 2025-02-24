#!/bin/bash

# 🚀 PriceScoutAI - Project Setup Script
# This script creates the full directory structure and placeholder files
# Run this inside an EMPTY project directory to initialize everything

set -e  # Exit on error
set -o pipefail  # Ensure failures propagate
set -x  # Include basic script output for debugging purposes
PROJECT_ROOT="$(pwd)"  # Assume script is run from the correct project root

# cleanup() {
#     echo "An error occurred. Cleaning up..."
# }
# trap cleanup ERR

echo "Executing script $0 ..."

# Show project state
git status
git --no-pager diff
git --no-pager diff --cached
git --no-pager whatchanged
tree -ls

# Your commands here*
"$PROJECT_ROOT/utils/shellcheck.sh"

echo "🚀 Setting up PriceScoutAI project at: $PROJECT_ROOT"

# 📝 Create AI chat logs directory & placeholder files
mkdir -p ai_logs
touch 'ai_logs/Practical Languages for HoTT.md'
touch 'ai_logs/Zig and HoTT Feasibility (1).md'
echo "📂 Created ai_logs/ and placeholder AI chat log files."

# 🏛️ Create whitepapers directory & placeholder files
mkdir -p whitepapers
touch whitepapers/AI-driven-Pricing-Validation.md
touch whitepapers/Formal-Specification-HoTT.md
touch whitepapers/Recursive-Validation-Framework.md
echo "📂 Created whitepapers/ and placeholder files."

# 📖 Create proofs directory & theorem proving files
mkdir -p proofs
touch proofs/proof.lean
touch proofs/proof.v
touch proofs/proof.agda
touch proofs/proof.idr
touch proofs/verification.log
echo "📂 Created proofs/ and placeholder proof files."

# 🛠️ Create utils directory & utility scripts
mkdir -p utils
touch utils/meta-run.sh
touch utils/run.sh
chmod +x utils/meta-run.sh utils/run.sh  # Make scripts executable
echo "📂 Created utils/ directory and initialized scripts."

# 📦 Create src directory & core AI implementation files
mkdir -p src
touch src/pricing_engine.py
touch src/verification.py
echo "📂 Created src/ and placeholder AI implementation files."

# 📖 Create docs directory & documentation files
mkdir -p docs
touch docs/README.md
touch docs/CONTRIBUTING.md
echo "📂 Created docs/ and placeholder documentation files."

# 🏗️ Create project-level setup files
touch docker-compose.yml
touch requirements.txt
touch LICENSE
echo "📂 Created project root setup files."

# Get the tree output of the current directory structure
tree -s

# Suggest that the user copy over any still-missing AI chat logs:
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
AI_LOGS_DIR="$PROJECT_DIR/ai_logs"
# DOWNLOADS_DIR="$HOME/Downloads"

echo "🚀 Checking AI logs in $AI_LOGS_DIR ..."

# List of required AI log files
REQUIRED_LOGS=(
    'Practical Languages for HoTT.md'
    'Zig and HoTT Feasibility (1).mds'
)

for file in "${REQUIRED_LOGS[@]}"; do
    if [[ ! -f "$LOG_PATH" || ! -s "$LOG_PATH" ]]; then
        echo "⚠️  Missing or empty AI log: $file"
        echo "📌 Suggested location: ~/Downloads/"
        echo "📌 Copy it manually to: $AI_LOGS_DIR/"
        continue
    fi
done

echo "✅ AI logs verified. Continuing execution..."

# ✅ Summary
echo "🎯 PriceScoutAI project structure successfully initialized!"
echo "📌 Next Steps:"
echo "1️⃣ Fill in AI logs in ai_logs/"
echo "2️⃣ Populate whitepapers/ with extracted insights"
echo "3️⃣ Implement AI-driven validation logic in src/"
echo "4️⃣ Run proof verification scripts in proofs/"

echo "Script $0 completed successfully!"

exit 0
