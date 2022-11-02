#!/usr/bin/env bash
mkdir -p $HOME/.newsboat
ln -sf "$DOTFILES/newsboat/urls" "$HOME/.newsboat"
ln -sf "$DOTFILES/newsboat/config" "$HOME/.newsboat"
