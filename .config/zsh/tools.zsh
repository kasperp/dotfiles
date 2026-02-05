# Tool initializations (evals, sources, etc.)

# fnm - Node version manager
if command -v fnm &> /dev/null; then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi

# Jira CLI (token stored securely)
[ -f ~/.config/jira/.env ] && source ~/.config/jira/.env

# Fix for Windows Terminal / VS Code terminal escape sequences
if [[ "$TERM_PROGRAM" == "vscode" ]] || [[ -n "$WT_SESSION" ]]; then
  export TERM=xterm-256color
fi
