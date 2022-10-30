#!/usr/bin/env bash


mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"
mkdir -p "$HOME/play"
[ ! -d "$HOME/play/zsh-autosuggestions" ] \
&& git clone https://github.com/zsh-users/zsh-autosuggestions \
"$HOME/play"
[ ! -d "$HOME/play/zsh-syntax-highlighting" ] \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting \
"$HOME/play"
