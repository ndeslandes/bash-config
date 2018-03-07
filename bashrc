alias vpn_batman='sudo openconnect --authgroup=duo --user=$(whoami) batman.appdirect.com'
alias vpn_iceman='sudo openconnect --authgroup=duo --user=$(whoami) iceman.appdirect.com'

alias docker_rm='docker rm $(docker ps -a -q)'
alias docker_rmi='docker rmi $(docker images -q)'

alias mvn="mvn -T 1C"
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

alias ll="ls -lah"

function b64decode() { if [ -z "$1" ]; then while read data; do echo ${data} | base64 --decode; done; else echo ${1} | base64 --decode; fi; }
function b64encode() { if [ -z "$1" ]; then while read data; do echo -n ${data} | base64; done; else echo -n ${1} | base64; fi;}

[[ $- = *i* ]] && source $(dirname ${BASH_SOURCE[0]})/liquidprompt/liquidprompt

if [ -x /usr/local/bin/brew ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

export JAVA_HOME="`/usr/libexec/java_home -v 1.8.0_45`"
export EDITOR=/usr/bin/vim
export COPYFILE_DISABLE=true

#   Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

#   Add color to terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
