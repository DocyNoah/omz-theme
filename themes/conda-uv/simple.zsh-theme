# Prompt with time, environments, path, and Git status.
# Format: [MM/DD HH:MM] (<conda>) (<uv>) <path> (<branch> ✔)

# Show the current time as [MM/DD HH:MM].
prompt_time() {
  echo "%{$fg[cyan]%}[$(date +'%m/%d %H:%M')]%{$reset_color%} "
}

# Disable Conda's default prompt.
export CONDA_CHANGEPS1=false

# Show the active Conda environment, except base.
prompt_conda() {
  if [[ -n $CONDA_DEFAULT_ENV && $CONDA_DEFAULT_ENV != "base" ]]; then
    echo "%{$fg[magenta]%}($CONDA_DEFAULT_ENV)%{$reset_color%} "
  fi
}

# Disable the default virtual environment prompt.
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Show the active uv environment.
prompt_uv() {
  if [[ -n $VIRTUAL_ENV ]]; then
    echo "%{$fg[magenta]%}($VIRTUAL_ENV_PROMPT)%{$reset_color%} "
  fi
}

# Show the current path. Red for root, green for other users.
prompt_dir() {
  echo "%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$reset_color%}"
}

# Build the prompt.
PROMPT='$(prompt_time)$(prompt_conda)$(prompt_uv)$(prompt_dir)$(git_prompt_info)%{$reset_color%} '

# Set Git branch and status colors.
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"
