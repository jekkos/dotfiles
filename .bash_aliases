alias poweroffnas="ssh admin@ds213 '/volume1/web/cgi-bin/poweroff.sh'"
alias sd='adb shell start ssh; \
    adb forward tcp:2222 tcp:22; \
    ssh-keygen -f ~/.ssh/known_hosts -R [localhost]:2222; \
    ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no \
        phablet@localhost -p 2222'
alias buttonstoleft="dconf write /org/gnome/shell/overrides/button-layout '\"close,minimize,maximize:\"'"
alias disablescrollbar="echo 'export LIBOVERLAY_SCROLLBAR=0' > /etc/X11/Xsession.d/80overlayscrollbars"
alias downthemall="wget -r -N --no-parent --reject '*index.html*' -nH --cut-dirs=1 $0"
