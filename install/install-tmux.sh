#!/usr/bin/env bash



########
# tmux #
########

mkdir -p "$XDG_CONFIG_HOME/tmux"
#ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

[ ! -d "$XDG_CONFIG_HOME/tmux/plugins" ] \
&& git clone https://github.com/tmux-plugins/tpm \
"$XDG_CONFIG_HOME/tmux/plugins/tpm"
ln -s "$DOTFILES/tmuxp" "$XDG_CONFIG_HOME"

[ ! -d "$HOME/.tmux" ] \
&& git clone https://github.com/gpakosz/.tmux \
"$HOME/.tmux" \
&& ln -s -f "$HOME/.tmux/.tmux.conf" "$HOME" \
&& ln -s "$DOTFILES/tmux/.tmux.conf.local" "$HOME"
