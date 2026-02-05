# Custom aliases
# For a full list of active aliases, run `alias`.

# eza (modern ls replacement)
alias ls='eza --icons --group-directories-first --header'
alias la='ls -la'
alias lt='ls --tree --level=3'

# Shell
alias reload='source ~/.zshrc'

# Remote development (connects to this machine from local VS Code/Cursor)
alias scode='code --new-window --remote ssh-remote+${USER}@$(hostname -I | awk "{print \$1}")'
alias scursor='cursor --new-window --remote ssh-remote+${USER}@$(hostname -I | awk "{print \$1}")'

# Tools
alias proc=btop
alias gtr=git-gtr
alias edit=fresh
