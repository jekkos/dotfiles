#!/system/xbin/bash
export HOME=/sdcard
export PATH=$PATH:/botbrew/bin:/data/data/com.bcmon.bcmon/files/tools/
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
    fixterm
fi
export GIT_SSH=/system/xbin/ssh
