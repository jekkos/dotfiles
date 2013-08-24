# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_colored_prompt=yes
VIDEO_DIR=/volume1/backup/video/mount/runwalk-video/video
MEDIA_DIR=/volume1/web/media

function convert_video 
{
 local dest=$MEDIA_DIR/$(date +"%Y-%m-%d")
 mkdir -p $dest 
 find $VIDEO_DIR -name "$@" -type f -print0 | while read -r -d $'\0' file; do 
  ffmpeg -i "$file" -vf 'hflip,vflip,scale=360:-1' -sameq $dest/$(basename "$file" | cut -d. -f1).mp4 & 
  wait $! 
 done
}

if [ -n "$force_color_prompt" ]; then
 if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
 else
  color_prompt=
 fi
fi

if [ "$color_prompt" = yes ]; then
 PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
