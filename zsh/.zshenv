# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
# For specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
# For cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export SUDO_EDITOR="/usr/bin/nvim"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"

export CLOUD="$HOME/Cloud"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# from xdg-ninja
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=10000
# Maximum events in history file
export SAVEHIST=10000

export DOTFILES="$HOME/dotfiles"
export VIMRC="$HOME/dotfiles/nvim/init.vim"
export VIMCONFIG="$XDG_CONFIG_HOME/nvim_phantas0s"

export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export NEWT_COLORS=' window=white,white border=white,white checkbox=white,white actcheckbox=white,white' nmtui

unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

