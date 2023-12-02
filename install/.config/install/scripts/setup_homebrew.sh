#!/usr/bin/env bash

# https://brew.sh/

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Brew CLI Packages
brew install \
	git \
	neovim \
	fzf \
	ripgrep \
	bat \
	lsd \
	fd \
	procs \
	sd \
	dust \
	bottom \
	tealdeer \
	grex \
	zoxide \
	lazygit \
	git-delta \
	broot \
	skim \
	tokei \
	jq \
	xclip \
	yazi \
	starship \
	docker \
	rtx \
	httpie \
	yazi \

# # Install BunJS (https://bun.sh/docs/installation)
# brew tap oven-sh/bun
# brew install bun

# Install languages using rtx
source ./setup_rtx-polyglot.sh

# Install Brew GUI Packages (if on macOS)
case $(uname -ms) in
'Darwin x86_64')
	target=darwin-x64
	;;
'Darwin arm64')
	target=darwin-aarch64
	;;
'Linux aarch64' | 'Linux arm64')
	target=linux-aarch64
	;;
'Linux x86_64' | *)
	target=linux-x64
	;;
esac

if [[ $target = "darwin-aarch64" ]]; then
	brew install --cask \
		brave-browser \
		google-chrome \
		firefox \
		wezterm \
		kitty \
		warp \
		visual-studio-code \
		postman \
		discord \
		obsidian \
fi