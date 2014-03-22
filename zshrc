export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

setopt prompt_subst
autoload -U colors && colors
autoload -U compinit && compinit

source ~/.git-prompt.sh
local gitval='%{$fg[green]%}$(__git_ps1 "(%s)")'

prompt="%{$fg[yellow]%}%n@%m %{$fg[blue]%}%~ ${gitval}
%{$fg[red]%}$ %{$reset_color%}"

# Aliases
alias l='ls -lhoG'
alias la='ls -laho'
alias ls='ls -G'
alias lsa='ls -Ga'
alias s='cd ..'
alias venv='source venv/bin/activate'
alias mkvenv='virtualenv venv'
alias ccat='pygmentize -O style=fruity,linenos=1 -f console256 -g'
alias im='vim'
#alias vim='mvim -v'
#alias ctags="`brew --prefix`/bin/ctags"

# More completions.
fpath=({completions_src_dir} $fpath)
