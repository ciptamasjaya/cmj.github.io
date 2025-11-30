#!/bin/bash
#
# Install git hooks
# Run: bash scripts/hooks/install.sh
#

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
GIT_HOOKS_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)/.git/hooks"

echo "Installing git hooks..."

# Copy pre-commit hook
cp "$SCRIPT_DIR/pre-commit" "$GIT_HOOKS_DIR/pre-commit"
chmod +x "$GIT_HOOKS_DIR/pre-commit"

echo "Done! Hooks installed to $GIT_HOOKS_DIR"
echo ""
echo "To enable propagator on commit, edit scripts/robots-config.yml:"
echo "  hooks.propagate_on_commit: true"
