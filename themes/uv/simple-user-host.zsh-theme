# Prompt with time, uv environment, user, host, path, and Git status.
# Format: [MM/DD HH:MM] (<uv>) <user>@<host> <path> (<branch> ✔)

# Show the current time as [MM/DD HH:MM].
prompt_time() {
  echo "%{$fg[cyan]%}[$(date +'%m/%d %H:%M')]%{$reset_color%} "
}

# Disable the default virtual environment prompt.
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Show the active uv environment.
prompt_uv() {
  if [[ -n $VIRTUAL_ENV ]]; then
    echo "%{$fg[magenta]%}($VIRTUAL_ENV_PROMPT)%{$reset_color%} "
  fi
}

# Show the current user and host.
prompt_user_host() {
  echo "%{$fg[yellow]%}%n@%m%{$reset_color%} "
}

# Show the current path. Red for root, green for other users.
prompt_dir() {
  echo "%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$reset_color%}"
}

# Build the prompt.
PROMPT='$(prompt_time)$(prompt_uv)$(prompt_user_host)$(prompt_dir)$(git_prompt_info)%{$reset_color%} '

# Set Git branch and status colors.
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
