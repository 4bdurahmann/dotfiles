# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
source "$OMARCHY_PATH/default/bash/rc"

# Add your own exports, aliases, and functions here.

alias ll='eza -lh --icons --git'
alias la='eza -a --icons'
alias lla='eza -lah --icons --git'
alias tree='eza --tree --icons'

# Fast file viewing with syntax highlighting (uses bat instead of cat)
alias cat='bat --style=plain' 

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'


alias update='yay -Syu'                     # Update system and AUR packages
alias install='yay -S'                      # Install a package
alias remove='yay -Rns'                     # Completely remove a package and its configs
alias cleanup='yay -Yc && sudo pacman -Rns $(pacman -Qtdq)' # Clean orphaned packages


alias gst='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'

# Make an alias for invoking commands you use constantly
# alias p='python'
