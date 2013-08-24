
umask 022

PATH=/opt/bin:/opt/sbin:/opt/local/v4l-utils:/sbin:/bin:/usr/sbin:/usr/bin:/usr/syno/sbin:/usr/syno/bin:/usr/local/sbin:/usr/local/bin
export PATH

#This fixes the backspace when telnetting in.
#if [ "$TERM" != "linux" ]; then
#        stty erase
#fi

HOME=/root
export HOME

TERM=${TERM:-cons25}
export TERM

PAGER=more
export PAGER

LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
export LANG LC_ALL

PS1="`hostname`> "

alias dir="ls -al"
alias ll="ls -la"

#if [ -x /opt/bin/bash ]; then
# exec '/opt/bin/bash'
#fi
