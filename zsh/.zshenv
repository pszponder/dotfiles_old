#!/usr/bin/env zsh

# =======================================================================
# This file defines environment variables loaded into ZSH shell sessions.
# It Executes before .zshrc
# =======================================================================

# +-----+
# | ZSH |
# +-----+
export ZDOTDIR="$HOME/.config/zsh" # Where to find dot-files related to zsh
export PATH="$PATH:~/.local/bin" # Needed for ZSH

export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# +-----------+
# | XDG PATHS |
# +-----------+
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export DOTFILES="$XDG_CONFIG_HOME"

# +------+
# | TMUX |
# +------+
ZSH_TMUX_CONFIG="$XDG_CONFIG_HOME/tmux/.tmux.conf"

# +----------------+
# | STARSHIP SHELL |
# +----------------+
export STARSHIP_CONFIG="$DOTFILES/starship/starship.toml" # Location of Starship Config file

# +---------------+
# | NEOVIM EDITOR |
# +---------------+
# Use neovim for any program requiring a text editor
export EDITOR="nvim"
export VISUAL="nvim"

# +-----------------------+
# | PROGRAMMING LANGUAGES |
# +-----------------------+

# # Source Rust cargo environment
# . "$HOME/.cargo/env"

# # Add golang to path
# export PATH=$PATH:/usr/local/go/bin

# # re-enable git terminal prompt
# export GIT_TERMINAL_PROMPT=1

# # BunJS -- https://bun.sh/
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"