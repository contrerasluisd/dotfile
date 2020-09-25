alias ..="cd .."
alias ...="cd ../.."
alias ll="exa -l"
alias la="exa -la"
alias tt="exa --tree --level=2 --long"

# Jumps
alias ~="cd ~"
alias tmp="cd ~/tmp"
alias app='cd ~/app'
alias dotfiles="cd ~/.dotfile"

# Docker alias
#alias dRui="docker rmi $(docker images -q --filter 'dangling=true')"

dRui () {
    docker rmi $(docker images -q --filter 'dangling=true')
}
