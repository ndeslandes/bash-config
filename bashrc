alias vpn_batman='sudo openconnect --authgroup=duo --user=$(whoami) batman.appdirect.com'
alias vpn_iceman='sudo openconnect --authgroup=duo --user=$(whoami) iceman.appdirect.com'

alias docker_rm='docker rm $(docker ps -a -q)'
alias docker_rmi='docker rmi $(docker images -q)'

alias brewup='brew update; brew upgrade; brew cleanup; brew doctor; brew cu -a -y'
function cleanup() {
  rm -rf ~/Library/Caches/*;
  sudo rm -rf /private/var/tmp/TM*;
  sudo rm -rf /private/var/log/*
}

alias ll="ls -lh"
alias myip='curl ip.appspot.com'

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
  source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export JAVA_HOME="`/usr/libexec/java_home -v 1.8.0_144`"
export EDITOR=/usr/bin/vim
export COPYFILE_DISABLE=true

#   Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

#   Add color to terminal
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
