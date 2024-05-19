# navi, interactive cheatsheet
if type navi >/dev/null 2>&1; then eval "$(navi widget zsh)"; fi

# foot terminal emulator shell integration
# Called before prompt(?)
function precmd {
    # Set window title
    print -Pn "\e]0;zsh%L %(1j,%j job%(2j|s|); ,)%~\e\\"
}

# Called when executing a command
function preexec {
    print -Pn "\e]0;${(q)1}\e\\"
}
