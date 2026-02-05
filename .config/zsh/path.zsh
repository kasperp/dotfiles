# Custom PATH additions
# Using functions to avoid duplicate PATH entries

_add_to_path() {
  case ":$PATH:" in
    *":$1:"*) ;;
    *) export PATH="$1:$PATH" ;;
  esac
}

# dotnet
export DOTNET_HOME="$HOME/.dotnet"
_add_to_path "$DOTNET_HOME"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
_add_to_path "$PNPM_HOME"

# fnm (Node version manager)
FNM_PATH="$HOME/.local/share/fnm"
[ -d "$FNM_PATH" ] && _add_to_path "$FNM_PATH"

# opencode
_add_to_path "$HOME/.opencode/bin"

# go
_add_to_path "$HOME/go/bin"
