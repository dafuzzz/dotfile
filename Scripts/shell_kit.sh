#!/bin/zsh

alias v="vim"
alias ll="ls -l"
alias setproxy=doSetProxy
alias unsetproxy=doUnsetProxy
alias postman='/home/dafu/Applications/Postman/Postman &'
alias shdn="sudo shutdown -h now"


# Docker
alias dps='docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.Image}}"'

alias dcta='docker container'
alias dctal='docker container ls'
alias dctas='docker container start'
alias dctasto='docker container stop'
alias dctare='docker container restart'
alias dctarm='docker container rm'
alias dctarmv='docker container rm --volumes'

alias di='docker image'
alias dis='docker images'
alias dirm='docker image rm'


# Git, refresh every 2 seconds
alias wgloga='watch --color -n 2 git log --oneline --graph --decorate --color=always --all'
alias wglog='watch --color  -n 2 git log --oneline --graph --decorate --color=always'


doSetProxy(){
    export all_proxy=127.0.0.1:1080
    export http_proxy=127.0.0.1:1080
    export https_proxy=127.0.0.1:1080
}

doUnsetProxy(){
    unset all_proxy
    unset http_proxy
    unset https_proxy
}
