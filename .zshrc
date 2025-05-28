# Settings for history of commands
HISTSIZE=1000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

alias sudoup='sudo apt update && sudo apt upgrade -y'
alias gccw='gcc -Wall -Wextra -Werror'
alias ccw='cc -Wall -Wextra -Werror'
alias ls='ls -F --color=auto'
alias ll='ls -la'
alias wlc='wl-copy < '
alias nv='nvim'
alias envlj='env LANG=ja_JP.UTF-8'
alias open='xdg-open'

# Alias for git
alias gita='git add'
alias gitc='git commit -m'
alias gits='git status'
alias gitl='git log --name-status'
alias gitpush='git push'
alias gitpull='git pull'
alias gitstatus='git status'
alias gitpushom='git push origin main'
alias gitpullom='git pull origin main'
alias gitnow='git add . && git commit -m now && git push origin main'
alias obsidian="obsidian --force-device-scale-factor=1"

# For 42Tokyo
alias norminette='norminette -R CheckDefine'
alias norm='norminette -R CheckDefine'
export MAIL=tssaito@student.42tokyo.jp

# Created by `pipx` on 2024-12-12 12:23:41
export PATH="$PATH:/home/tsunami/.local/bin"

# For fcitx5
export XMODIFIERS="@im=fcitx"
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=fcitx
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
export MOZ_ENABLE_WAYLAND=1
unset GTK_IM_MODULE
export PATH=//home/tsunami/.venv/bin:/home/tsunami/.local/bin:/home/tsunami/bin:/usr/local/bin:/usr/bin:/bin:/home/tsunami/.local/bin:/home/tsunami/.venv/bib
export PATH=$PATH:/home/tsunami/.venv/bib

# For complemention
fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit
compinit

# For history (use after install fzf)
bindkey '^R' fzf-history-widget
fzf-history-widget() {
  local selected=$(fc -rl 1 | fzf +s --tac | sed 's/^[ 0-9]\+ *//')
  if [[ -n $selected ]]; then
    BUFFER=$selected
    CURSOR=$#BUFFER
    zle redisplay
  fi
}
zle -N fzf-history-widget

#**************************#
#********* prompt *********#
#**************************#

autoload -U colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'
local MY_GRAY=241
local MY_PINK=168
local MY_BLUE=68

segment() {
  local bg="$1"
  local fg="$2"
  local next_bg="$3"
  local text="$4"

  if [[ "$next_bg" == "none" ]]; then
  echo "%{%K{$bg}%}%{%F{$fg}%} $text %{%f%}%{%f%k%}%{%F{$bg}%}%{%f%k%}"
  else
  echo "%{%K{$bg}%}%{%F{$fg}%} $text %{%f%}%{%K{$next_bg}%}%{%F{$bg}%}%{%f%k%}"
  fi
}

git_branch_segment() {
  if ! git rev-parse --is-inside-work-tree &>/dev/null; then return; fi

  local branch=$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --always)

  local dirty=$(git status --porcelain 2>/dev/null)

  if [[ -n $dirty ]]; then
    echo "$(segment $MY_BLUE white $MY_PINK " $branch")"
  else
    echo "$(segment $MY_BLUE white none " $branch")"
  fi
}

git_status_segment() {
  if ! git rev-parse --is-inside-work-tree &>/dev/null; then return; fi
  local dirty=$(git status --porcelain 2>/dev/null)

  local staged=0 unstaged=0 untracked=0
  while IFS= read -r line; do
    [[ ${#line} -lt 2 ]] && continue

    local x="${line:0:1}"
    local y="${line:1:1}"

    [[ $x != " " && $x != "?" ]] && ((staged++))
    [[ $y != " " && $y != "?" ]] && ((unstaged++))
    [[ $x == "?" && $y == "?" ]] && ((untracked++))
  done <<< "$dirty"

  local total_dirty=$((staged + unstaged + untracked))
  if [[ $total_dirty -gt 0 ]]; then
    echo "$(segment $MY_PINK white none " $total_dirty")"
  fi
}

directory_segment() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    echo "$(segment $MY_GRAY white $MY_BLUE '%~')"
  else
    echo "$(segment $MY_GRAY white none '%~')"
  fi
}

precmd() {
  vcs_info

  PS1="\
$(directory_segment)\
$(git_branch_segment)\
$(git_status_segment)"
}
