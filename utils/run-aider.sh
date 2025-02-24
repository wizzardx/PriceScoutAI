#!/bin/bash
set -e
rye add aider-install
rye run aider-install
which aider
aider \
    --model openrouter/anthropic/claude-3.5-sonnet \
    --no-gitignore \
    --architect \
    --no-browser \
    --no-multiline \
    --detect-urls \
    --editor kwrite
