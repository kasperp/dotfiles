# Custom prompt modifications for agnoster theme

# Show context only when root
prompt_context() {
  if [[ $EUID -eq 0 ]]; then
    prompt_segment red white "%n"
  fi
}

# Pick one random emoji per session as the prompt mascot
EMOJI_PREFIXES=(
  "🤖" "🦾" "👾" "🦿"
  "🐢" "🐙" "🦄" "🐧" "🐒" "🦊" "🦉" "🐉" "🐕" "🐈" "🐇" "🐝" "🐬" "🦖"
)
EMOJI_PREFIX=${EMOJI_PREFIXES[$((RANDOM % ${#EMOJI_PREFIXES[@]} + 1))]}

# Directory segment: collapse folder if it matches branch
prompt_dir() {
  local leaf="$(basename "$PWD")"
  local collapse_symbol="${AGNOSTER_COLLAPSE_SYMBOL:-≡}"

  if [[ $PWD == "/" ]]; then
    prompt_segment blue black "/"
    return
  fi

  local branch
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || branch=""

  local dir
  if [[ -n $branch && $branch == "$leaf" ]]; then
    dir="$EMOJI_PREFIX ${collapse_symbol}"
  else
    dir="$EMOJI_PREFIX %1~"
  fi

  prompt_segment blue black "$dir"
}
