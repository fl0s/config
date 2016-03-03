export PATH=/usr/local/php5-5.6.16-20151226-184008/bin:/usr/local/mysql/bin:$PATH
alias composer="php /usr/local/bin/composer.phar"

##########
# Prompt #
##########
source ~/.git-completion.bash
source ~/.git-prompt.sh

##-ANSI-COLOR-CODES-##
Color_Off="\[\033[0m\]"
###-Regular-###
Red="\[\033[0;31m\]"
Green="\[\033[0;32m\]"
Yellow="\[\033[0;33m\]"
Pink="\[\033[1;34m\]"
DPurple="\[\033[0;34m\]"
Blue="\[\033[0;36m\]"
Purple="\[\033[0;35m\]"
####-Bold-####
BRed="\[\033[1;31m\]"
BPurple="\[\033[1;35m\]"

GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCa

export PS1=$Red"\u"$Color_Off"@"$Red"\h"$Color_Off":"$DPurple"\w"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    # a file has been modified but not added
    then echo "'$BRed'"$(__git_ps1 " [%s]")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    # a file has been added, but not commited
    then echo "'$Yellow'"$(__git_ps1 " [%s]")
    # the state is clean, changes are commited
    else echo "'$Green'"$(__git_ps1 " [%s]")
    fi)'$Color_Off" $ "

alias ll='ls -lah'
alias gg='git status -s'

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
