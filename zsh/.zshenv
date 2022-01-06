# Default programs
export TERMINAL="alacritty"
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="Librewolf"
export WM="leftwm"

# XDG paths
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"

# Paths
export ZDOTDIR="$HOME/.config/zsh/"
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export XINITRC="$HOME/.config/xorg/"
# export GIT_CONFIG="#$XDG_CONFIG_HOME/git/config"
# export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
export STARSHIP_CONFIG=~/.config/starship/config.toml
set viminfofile=$XDG_CONFIG_HOME/nvim/viminfo

# Cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH=/home/marci/.local/share/cargo/bin:$PATH
#path+=('$HOME/.local/bin')
#path+=('$HOME/.local/share/cargo/bin')
#export PATH

# Scripts
export PATH=$HOME/.config/dmenu_rs:$PATH

# Fix zsh prompt issue
export LC_CTYPE=en_US.UTF-8

# Disable files
export LESSHISTFILE=-

