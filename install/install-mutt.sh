#!/usr/bin/env bash


########
# mutt #
########
mkdir -p "$XDG_CONFIG_HOME/mutt"
ln -sf "$DOTFILES/mutt/muttrc_local" "$XDG_CONFIG_HOME/mutt"
