# --- Editing mode --- #
set -o vi

# --- Environment Variables --- #
export VISUAL=vim
export EDITOR=vim
export TERM="tmux-256color"
export BROWSER=firefox

# --- Directories (moved before PATH so $SCRIPTS exists) --- #
export REPOS="$HOME/repos"
export GITUSER=Ekernik
export GHREPOS="$REPOS/github.com/$GITUSER"
export DOTFILES="$GHREPOS/dotfiles"
export SCRIPTS="$GHREPOS/scripts"
export HOMELAB="$GHREPOS/homelab"

# --- PATH Configuration --- #
# Append to PATH if the directory exists and isn't already present
path_append() {
  local dir="$1"
  [[ -d "$dir" ]] || return
  case ":$PATH:" in
    *":$dir:"*) ;;
    *) PATH="${PATH:+$PATH:}$dir" ;;
  esac
}

# Add entries (duplicates and missing dirs are automatically skipped)
path_append "$HOME/bin"
path_append "$HOME/.local/bin"
path_append "$HOME/.bun/bin"
path_append "$HOME/Library/pnpm"
path_append "$HOME/.nvm/versions/node/v22.17.1/bin"
path_append "$HOME/go/bin"
path_append "/opt/homebrew/bin"
path_append "/opt/homebrew/sbin"
path_append "/usr/bin"
path_append "/usr/sbin"
path_append "$SCRIPTS"

# Rust: source env file if present (it updates PATH to include ~/.cargo/bin)
[[ -f "$HOME/.cargo/env" ]] && . "$HOME/.cargo/env"

export PATH

# --- History --- #
export HISTFILE="$HOME/.bash_history"
export HISTSIZE=100000
export HISTFILESIZE=100000

# Similar to zsh's SHARE_HISTORY: append and read new lines across sessions
shopt -s histappend
export HISTCONTROL=ignoreboth:erasedups   # like HIST_IGNORE_SPACE + HIST_IGNORE_DUPS
PROMPT_COMMAND='history -a; history -n'

# --- Aliases --- #
alias dotfiles='cd "$DOTFILES"'
alias scripts='cd "$SCRIPTS"'
alias repos='cd "$REPOS"'
alias lab='cd "$HOMELAB"'

# ls
alias ls='ls --color=auto'
alias la='ls -lathr'

# Git
alias gp='git pull'
alias gs='git status'
alias gd='git diff'