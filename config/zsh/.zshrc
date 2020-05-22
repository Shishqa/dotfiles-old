# Lines configured by zsh-newuser-install
HISTFILE=$ZDOTDIR/history
HISTSIZE=500
SAVEHIST=100

local git_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
git_branch=${git_branch//\%/%%}

autoload -U colors && colors
PROMPT="%F{blue}%2~ %F{green}${git_branch}%f
%B%F{%(?.green.red)}%(!.#.>)%f%b "
RPROMPT="%F{yellow}%T (%?)%f"

unsetopt beep

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Load aliases and shortcuts if existent.
[ -f "$ZDOTDIR/aliasrc" ] && source "$ZDOTDIR/aliasrc"

plugins=(zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=239"


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
