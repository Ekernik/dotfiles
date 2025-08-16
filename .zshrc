# --- Path Configuration --- #

path=(
    $path
    $HOME/bin
    $HOME/.local/bin
    $HOME/.bun/bin
    $HOME/Library/pnpm
    $HOME/.nvm/versions/node/v22.17.1/bin
    $HOME/.cargo/env
    $HOME/go/bin
    /opt/homebrew/bin
    /opt/homebrew/sbin
    /usr/bin
    /usr/sbin
    $SCRIPTS
) 

# Remove duplicates or nonexistent directories
typeset -U path
path=($^path(N-/))

export PATH

# --- Environment Variables --- #

set -o vi

export VISUAL=vim
export EDITOR=vim
export TERM="tmux-256color"
export BROWSER=firefox

# Directories

export REPOS="$HOME/repos"
export GITUSER=Ekernik
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$GHREPOS/scripts"
export HOMELAB="$GHREPOS/homelab"

# --- History --- #

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS  # Don't save duplicate lines
setopt SHARE_HISTORY     # Share history between sessions

# --- Alias --- #

alias dotfiles='cd $DOTFILES'
alias scripts='cd $SCRIPTS'
alias repos='cd $REPOS'

# Homelab

alias lab='cd $HOMELAB'

# ls

alias ls='ls --color=auto'
alias la='ls -lathr'

# Git

alias gp='git pull'
alias gs='git status'
alias gd='git diff'
