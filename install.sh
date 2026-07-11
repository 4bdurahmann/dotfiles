#!/bin/bash
set -euo pipefail

# dotfiles installer using GNU Stow
# Usage: ./install.sh [package...]
#   With no arguments, lists available packages and prompts.
#   With arguments, only stows those packages.

STOW_DIR="$(cd "$(dirname "$0")" && pwd)"

if ! command -v stow &>/dev/null; then
  echo "Error: GNU Stow is required. Install it with your package manager."
  echo "  Arch:  sudo pacman -S stow"
  echo "  macOS: brew install stow"
  echo "  Debian: sudo apt install stow"
  exit 1
fi

PACKAGES=($(ls -d */ 2>/dev/null | sed 's|/$||' | grep -v '^\.'))

if [ ${#PACKAGES[@]} -eq 0 ]; then
  echo "No packages found in $STOW_DIR"
  exit 1
fi

if [ $# -eq 0 ]; then
  echo "Available dotfile packages:"
  for pkg in "${PACKAGES[@]}"; do
    echo "  - $pkg"
  done
  echo ""
  echo "Usage: $0 <package...>"
  echo "  Install all:  $0 ${PACKAGES[*]}"
  echo "  Selectively:  $0 hypr waybar kitty"
  exit 0
fi

for pkg in "$@"; do
  if [ ! -d "$STOW_DIR/$pkg" ]; then
    echo "Warning: Package '$pkg' not found, skipping"
    continue
  fi
  echo "Stowing $pkg..."
  stow -d "$STOW_DIR" -t "$HOME" "$pkg"
done

echo "Done!"
