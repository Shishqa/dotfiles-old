[ -f "$ZDOTDIR/.zshrc" ] && source "$ZDOTDIR/.zshrc"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx 
fi
    
