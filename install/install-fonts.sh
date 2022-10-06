#!/usr/bin/env bash
# see https://github.com/ryanoasis/nerd-fonts#patched-fonts for many fonts


#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"
