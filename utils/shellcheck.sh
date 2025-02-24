#!/bin/bash
set -e

# Ensure shellcheck is installed
if ! command -v shellcheck &> /dev/null; then
    echo "Error: shellcheck is not installed. Install it with 'sudo apt install shellcheck' or 'brew install shellcheck'." >&2
    exit 1
fi

# Find all shell scripts
SCRIPTS=$(find utils/ -type f -name "*.sh")

# Run shellcheck on each script
EXIT_CODE=0
for script in $SCRIPTS; do
    echo "🔍 Checking $script..."
    shellcheck "$script" || true
done

exit $EXIT_CODE
