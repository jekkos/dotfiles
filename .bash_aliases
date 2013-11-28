alias logs="vim /sdcard/lighttpd/telenethomespot.be/access.log"
alias lsa='ls -Alh '

fixterm() {
    echo -en "\e[18t"
    read -d t -s params
    rows=$(echo $params | cut -d \; -f 2)
    cols=$(echo $params | cut -d \; -f 3)
    echo "setting terminal to ${rows}x${cols}" >&2
    stty rows "$rows" cols "$cols"
}
