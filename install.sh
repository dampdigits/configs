#!/bin/bash

# Get the absolute path to the directory containing this script
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Symlink starship config
ln -sf "$DOTFILES/starship.toml" ~/.config/starship.toml
