# Workaround for "Unable to register window with path" bug in Ubuntu
# https://bugs.launchpad.net/dbusmenu/+bug/733265/comments/13
gvim(){ /usr/bin/gvim -f "$@" & true;disown; }

if [ "$TERM" != "dumb" ]; then
    NOCOLOR=$(tput sgr0)
    BLACK=$(tput setaf 0)
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    YELLOW=$(tput setaf 3)
    BLUE=$(tput setaf 4)
    MAGENTA=$(tput setaf 5)
    CYAN=$(tput setaf 6)
    WHITE=$(tput setaf 7)
    BOLD=$(tput bold)
    UNDERLINE=$(tput smul)
    BLINK=$(tput blink)
    REVERSE=$(tput rev)
fi

export LSCOLORS=dxexbxbxcxbxbxfx
PS1="\[${NOCOLOR}\]\u@\h:\[${BOLD}\]\w\[${NOCOLOR}\]\$(__git_ps1 ' (\[${RED}\]%s\[${NOCOLOR}\])')\\$ "

alias cd..='cd ..'
alias ..='cd ..'
