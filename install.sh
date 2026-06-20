#!/bin/bash

DOTFILES_DIR=$(pwd)
BACKUP_DIR="$HOME/.dotfiles_backup"

echo "Creating backup directory at $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

# A function to safely link files
safe_link() {
    local filename=$1
    
    # Check if the file already exists in the home directory and is NOT a shortcut
    if [ -f "$HOME/$filename" ] && [ ! -L "$HOME/$filename" ]; then
        echo "Saving original $filename to $BACKUP_DIR"
        mv "$HOME/$filename" "$BACKUP_DIR/"
    fi

    # Now safely create the symlink
    ln -sf "$DOTFILES_DIR/$filename" "$HOME/$filename"
}

echo "Setting up DevOps dotfiles..."
safe_link ".zshrc"
safe_link ".gitconfig"
safe_link ".vimrc"
safe_link ".tmux.conf"

# Ensure SSH folder exists and securely link ssh config
mkdir -p "$HOME/.ssh"
ln -sf "$DOTFILES_DIR/.ssh/config" "$HOME/.ssh/config"
chmod 600 "$HOME/.ssh/config" # Restrict permissions (Required by SSH)

echo "All configurations successfully linked!"