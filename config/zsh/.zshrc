# Envirnnment setup
[ -f ~/.config/shell/envars.sh ] && source ~/.config/shell/envars.sh

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to oh-my-zsh installation.
export ZSH="$ZDOTDIR/.oh-my-zsh"

# Plugins
plugins=(alias-tips
    colorize
    dotenv
    dirhistory
    docker
    docker-compose
    extract
    F-Sy-H
    fancy-ctrl-z
    fasd
    fzf-tab
    gh
    git
    git-extra-commands
    globalias
    magic-enter
    mise
    timer
    tmux
    vi-mode
    web-search
    zoxide
    zsh-autopair
    zsh-autosuggestions
    zsh-completions
    zsh-navigation-tools
    fzf) # fzf at last for '^R' binding

# Uninstalled, TODO doesn't work with fzf-tab
# zsh-autocomplete

# Plugin options
MAGIC_ENTER_GIT_COMMAND="gsd"
MAGIC_ENTER_OTHER_COMMAND="la"
ZSH_PYENV_QUIET=true
ZSH_COLORIZE_TOOL="chroma"
ZSH_COLORIZE_STYLE="dracula"
ZSH_COLORIZE_CHROMA_FORMATTER="terminal16m"
TIMER_THRESHOLD=1
AUTO_NOTIFY_IGNORE+=("docker" "make")

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

if [[ $TERM == "linux" ]]; then
    ZSH_THEME="ys"
fi

# powerlevel2k
if [[ $ZSH_THEME == "powerlevel10k/powerlevel10k" ]]; then
    [ -f $ZDOTDIR/p10k.zsh ] && source $ZDOTDIR/p10k.zsh
    [ -f $ZDOTDIR/powerlevel2k.zsh ] && source $ZDOTDIR/powerlevel2k.zsh
    [ -f $ZDOTDIR/p10k.mise.zsh ] && source $ZDOTDIR/p10k.mise.zsh
fi

source $ZSH/oh-my-zsh.sh

# Options
setopt append_history
setopt auto_cd
setopt extended_glob
setopt glob_dots
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt interactive_comments
setopt menu_complete
setopt nomatch
setopt sharehistory
unsetopt beep

# Environment Vars
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
SAVEHIST=99999

# Completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
zle_highlight=('paste:none')

# Docker
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# fzf-tab previews
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -TFl --group-directories-first --icons --git -L 2 --no-user $realpath'
zstyle ':fzf-tab:complete:nvim:*' fzf-preview 'bat --color=always --style=numbers --line-range=:500 $realpath'
zstyle ':fzf-tab:complete:vim:*' fzf-preview 'bat --color=always --style=numbers --line-range=:500 $realpath'
zstyle ':fzf-tab:complete:pacman:*' fzf-preview 'pacman -Si $word'
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'

zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview 'git diff $word | delta'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview 'git show --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview 'git help $word | bat -plman --color=always'
zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
    'case "$group" in
    "commit tag") git show --color=always $word ;;
    *) git show --color=always $word | delta ;;
    esac'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
    'case "$group" in
    "modified file") git diff $word | delta ;;
    "recent commit object name") git show --color=always $word | delta ;;
    *) git log --color=always $word ;;
    esac'
compinit

# Keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Colors
autoload -Uz colors && colors

# Rename
autoload -U zmv

# zsh functions
function color_picker() {
    for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
}

# Common functions
[ -f ~/.config/shell/functions.sh ] && source ~/.config/shell/functions.sh

# Common aliases
[ -f ~/.config/shell/aliases.sh ] && source ~/.config/shell/aliases.sh

# Tool confs for zsh
if type navi >/dev/null 2>&1; then eval "$(navi widget zsh)"; fi
if type foot >/dev/null 2>&1; then source "$ZDOTDIR/foot.zsh"; fi

# Zhs Aliases
alias reload="source $ZDOTDIR/.zshrc"

alias -s md=nvim
alias -s html=nvim

alias -g C="| $CLIPCOPY"
alias -g F="| fpp -ko -nfc"
alias -g G="| grep"
alias -g L="| wc -l"
alias -g Q="&& exit"
alias -g Z="| fzf"
alias -g wcc="| wc -m"
alias -g wcw="| wc -w"

# Key Bindings
bindkey -s '^H' ' reload^M ^M'
bindkey -s '^T' ' t^M ^M'
bindkey -s "^G" ' lazygit^M ^M'
bindkey "^F" fzf-file-widget
bindkey "^X^E" edit-command-line
bindkey "^[." insert-last-word

autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey "^[m" copy-earlier-word

# Local configurations
[ -f ~/.config/shell/local.sh ] && source ~/.config/shell/local.sh