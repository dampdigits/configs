#!/bin/bash

# WARNING: This script sets up configuration files by creating symlinks and backing up existing ones.
# Usage: Run this script to automatically configure your environment.

# Get the absolute path to the directory containing this script
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure ~/.config directory exists
mkdir -p ~/.config

###################################################################################################
## Install starship configuration

# Backup any existing starship config
if [ -e ~/.config/starship.toml ]; then
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_file=~/.config/starship.toml.backup."$timestamp"
    mv ~/.config/starship.toml "$backup_file"
fi
# Create new symlink
ln -sf "$DOTFILES_DIR/starship/starship.toml" ~/.config/starship.toml

###################################################################################################
## Install bash configuration

# Backup any existing bash config and create new symlinks
for file in "$DOTFILES_DIR/bash/"*; do
    filename=$(basename "$file")
    if [ -e ~/"$filename" ]; then
        timestamp=$(date +%Y%m%d%H%M%S)
        mv ~/"$filename" ~/"${filename}.backup.$timestamp"
    fi
    ln -sf "$file" ~/"$filename"
done

###################################################################################################
## Install vim configuration

# Backup any existing vim config
if [ -e ~/.vimrc ]; then
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_file=~/.vimrc.backup."$timestamp"
    mv ~/.vimrc "$backup_file"
fi
# Create new symlink
ln -sf "$DOTFILES_DIR/vim/vimrc" ~/.vimrc


# Author: dampdigits <dampdigits@gmail.com>
