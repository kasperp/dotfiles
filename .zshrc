# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Basic PATH (before oh-my-zsh loads)
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Theme
ZSH_THEME="agnoster"

# Options
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

# Locale
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Plugins
# Custom plugins are in ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  npm
  colorize
  zsh-history-substring-search
  zsh-autosuggestions
  zsh-bat
  zsh-syntax-highlighting
  zsh-256color
  zsh-interactive-cd
)

# Load oh-my-zsh
source "$ZSH/oh-my-zsh.sh"

# Editor
export EDITOR='fresh'

# Prompt customizations (must load AFTER oh-my-zsh to override theme functions)
source "$HOME/.config/zsh/prompt.zsh"

# Other custom config is auto-loaded from ~/.oh-my-zsh/custom/*.zsh:
#   - aliases.zsh   : custom aliases
#   - path.zsh      : PATH additions
#   - tools.zsh     : tool initializations (fnm, jira, etc.)
