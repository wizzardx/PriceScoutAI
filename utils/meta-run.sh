#!/bin/bash
set -euo pipefail
set -x

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# cleanup() {
#     echo "An error occurred. Cleaning up..."
# }
# trap cleanup ERR

echo "Executing script $0 ..."
# Your commands here

# Parse command-line options
VERBOSE=false
for arg in "$@"; do
  if [[ "$arg" == "--verbose" ]]; then
    VERBOSE=true
  fi
done

# Configuration
OUTFILE=run.sh_output.md
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
BACKUP_DIR=outputs/history

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Run and capture output
{
    echo "# Project State Snapshot ($TIMESTAMP)"
    echo ""
    echo "Here's the latest output of my calling run.sh:"
} >> "$OUTFILE"
echo '```' >> "$OUTFILE"
if $VERBOSE; then
  # When verbose, display the output on the console and append it to OUTFILE
  ("$SCRIPT_DIR/run.sh" 2>&1) | tee -a "$OUTFILE" || echo "Run script failed with status $?" >> "$OUTFILE"
else
  ("$SCRIPT_DIR/run.sh" 2>&1) >> "$OUTFILE" || echo "Run script failed with status $?" >> "$OUTFILE"
fi
echo '```' >> "$OUTFILE"
echo >> "$OUTFILE"

# Add repomix output if it exists
if [ -f repomix-output.xml ]; then
    {
      echo "And here's the contents of the repomix file:";
    } >> "$OUTFILE"
    echo '```' >> "$OUTFILE"
    cat repomix-output.xml >> "$OUTFILE"
    echo '```' >> "$OUTFILE"
    echo >> "$OUTFILE"
fi

# Add instruction file if it exists
if [ -f repomix-instruction.md ]; then
    cat repomix-instruction.md >> "$OUTFILE"
fi

# Backup the output file
cp "$OUTFILE" "$BACKUP_DIR/snapshot_$TIMESTAMP.md"

echo "Created snapshot at $OUTFILE"
echo "Backup saved to $BACKUP_DIR/snapshot_$TIMESTAMP.md"
echo "Script $0 completed successfully!"
