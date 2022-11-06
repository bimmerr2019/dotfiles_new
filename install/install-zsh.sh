#!/usr/bin/env bash


mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

mkdir -p "$HOME/zsh_play"
[ ! -d "$HOME/zsh_play/zsh-autosuggestions" ] \
&& git clone https://github.com/zsh-users/zsh-autosuggestions \
"$HOME/zsh_play/zsh-autosuggestions"
[ ! -d "$HOME/zsh_play/zsh-syntax-highlighting" ] \
&& git clone https://github.com/zsh-users/zsh-syntax-highlighting \
"$HOME/zsh_play/zsh-syntax-highlighting"
[ ! -d "$HOME/zsh_play/zsh-z" ] \
&& git clone https://github.com/agkozak/zsh-z \
"$HOME/zsh_play/zsh-z"
[ ! -d "$HOME/QTodoTxt2" ] \
&& git clone https://github.com/QTodoTxt/QTodoTxt2 \
"$HOME/QTodoTxt2"
