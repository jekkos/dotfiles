#!/system/xbin/bash
export HOME=/sdcard
export PATH=$PATH:/botbrew/bin:/data/data/com.bcmon.bcmon/files/tools/
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
    
fi
if [ -f ~/dotfiles/git_push.sh ]; then
    cp ~/dotfiles/git_push.sh /data/local/git_push.sh
    chmod +x /data/local/git_push.sh
    export GIT_SSH="/data/local/git_push.sh"
fi
