alias vpn_batman='sudo openconnect --authgroup=duo --user=$(whoami) batman.appdirect.com'
alias vpn_iceman='sudo openconnect --authgroup=duo --user=$(whoami) iceman.appdirect.com'
alias docker_rm='docker rm $(docker ps -a -q)'
alias docker_rmi='docker rmi $(docker images -q)'
alias mvn="mvn -T 1C"
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias mysqldump='/usr/local/mysql/bin/mysqldump'

alias ll="ls -lh"
[[ $- = *i* ]] && source $(dirname ${BASH_SOURCE[0]})/liquidprompt/liquidprompt
if [ -x /usr/local/bin/brew ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export JAVA_HOME="`/usr/libexec/java_home`"
if [ -x /usr/local/bin/minikube ]; then
  eval $(minikube docker-env 2>/dev/null)
fi
export EDITOR=/usr/bin/vim
export COPYFILE_DISABLE=true

#   Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

#   Add color to terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
