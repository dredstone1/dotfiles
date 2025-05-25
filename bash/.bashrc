# case $- in
#     *i*) ;;
#       *) return;;
# esac
#
# HISTCONTROL=ignoreboth
#
# shopt -s histappend
#
# HISTSIZE=1000
# HISTFILESIZE=2000
#
# shopt -s checkwinsize
#
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
# if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi
#
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac
#
# if [ -n "$force_color_prompt" ]; then
#     if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
# 	color_prompt=yes
#     else
# 	color_prompt=
#     fi
# fi
#
# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# fi
# unset color_prompt force_color_prompt
#
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac
#
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     alias dir='dir --color=auto'
#     alias vdir='vdir --color=auto'
#
#     alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi
#
# export BROWSER=wslview
#
# # some more ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
#
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
#
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
# eval "$(gh copilot alias -- bash)"
# eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/amro.omp.json)"
#
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"





#
# case $- in
#     *i*) ;;
#       *) return;;
# esac
#
# HISTCONTROL=ignoreboth
#
# shopt -s histappend
#
# HISTSIZE=1000
# HISTFILESIZE=2000
#
# shopt -s checkwinsize
#
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
# if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi
#
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac
#
# if [ -n "$force_color_prompt" ]; then
#     if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
# 	color_prompt=yes
#     else
# 	color_prompt=
#     fi
# fi
#
# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# fi
# unset color_prompt force_color_prompt
#
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac
#
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     alias dir='dir --color=auto'
#     alias vdir='vdir --color=auto'
#
#     alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi
#
# export BROWSER=wslview
# export DISPLAY=:0
#
# # some more ls aliases
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'
#
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
#
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi
#
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#
# eval "$(gh copilot alias -- bash)"
#
# export PATH="$PATH:/home/mayan/.local/bin"
#
#
# eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/amro.omp.json)"
#
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#
#
# . "$HOME/.cargo/env"



# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History Control: Don't put duplicate lines or lines starting with space in history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
# shopt -s globstar # NEW: Consider uncommenting if you use ** often

# Make less more powerful
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Debian chroot prompt (if applicable)
# MODIFIED: This is kept for completeness, but oh-my-posh will override the prompt.
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# MODIFIED: Default PS1 settings. These are likely overridden by oh-my-posh below.
# You can uncomment these sections if you temporarily disable oh-my-posh.
#
# Set a fancy prompt (non-color, unless we know we "want" color).
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac
#
# Force color prompt, if an alias is defined
# if [ -n "$force_color_prompt" ]; then
#     if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
#     # We have color support; assume it's compliant with Ecma-48
#     # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
#     # a case would tend to support setf rather than setaf.)
#     color_prompt=yes
#     else
#     color_prompt=
#     fi
# fi
#
# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# fi
# unset color_prompt force_color_prompt
#
# If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# WSL Integration & Default Editor
export BROWSER=wslview # Use Windows browser for links opened in WSL
export DISPLAY=:0      # For GUI apps in WSL (WSLg might handle this automatically too)
export EDITOR='nvim'   # NEW: Set Neovim as default editor
export VISUAL='nvim'   # NEW: Set Neovim as default visual editor


# Common ls Aliases
alias ll='ls -alF'   # Long format, all files, classify
alias la='ls -A'     # All files (except . and ..)
alias l='ls -CF'     # Column format, classify
alias l.='ls -d .* --color=auto' # NEW: List only hidden files/dirs in current path

# NEW: Nice-to-have Aliases and Functions
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# NEW: mkdir and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# NEW: Function to extract common archive types
extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2)   tar xvjf "$1"     ;;
            *.tar.gz)    tar xvzf "$1"     ;;
            *.bz2)       bunzip2 "$1"      ;;
            *.rar)       unrar x "$1"      ;; # ensure 'unrar' or 'unrar-free' is installed
            *.gz)        gunzip "$1"       ;;
            *.tar)       tar xvf "$1"      ;;
            *.tbz2)      tar xvjf "$1"     ;;
            *.tgz)       tar xvzf "$1"     ;;
            *.zip)       unzip "$1"        ;;
            *.Z)         uncompress "$1"   ;;
            *.7z)        7z x "$1"         ;; # ensure 'p7zip-full' is installed
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Alert alias (keep if you use it)
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Source personal aliases if they exist
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GitHub Copilot CLI
eval "$(gh copilot alias -- bash)"

# Custom local bin path
export PATH="$PATH:/home/mayan/.local/bin" # Make sure this path is correct for your username

# Oh My Posh - For the prompt styling (with your amro theme)
# This will override the PS1 settings from above.
eval "$(oh-my-posh init bash --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/amro.omp.json)"

# Homebrew (Linuxbrew)
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" # Make sure this path is correct

# Cargo (Rust)
. "$HOME/.cargo/env"

# NEW: Add some more useful path additions at the end, if they exist
# For example, if you install go
# if [ -d "$HOME/go/bin" ] ; then
#    PATH="$HOME/go/bin:$PATH"
# fi

# if [ -d "$HOME/.local/share/gem/ruby/3.0.0/bin" ]; then # Adjust ruby version as needed
#   PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
# fi

echo "Bashrc loaded!" # NEW: Confirmation that .bashrc has finished loading
