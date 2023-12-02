#!/usr/bin/env bash

# Script to configure global Git settings

# Prompt the user for their name and email
# Should user GitHub username for user_name
# Should use GitHub's no-reply email address for user_email
read -p "Enter your Git user name: " user_name
read -p "Enter your Git email address: " user_email

# Configure Git with the provided user name and email
git config --global user.name "$user_name"
git config --global user.email "$user_email"

# Additional Configurations
git config --global core.editor nvim
# git config --global core.editor "code --wait"
git config --global core.autoCRLF input # Convert CRLF to LF on commit
git config --global color.ui true # Enable colored output in Git CLI

# Common configurations for git-delta
# https://github.com/dandavison/delta
git config --global core.pager "delta --dark"
git config --global interactive.diffFilter "delta --color-only" # Use delta for diffs
git config --global delta.syntax-theme "Dracula"
git config --global delta.line-numbers true
git config --global delta.side-by-side true
git config --global delta.zero-width-emphasys true # Use background color instead of bold text
git config --global delta.navigate true # Enable file navigation
git config --global delta.decorate-auto true # Enable file decorations

# Display the configuration for confirmation
echo "Git global configuration updated:"
git config --list --global
