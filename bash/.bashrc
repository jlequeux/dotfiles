# -- systemwide .profile
function parse_git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "("${ref#refs/heads/}")"
}

platform=$(uname)

# Some colors on linux
if [[ $platform == 'Linux' ]]; then
    alias ls='ls --color=auto'
    alias l='ls --color=auto'
    alias grep='grep --color=auto'
    alias ll='ls -lh --color=auto'
    alias la='ls -lah --color=auto'
    export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w $(parse_git_branch)\$\[\033[00m\] '
fi

if [[ $platform == 'Darwin' ]]; then
    alias ll='ls -lah'
fi

export CLICOLOR=1
export EDITOR=/usr/bin/vim
export VISUAL=${EDITOR}


export PATH=$PATH:/home/jeremie/.local/bin
