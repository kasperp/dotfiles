# Custom aliases
# For a full list of active aliases, run `alias`.

# eza (modern ls replacement)
alias ls='eza --icons --group-directories-first --header'
alias la='ls -la'
alias lt='ls --tree --level=3'

# Shell
alias reload='source ~/.zshrc'

# Remote development (REMOTE_HOST set in local.zsh)
alias scode='code --new-window --remote ssh-remote+${USER}@${REMOTE_HOST}'
alias scursor='cursor --new-window --remote ssh-remote+${USER}@${REMOTE_HOST}'

# Tools
alias proc=btop
alias gtr=git-gtr
alias edit=fresh
