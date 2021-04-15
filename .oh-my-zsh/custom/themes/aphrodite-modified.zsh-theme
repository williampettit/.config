#!/usr/bin/env zsh

# ------------------------------------------------------------------------------
#
# Modified by wmlol
#
# ------------------------------------------------------------------------------
#
# Aphrodite Terminal Theme
#
# Author: Sergei Kolesnikov
# https://github.com/win0err/aphrodite-terminal-theme
#
# ------------------------------------------------------------------------------

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{10}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%f%F{11}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

branch() {
  local branch=$(git_current_branch)
  if [ -n "$branch" ]; then
    echo -n $ZSH_THEME_GIT_PROMPT_PREFIX
    echo -n $(parse_git_dirty)
    echo -n "[${branch}]"
    echo -n $ZSH_THEME_GIT_PROMPT_SUFFIX
  fi
}

prompt() {
  echo -n "%F{6}%n%f"           # user
  echo -n "%F{7}@%f"            # at
  echo -n "%F{6}%m%f"           # host
  echo -n " %F{12}%~"           # dir
  echo -n "$(branch)"           # git branch
  echo -n " "                   # space
  echo -n "%{$reset_color%}%% " # reset
}

export GREP_COLOR='1;31'

PROMPT='$(prompt)'
