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
fi

function host_color {
    if [[ $(hostname) == 'flb-gpu01' ]]; then
        echo '\[\033[1;32;41m\]'
    else
        echo ''
    fi
}

export CLICOLOR=1
export EDITOR=/usr/bin/vim
export LD_LIBRARY_PATH=/usr/local/cuda/lib64/
export PS1='\[\033[01;32m\]\u@$(host_color)\h\[\033[01;34m\] \w $(parse_git_branch)\$\[\033[00m\] '
export VISUAL=${EDITOR}

export PATH=$PATH:/home/jeremie/.local/bin

# custom function for docker
# enable to stop a container by ancestor name
nvidia-docker-stop(){
    nvidia-docker ps -a -q --filter="ancestor=$1" | xargs nvidia-docker stop
}
# exec /bin/bash in a container
nvidia-docker-bash(){
    nvidia-docker exec -it $(nvidia-docker ps -a -q --filter="ancestor=$1") /bin/bash
}

