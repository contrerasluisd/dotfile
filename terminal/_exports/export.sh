#General
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#nvm setup
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#AWS service
export AWS_PROFILE=new-nx-dev/iac-dev-policy
#Kube service 
export KUBECONFIG=/Users/luiscontreras/.kube/nx-new-dev-eks
#Telepresence
export export TELEPRESENCE_USE_DEPLOYMENT=1
#CRM local env
export NODE_ENV=develop

eval $(ssh-agent -s)
ssh-add -K ~/.ssh/id_rsa

#Export terraform bin path
export PATH=$PATH:$HOME/.terraform


