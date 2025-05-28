#!/bin/bash

# WARNING: This script sets up configuration files by creating symlinks and backing up existing ones.
# Usage: Run this script to automatically configure your environment.

# Get the absolute path to the directory containing this script
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ensure ~/.config directory exists
mkdir -p "$HOME/.config"

###################################################################################################
## Install starship configuration

# Backup any existing starship config
if [ -e "$HOME/.config/starship.toml" ]; then
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_file="$HOME/.config/starship.toml.backup.$timestamp"
    mv "$HOME/.config/starship.toml" "$backup_file"
fi
# Create new symlink
ln -sf "$DOTFILES_DIR/starship/starship.toml" "$HOME/.config/starship.toml"

###################################################################################################
## Install bash configuration

# Backup any existing bash config and create new symlinks
for file in "$DOTFILES_DIR/bash/"*; do
    filename=$(basename "$file")
    if [ -e "$HOME/$filename" ]; then
        timestamp=$(date +%Y%m%d%H%M%S)
        mv "$HOME/$filename" "$HOME/${filename}.backup.$timestamp"
    fi
    ln -sf "$file" "$HOME/$filename"
done

###################################################################################################
## Install vim configuration

# Backup any existing vim config
if [ -e "$HOME/.vimrc" ]; then
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_file="$HOME/.vimrc.backup.$timestamp"
    mv "$HOME/.vimrc" "$backup_file"
fi
# Create new symlink
ln -sf "$DOTFILES_DIR/vim/vimrc" "$HOME/.vimrc"

###################################################################################################
## Install git configuration

# Backup any existing git config
for file in "$HOME/.gitconfig"*; do
    if [ -e "$file" ]; then
        timestamp=$(date +%Y%m%d%H%M%S)
        backup_file="${file}.backup.${timestamp}"
        mv "$file" "$backup_file"
    fi
done
# Create new symlink
ln -sf "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/git/.gitconfig-dampdigits" "$HOME/.gitconfig-dampdigits"
ln -sf "$DOTFILES_DIR/git/.gitconfig-geekygiganerd" "$HOME/.gitconfig-geekygiganerd"

###################################################################################################
## Install SSH configuration

# Backup any existing SSH config
if [ -e "$HOME/.ssh/config" ]; then
    timestamp=$(date +%Y%m%d%H%M%S)
    backup_file="$HOME/.ssh/config.backup.$timestamp"
    mv "$HOME/.ssh/config" "$backup_file"
fi
# Create new symlink
ln -sf "$DOTFILES_DIR/.ssh/config" "$HOME/.ssh/config"

###################################################################################################


# Author: dampdigits <dampdigits@gmail.com>
