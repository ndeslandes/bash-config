alias vpn_batman='sudo openconnect --authgroup=Employee --user=$(whoami) batman.appdirect.com'
alias vpn_iceman='sudo openconnect --authgroup=Employee --user=$(whoami) iceman.appdirect.com'
alias docker_rm='docker rm $(docker ps -a -q)'
alias docker_rmi='docker rmi $(docker images -q)'
alias mvnFast="/usr/local/bin/mvn -U -Dmaven.test.skip=true -DskipTests=true"
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
alias mysqldump='/usr/local/mysql/bin/mysqldump'

alias ll="ls -lah"
[[ $- = *i* ]] && source $(dirname ${BASH_SOURCE[0]})/liquidprompt/liquidprompt
if [ -x /usr/local/bin/brew ] && [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
export JAVA_HOME="`/usr/libexec/java_home -v '1.8.0_74'`"
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
