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
export PROXYCHAINS_CONF_FILE=/home/laxa/.proxychains.conf
export PS1="\[\033[38;5;46m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;160m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;14m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

# update path for binaries installed using pip --user
test -d $HOME/.local/bin/ && export PATH=$HOME/.local/bin:$PATH
# resolve symlink on cd symlink
set -o physical
