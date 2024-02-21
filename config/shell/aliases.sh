#!/bin/bash
# Aliases
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias 7zc="7z a -mx=9"
alias acp="advcp -gv"
alias amv="advmv -gv"
alias apti="sudo apt install"
alias apts="apt search"
alias aptr="sudo apt remove"
alias aptq="apt show"
alias aptu="sudo apt update && sudo apt upgrade"
alias aran="autorandr -l"
alias asc="asciinema"
alias blue="bluetuith"
alias brc="brew cleanup"
alias bri="brew install"
alias brl="brew list"
alias brr="brew uninstall"
alias bru="brew upgrade"
alias cat="bat"
alias ccp="$CLIPCOPY"
alias cdx='cd $(xplr)'
alias cless='colorize_less -N'
alias cols='spectrum_ls'
alias cp="cp -irv"
alias cpa="$CLIPPASTE"
alias diff="diff --color=auto"
alias e='nvim $(files)'
alias emd='emacs --daemon &'
alias emc="emacsclient -c -a 'emacs'"
alias emt='emacs --no-window-system'
alias ez="eza -Ah -s=extension --group-directories-first --icons"
alias ezl="eza -AhlT -L=1 -s=extension --group-directories-first --icons --git --git-ignore"
alias ezr="eza -AhlR -L=2 -s=extension --group-directories-first --icons --git --git-ignore"
alias ezt="eza -ahlT -L=2 -s=extension --group-directories-first --icons --git --git-ignore"
alias exsu='exercism submit'
alias fd="fd -H"
alias fdir="find . -type d -name"
alias ffil="find . -type f -name"
alias files="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias fix="fuck"
alias g="git"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --all -m"
alias gl="git pull --rebase --autostash"
alias gp="git push"
alias gss="git status -s"
alias gsd="git status -s && git diff HEAD"
alias gbrr="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gcm='git checkout $(git_main_branch)'
alias gcma="git commit --amend -m"
alias gcman="git commit --amend --no-edit"
alias gcmn="git add . && git commit --amend --no-edit"
alias gdh="git diff HEAD"
alias gg="lazygit"
alias ghpc="gh pr create"
alias ghrc="gh repo clone"
alias ghrd="gh repo edit -d"
alias ghrh="gh repo edit -h"
alias ghrr="gh repo rename"
alias ghrs="gh release create"
alias ghrt="gh repo edit --add-topic "
alias ghrv="gh repo edit --visibility "
alias gmv="git mv"
alias gmx="git merge -X ours"
alias gsv="git status -v"
alias gtop='cd "$(git rev-parse --show-toplevel)"'
alias grep="grep --color=auto"
alias icat="kitty +kitten icat"
alias java8="export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre"
alias java11="export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/"
alias jupn="jupyter notebook"
alias kpa="keepassxc-cli clip $KEEPASS_DB"
alias la="ez"
alias ll="ezl"
alias lr="ezr"
alias lt="ezt"
alias ldir="ls -d */"
alias litu="sudo light -A 10"
alias litd="sudo light -U 10"
alias ln="ln -sfnv"
alias logout="sudo pkill -u \$USER"
alias ls='ls --color=auto'
alias lsa="lsd -A --group-dirs first --classify"
alias lso="lsd -A --group-dirs first --classify --recursive --depth=2"
alias lsl="lsd -A --group-dirs first --classify -l"
alias macres="yabai --restart-service && skhd --restart-service"
alias mv="mv -iv"
alias ncdu="ncdu --color=dark -x"
alias note='nvim +"Telekasten new_note"'
alias npi="npm install"
alias npr="npm run"
alias open="open_command"
alias paci="sudo pacman -S"
alias pacq="pacman -Qi"
alias pacr="sudo pacman -Rsc"
# alias pacrd="pacr $(pacman -Qdtq | tr '\n' ' ')"
alias pacs="pacman -Ss"
alias pacl="pacman -Q"
alias pacm="sudo pacman-mirrors --fasttrack 5 && sudo pacman -Syu"
alias pacu="sudo pacman -Syu"
alias pick="pastel pick | pastel format hex | ccp"
alias plasmar="kquitapp5 plasmashell && kstart5 plasmashell"
alias png="pngquant --ext .png --force"
alias pp="prettyping --nolegend"
alias q="exit"
alias rcop="rubocop --autocorrect"
alias rm="rm -irv"
alias rmf="rm -rf"
# alias serv="python -m http.server 1234"
alias scr="scrot -s -l width=3,color='#1688f0',mode=edge,opacity=75 -F ~/Pictures/Screenshots/snap-%Y-%m-%d-%H-%M-%S.png -e 'xclip -selection clipboard -t image/png -i ~/Pictures/Screenshots/snap-%Y-%m-%d-%H-%M-%S.png'"
alias scrf="scrot -cd 3 -F ~/Pictures/Screenshots/snap-%Y-%m-%d-%H-%M-%S.png -e 'xclip -selection clipboard -t image/png -i ~/Pictures/Screenshots/snap-%Y-%m-%d-%H-%M-%S.png'"
alias scrw="scrot -ubcd 3 -F ~/Pictures/Screenshots/snap-%Y-%m-%d-%H-%M-%S.png -e 'xclip -selection clipboard -t image/png -i ~/Pictures/Screenshots/snap-%Y-%m-%d-%H-%M-%S.png'"
alias serv="npx live-server --port=1234 ."
alias shad="ssh-add ~/.ssh/id_rsa"
alias shag='eval "$(ssh-agent -s)"'
alias sto="stackoverflow"
alias sysd="sudo systemctl disable"
alias syse="sudo systemctl enable"
alias sysr="sudo systemctl restart"
alias syss="systemctl status"
alias systa="sudo systemctl start"
alias systo="sudo systemctl stop"
alias tmux="tmux -u"
alias tmuxm="tmux new-session \; split-window -h \; split-window -v \; attach"
alias trii="trizen -S --noedit"
alias tris="trizen -Ss --noedit"
alias triu="trizen -Syu --noedit"
alias topg="topgrade --no-retry -y"
alias topG="topgrade --no-retry -y --only git_repos"
alias vi="nvim"
alias vol="pulsemixer"
alias volu="amixer sset 'Master' 10%+"
alias vold="amixer sset 'Master' 10%-"
alias wifi="nmtui"
alias wit="wiki-tui"
alias xp="xplr"
alias yayi="yay -S"
alias yayl="pacman -Qm"
alias yayu="yay -Syu"
alias ytdl="youtube-dl"

alias vimrc="vim ~/.vimrc"
alias virc="nvim ~/.config/nvim/init.lua"
alias me="$EDITOR README.md"
alias zshrc="$EDITOR ~/.zshrc"
alias bashrc="$EDITOR ~/.bashrc"
alias alia="$EDITOR ~/.config/shell/aliases.sh"
alias enva="$EDITOR ~/.config/shell/envars.sh"
alias func="$EDITOR ~/.config/shell/functions.sh"
alias loca="$EDITOR ~/.local.sh"
alias p2k="$EDITOR ~/.config/shell/powerlevel2k.zsh"

alias meow="$EDITOR ~/.config/kitty/kitty.conf"

