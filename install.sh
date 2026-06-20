#!/bin/bash

# Get the directory where this script is running
DOTFILES_DIR=$(pwd)

echo "Setting up DevOps dotfiles..."

# Create symlinks (forces replacement if files exist)
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

echo "Dotfiles linked successfully!"
echo "Please restart your terminal or type: source ~/.zshrc"


