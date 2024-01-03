# append to the history file, don't overwrite it
shopt -s histappend
PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000
HISTTIMEFORMAT="%F %T "

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

alias ll='ls -lF --color'
alias la='ls -A --color'
alias ls='ls --color'
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias rgrep='fgrep --color'
alias jsonify="python -m json.tool"
alias xmlify="xmllint --format -"
alias xx='xclip -selection clipboard'

export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR=emacs
export PROXYCHAINS_CONF_FILE=$HOME/.proxychains.conf
export PS1="\[\033[38;5;46m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;160m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\D{%d/%m-%T}\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

# update path for binaries installed using pip --user
test -d $HOME/.local/bin/ && export PATH=$HOME/.local/bin:$PATH
test -d $HOME/Documents/JohnTheRipper/run/ && export PATH=$PATH:$HOME/Documents/JohnTheRipper/run
# resolve symlink on cd symlink
set -o physical

ip()
{
    if [ "$#" -eq 0 ]
    then
        /bin/ip --brief --color addr
    else
        /bin/ip "$@"
    fi
}

source /usr/share/doc/fzf/examples/key-bindings.bash
