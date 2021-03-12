# If not running iteractively return
#[ -z "$PS1" ] && return
# Default MuleSoft Pilar .bashrc. This script is intended to be called from your .bashrc file

#
# Base path is the path BEFORE calling this script. It is a way to capture the system defined PATH and avoid duplicating it
#
if [ -z $BASEPATH ]
then
     BASEPATH=$PATH
fi
export BASEPATH
export BLOCKSIZE=1024


#if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
#      . /opt/local/etc/profile.d/bash_completion.sh
#fi

function removeFromPath() {
    export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

# Aliases
if [ "$OSTYPE" != "linux-gnu" ]
then
    # Function to set the right jdk on mac os
    function setjdk() {
	if [ $# -ne 0 ]
	then
	    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
	    if [ -n "${JAVA_HOME+x}" ]
	     then
		removeFromPath $JAVA_HOME
	    fi
	    VERSION=$1
	    if [ "$VERSION" -lt 9 ]; then VERSION=1.$VERSION; fi
	    export JAVA_HOME=$(/usr/libexec/java_home -v $VERSION)
	    export PATH=$JAVA_HOME/bin:$PATH
	fi
    }
    alias ls='ls -w'
    alias java7='setjdk 7'
    alias java8='setjdk 8'
    alias java9='setjdk 9'
    alias java11='setjdk 11'
    setjdk 8
fi

alias ..='cd ..'
alias ...='cd ../..'
alias l='ls -la'
alias h='fc -l'
alias st="git status"
alias gho='open `git remote -v | grep fetch | awk '\''{print $2}'\'' | sed '\''s/git@/http:\/\//'\'' | sed '\''s/com:/com\//'\''`| head -n1'

#if [ "$OSTYPE" != "linux-gnu" ]; then 
#if [ -f $(brew --prefix 2>/dev/null)/etc/bash_completion ]; then
#    . $(brew --prefix)/etc/bash_completion
#    . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
#elif [ -f /opt/local/share/git-core/git-prompt.sh ]; then
#    . /opt/local/share/git-core/git-prompt.sh
#elif [ -f /usr/share/doc/git/contrib/completion/git-prompt.sh ]; then
#    . /usr/share/doc/git/contrib/completion/git-prompt.sh
#fi
#fi


export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_SHOWDIRTYSTATE="on"
export LESSCHARSET=utf-8
export ITERM=true

if [ "$OSTYPE" != "linux-gnu" ]; then 
    export PS1_BACKUP="\[\e[32m\]\w\$(__git_ps1 \" \[\e[33m\]%s\") \[\e[0m\]:"
else 
    export PS1_BACKUP='\[\e[32m\]\w\[\e[0m\] :'
fi
export PS1=$PS1_BACKUP

export EDITOR=vi
export LC_CTYPE=en_US.UTF-8
export HISTCONTROL=erasedups
export HISTSIZE=10000

if [ -z $MULE_HOME ]
then
     MULE_HOME=$HOME/mulesoft
fi

export PATH=$MULE_HOME/bash-tools/bin:$HOME/bin:/opt/local/bin:/usr/local/bin:$BASEPATH

export CDPATH=./:$MULE_HOME:$HOME/

#if [ -f /opt/local/share/git-core/contrib/completion/git-completion.bash ]; then
#	.  /opt/local/share/git-core/contrib/completion/git-completion.bash
#fi

#if [ -f /opt/local/etc/bash_completion ]; then
#      . /opt/local/etc/bash_completion
#fi

if [ -n $KUBE_ALIASES ]; then 

    echo Enabling kubernetes aliases
      . $MULE_HOME/bash-tools/bin/kubealiases.sh
fi
. $MULE_HOME/bash-tools/bin/jdk.sh
cd $MULE_HOME/bash-tools
(git pull >/dev/null 2>&1 &)
cat mulesoft.ascii
cd ~-

# ( fortune $MULE_HOME/bash-tools/fortune/mulesoft 2>/dev/null; ) | cowsay -e '^^' -T 'U'

