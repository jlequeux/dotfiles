# custom zsh prompt

# alias
alias ll="ls -lahG"


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %F{yellow}%b%f'

setopt PROMPT_SUBST
PROMPT='%F{green}%n%f@%m %F{cyan}%~%f ${vcs_info_msg_0_}> '
