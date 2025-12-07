# ============================
# Interactive shell check
# ============================
# Exit if not running interactively
case $- in
    *i*) ;;
      *) return;;
esac

# ============================
# History configuration
# ============================
HISTCONTROL=ignoreboth        # Ignore duplicates and lines starting with space
shopt -s histappend           # Append to history, don’t overwrite
HISTSIZE=1000                 # Number of commands to remember in memory
HISTFILESIZE=2000             # Number of commands to save in history file

# ============================
# Shell behavior
# ============================
shopt -s checkwinsize          # Update LINES and COLUMNS after each command
# shopt -s globstar            # Enable ** for recursive globbing if desired

# ============================
# Enhance less
# ============================
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# ============================
# Debian chroot prompt
# ============================
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# ============================
# Color support and aliases
# ============================
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    # Colored output
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    # Common ls aliases
    alias ll='ls -alF'                  # Long listing with details
    alias la='ls -A'                    # List all except . and ..
    alias l='ls -CF'                    # Column view
    alias l.='ls -d .* --color=auto'    # List hidden files only
fi

# ============================
# Navigation aliases
# ============================
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ba='~/ba.sh'
alias cl='clear'

# ============================
# Custom functions
# ============================
# mkdir and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Extract common archive types
extract() {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1" ;;
            *.tar.gz)    tar xvzf "$1" ;;
            *.bz2)       bunzip2 "$1" ;;
            *.rar)       command -v unrar >/dev/null 2>&1 && unrar x "$1" || echo "unrar not installed" ;;
            *.gz)        gunzip "$1" ;;
            *.tar)       tar xvf "$1" ;;
            *.tbz2)      tar xvjf "$1" ;;
            *.tgz)       tar xvzf "$1" ;;
            *.zip)       unzip "$1" ;;
            *.Z)         uncompress "$1" ;;
            *.7z)        command -v 7z >/dev/null 2>&1 && 7z x "$1" || echo "7z not installed" ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Alert alias
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ============================
# Source personal aliases
# ============================
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# ============================
# Bash completion
# ============================
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# ============================
# Node Version Manager (NVM)
# ============================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# ============================
# Environment variables
# ============================
export PATH="/usr/local/cuda/bin:$HOME/.local/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"

export LANG=en_IL.UTF-8
export LC_CTYPE=en_IL.UTF-8
export LC_ALL=en_IL.UTF-8
export DISPLAY=${DISPLAY:-:0}

# ============================
# Oh My Posh prompt
# ============================
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/amro.omp.json)"

