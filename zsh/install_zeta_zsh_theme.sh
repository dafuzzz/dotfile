#!/usr/bin/env zsh

ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

function init_colors {
  if which tput >/dev/null 2>&1; then
    local ncolors=$(tput colors)
  fi
  if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    RESET="$(tput sgr0)"
  else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    RESET=""
  fi
}

function copy_file {
  local dest_dir="$1"
  mkdir -p $dest_dir
  cp ./zeta.zsh-theme $dest_dir/zeta.zsh-theme
}

function set_theme {
  # https://en.wikipedia.org/wiki/Regular_expression#POSIX_basic_and_extended
  sed -i.bak -e "s/^ZSH_THEME=[\"']\{0,1\}[A-Za-z0-9\._-]*[\"']\{0,1\}/ZSH_THEME=\"$1\"/1" $HOME/.zshrc
}

echo "Installing ..."

copy_file $ZSH_CUSTOM/themes
set_theme zeta

printf "$GREEN"
echo "Welcome to use Zeta theme :)"
printf "$RESET"

env zsh -l
