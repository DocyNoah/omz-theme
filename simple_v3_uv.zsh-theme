# Print the current time: [MM/DD HH:MM]
prompt_time() {
  echo "%{$fg[cyan]%}[$(date +'%m/%d %H:%M')]%{$reset_color%} "
}

# Disable conda's default prompt change
export CONDA_CHANGEPS1=false

# Print the current conda environment if it's not the base environment
prompt_conda() {
  if [[ -n $CONDA_DEFAULT_ENV && $CONDA_DEFAULT_ENV != "base" ]]; then
    echo "%{$fg[magenta]%}($CONDA_DEFAULT_ENV)%{$reset_color%} "
  fi
}

# Disable uv's default prompt change
export VIRTUAL_ENV_DISABLE_PROMPT=1

# Print the current uv environment
prompt_uv() {
  if [[ -n $VIRTUAL_ENV ]]; then
    echo "%{$fg[magenta]%}($VIRTUAL_ENV_PROMPT)%{$reset_color%} "
  fi
}

# Print the username and device name
prompt_user_host() {
  echo "%{$fg[yellow]%}%n@%m%{$reset_color%} "
}

# Print the current directory
prompt_dir() {
  # Set the color to red if the current user is root
  # Otherwise, set the color to green
  echo "%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$reset_color%}"
}

# Custom prompt
PROMPT='$(prompt_time)$(prompt_conda)$(prompt_uv)$(prompt_user_host)$(prompt_dir)$(git_prompt_info)%{$reset_color%} '

# Git prompt settings
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"  # ✗: U+2717
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"  # ✔: U+2714
