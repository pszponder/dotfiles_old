# .files

My dotfile configuration

## Usage

See [Prerequisites](./README.md#prerequisites) section before installing

Clone project into your `$HOME` / `~` directory

```bash
git clone git@github.com:pszponder/dotfiles.git ~/.dotfiles
```

1. `cd` into `~/.dotfiles`
2. Run `stow` to symlink the whole repo or just a specific directory

```bash
# symlink everything from repo (except .md files)
stow */

# symlink specific directory
stow zsh # just symlink the zsh config
```

## Prerequisites

### Stow

Dotfiles are managed by [`GNU Stow`](https://www.gnu.org/software/stow/)

```bash
# Apt
sudo apt install stow

# Brew
brew install stow
```

### Fonts

Installing Fonts:
1. Download one or more fonts from the list
    1. [CaskaydiaCove Nerd Font](https://www.nerdfonts.com/font-downloads)
    2. [Comic Code](https://tosche.net/fonts/comic-code) (Will need to use `Symbols Nerd Font` as secondary for Powerline Support)
    3. [Monaspace](https://github.com/githubnext/monaspace)
    4. [JetBrains mono](https://www.jetbrains.com/lp/mono/)
    5. [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (Grab and install Symbols Nerd Font to be used for fallback when PL not integrated into language)
2. After downloading, unpack each font-family into its own directory under `~/.local/share/fonts`
3. Run `fc-cache -f` to rebuild the font cache

If you are using a font family w/o support for PowerLine fonts, you can update the `fonts.conf` file under `~/.config/fontconfig` directory. For each font family, specify the `SymbolsNerdFont` as the secondary font.

```xml
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<!-- ~/.config/fontconfig/fonts.conf -->
<fontconfig>
    <!-- Rule for ComicCode -->
    <match target="pattern">
        <test qual="any" name="family">
            <string>ComicCodeLigatures</string>
        </test>
        <edit name="family" mode="append" binding="strong">
            <string>SymbolsNerdFont</string>
        </edit>
    </match>

    <!-- Rule for JebBrainsMono -->
    <match target="pattern">
        <test qual="any" name="family">
            <string>JetBrainsMono</string>
        </test>
        <edit name="family" mode="append" binding="strong">
            <string>SymbolsNerdFont</string>
        </edit>
    </match>
</fontconfig>
```

Refer to the following video for setting up fonts in different terminals: [Elijah Manor - Effective Nerd Fonts in Multiple Terminals](https://www.youtube.com/watch?v=mQdB_kHyZn8)

To test if your font is properly installed, you can create a bash script (from Elijah's video). If the Nerd Font is properly setup, you will see the correct symbols when the script gets executed.

```bash
#!/usr/bin/env bash

# https://gist.github.com/elijahmanor/c10e5787bf9ac6b8c276e47e6745826c

smoke_tests="Normal
\033[1mBold\033[22m
\033[3mItalic\033[23m
\033[3;1mBold Italic\033[0m
\033[4mUnderline\033[24m
== === !== >= <= =>
󰐊     󰄉      󰑓 󰒲 "

printf "%b" "${smoke_tests}"
```

#### Shell tools

Refer to `setup_homebrew.sh` or `setup_nix.sh` and `setup_nix-plugins.sh` for installing tools

## Optional

### Color Themes

- [Catppuccin Theme](https://github.com/catppuccin)
- [Catppuccin Theme - Gnome Terminal](https://github.com/catppuccin/gnome-terminal)
- [Catppuccin Theme - NeoVim](https://github.com/catppuccin/nvim)

## Resources / References

Managing Dotfiles w/ GNU Stow:
- [chris@machine - Manage your dotfiles across multiple machines with GNU Stow and Git](https://www.youtube.com/watch?v=90xMTKml9O0)
- [Manage Your Dotfiles Like a Superhero](https://www.jakewiesler.com/blog/managing-dotfiles)
- [System Crafters - Managing Your Dotfiles](https://www.youtube.com/playlist?list=PLEoMzSkcN8oNB7Xm3RNKMy_vygbDlj666)
- [Atomic Object - Stow Your Dotfiles - GNU Stow for Managing Symlinks](https://spin.atomicobject.com/2014/12/26/manage-dotfiles-gnu-stow/)
- [Apiumhub - Managing Dotfiles w/ Stow](https://apiumhub.com/tech-blog-barcelona/managing-dotfiles-with-stow/)

Managing Dotfiles w/ chezmoi
- [Chris Titus - Easily Moving Linux Installs](https://www.youtube.com/watch?v=x6063EuxfEA)
- [Chris Titus Blog - Easily Moving Linux Installs](https://christitus.com/chezmoi/)
- [chris biscardi - chezmoi: Organize your ditfiles across multiple computers](https://www.youtube.com/watch?v=L_Y3s0PS_Cg)
- [chezmoi - Dotfiles Manager](https://www.chezmoi.io/)

Dotfile Examples
- [GitHub Dotfiles](https://dotfiles.github.io/)
- [Andrew Burgess - Dotfiles! Here's how I organize them](https://www.youtube.com/results?search_query=dotfiles)
- [chris@machine dotfiles](https://github.com/ChristianChiarulli/Machfiles/tree/master)
- [edheltez - dotfiles](https://github.com/edheltzel/dotfiles)
- [dt dotfiles](https://gitlab.com/dwt1/dotfiles)
- [Mathias's dotfiles](https://github.com/mathiasbynens/dotfiles)
- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
- [webpro dotfiles](https://github.com/webpro/dotfiles)
- [Jogendra - I Do Dotfiles](https://jogendra.dev/i-do-dotfiles)