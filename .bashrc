#!/bin/sh


# Aliases
alias ls='ls --color'
alias ll='ls -lh'
alias la='ls -lah'
alias grep='egrep --color=always'
alias psu='ps -u vikfor -f'
alias strcol="sed 's/:/\n/h"
alias pythonpath="echo $PYTHONPATH | sed 's/:/\n/g'"
alias v='vim'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias duinfo='du --max-depth=1 --block-size=MiB | sort -n'
alias tmux='tmux -2'

# export PYTHONUSERBASE='~/local'
# cygwinstyle prompt
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

# LOCAL env
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/users/vikfor/.local/lib
export PATH=/users/vikfor/.local/bin:$PATH
export MANPATH=/users/vikfor/.local/share/man:$MANPATH

# Jeppesen specific aliases

# Path variables
alias cfas2='ssh 10.67.140.15'

#export PYTHONPATH=/users/vikfor/local/lib/python2.6/site-packages:$PYTHONPATH
alias fhost='qhost -l os=RHEL6,login,carmrunmaster'

alias curuser='export CURUSER=$PWD'
alias pycov='/carm/proj/lh_cms/python2.6/bin/coverage'

alias carmenv='unsetcarmenv;. $CURUSER/bin/carmenv.sh'

alias utests='/carm/proj/lh_cms/python2.6/bin/nosetests -a "!slow" --with-coverage --cover-package=hotel'
alias coverage_report='/carm/proj/lh_cms/python2.6/bin/nosetests -a "!slow" --with-coverage --cover-erase --cover-html --cover-inclusive --cover-package=hotel'
alias tests='/carm/proj/lh_cms/python2.6/bin/nosetests -a "!slow" lib/python/hotel'

alias path="echo $PATH | sed 's/:/\n/g'"
alias man="man -C ~/.config/man/man.config"
function unsetcarmenv {
    unset CARM_ORACLE_VERSION;
    unset CARMDATA;
    unset CARMDWSSYS;
    unset CARMSYSTEMNAME;
    unset CARM_ORACLE_PATH;
    unset CARMENV;
    unset CARMUSR;
    unset CARMTMP;
    unset CARMSYS;
    unset LD_LIBRARY_PATH;
}
