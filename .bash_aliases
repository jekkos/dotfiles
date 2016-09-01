alias poweroffnas="ssh admin@ds213 '/volume1/web/cgi-bin/poweroff.sh'"
alias sd='adb shell start ssh; \
    adb forward tcp:2222 tcp:22; \
    ssh-keygen -f ~/.ssh/known_hosts -R [localhost]:2222; \
    ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no \
        root@localhost -p 2222'
alias buttonstoleft="dconf write /org/gnome/shell/overrides/button-layout '\"close,minimize,maximize:\"'"
alias disablescrollbar="echo 'export LIBOVERLAY_SCROLLBAR=0' > /etc/X11/Xsession.d/80overlayscrollbars"
alias downthemall="wget -r -N --no-parent --reject '*index.html*' -nH --cut-dirs=1 $0"
# stream scorpio from terminal
alias scorpio="wget -O - http://193.190.253.57:8000/stream | madplay -"
alias ohmyzsh="curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh"
alias buttonstoleftgnome="gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:' && gsettings set org.gnome.settings-daemon.plugins.xsettings overrides \"{'Gtk/DecorationLayout':<'close,minimize,maximize:'>}\""
