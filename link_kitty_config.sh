#!/bin/bash

set -euo pipefail

# Get the full path of the dir containing this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

NVIM_DIR="$SCRIPT_DIR/kitty"
HOME_DIR="$HOME"

# Create the symlink
ln -s "$NVIM_DIR" "$HOME_DIR/.config/kitty"

