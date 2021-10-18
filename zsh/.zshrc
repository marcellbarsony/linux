# Flex on Reddit
neofetch

# History
HISTFILE=~/dotfiles/zsh/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Beep
unsetopt beep

# Bind key
bindkey -e

# GIT
autoload -U vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats 'branch %b' # Format
setopt PROMPT_SUBST
RPROMPT=\$vcs_info_msg_0_ # Prompt

# Colors
autoload -U colors && colors
# https://i.stack.imgur.com/UQVe5.png

# Prompt

#bracket1='%B%{$fg[white]%}[%'
user='%B%{%F{057}%}%n%'
at='%B%{%F{092}%}@%'
host='%B%{%F{128}%}%M'
pwd='%{%F{025}%}%~'
#bracket2='%B%{$fg[white]%}]%'
#privilege='%{$reset_color%}$%b '
chevron='%B%{$fg[blue]%}>%'

PS1="${bracket1} ${user} ${at} ${host} ${pwd} ${chevron} ${bracket2} ${privilege}"

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Vim
export EDITOR=vim

# VI mode
bindkey -v
export KEYTIMEOUT=1

# VIM bindings
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor on VI mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init

# Cursor
echo -ne '\e[5 q' # Beam cursor on startup
preexec() { echo -ne '\e[5 q' ;} # Beam cursor for new prompt

# Highlights
typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

ZSH_HIGHLIGHT_STYLES[alias]='fg=blue'
ZSH_HIGHLIGHT_STYLES[cursor]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=226'

# Source modules
for f in ~/dotfiles/zsh/zmodules/*; do source "$f"; done

# Load zsh-syntax-highlighting (should be last)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
