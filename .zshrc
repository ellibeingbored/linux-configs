
autoload -U promptinit; promptinit
prompt pure

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export SYSTEMD_EDITOR=nvim
export VISUAL=nvim

# ZSH_THEME="gentoo"

plugins=(
	fzf
	git
	history-substring-search
	colored-man-pages 
	zsh-autosuggestions 
	zsh-syntax-highlighting 
	zsh-z)

source $ZSH/oh-my-zsh.sh

alias ohmyzsh="mate ~/.oh-my-zsh"


# XDG_CONFIG_HOME
export XDG_CONFIG_HOME=/home/eliash/.config

# sonstiges
alias stories="/home/eliash/Documents/stories"
alias open="xdg-open $1"
alias jac="/home/eliash/jedi-academy-cham"
alias nano="nvim"
alias projects="/drive2/projects/"
alias docs="/drive2/docs"
alias fl="lfcd"
alias vim="nvim"
alias cleansys="cd ~/scripts && ./clean-system.sh && cd"
alias vpn-up="sudo wg-quick up proton-sw"
alias vpn-down="sudo wg-quick down proton-sw"
alias todo="nvim ~/todo.md"
alias getsong="~/scripts/get-song.sh"
alias goodnight="systemctl suspend"
alias dm="bash ~/scripts/dark-mode.sh"
alias math="ipython --profile=math"

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

# Created by `pipx` on 2025-06-07 18:09:36
export PATH="$PATH:/home/eliash/.local/bin"

# studium
alias oth="/drive2/oth/2025-ws"
