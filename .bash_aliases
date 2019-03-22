alias o=xdg-open
r() {
    local uri='mailto:Romain%20Vimont%20<rom@rom1v.com>'
    [[ "$1" ]] && uri="$uri?body=$1"
    xdg-open "$uri"
}
alias g=git
alias qr='qrencode -t ANSI'
alias s=sha256sum
alias sf='ssh -t self "tmux -2 attach || tmux -2"'
alias h='ssh -t ovh "tmux -2 attach || tmux -2"'
alias sa='ssh-add ~/.ssh/id_ed25519 ~/.ssh/id_ecdsa'
alias fr='setxkbmap fr oss'
alias u='sudo apt update && sudo apt upgrade'
alias httpserv='python3 -m http.server 4242'
alias t='adb shell input text'
alias tab='adb shell input keyevent 61'
alias v='git rev-list HEAD -1'
alias tmux='/usr/bin/tmux -2'
alias mtpsync='adb shell am broadcast -a android.intent.action.MEDIA_MOUNTED -d file:///mnt/sdcard'
alias dl='youtube-dl'
alias unadb='adb shell settings put global adb_enabled 0'
alias timestamp='ts "[%Y-%m-%d %H:%M:%.S]"'
alias urldecode='python -c "import sys, urllib; print urllib.unquote_plus(sys.argv[1])"'
alias urlencode='python -c "import sys, urllib; print urllib.quote_plus(sys.argv[1])"'

screencap() {
    adb exec-out screencap -p
}

# find and open a file in vi
fvi() {
  find -type f -name "$1" |
    if read r
    then
      vi "$r" < /dev/tty
    fi
}

# bash aliases not to be shared by different hosts
[[ -e ~/.bash_aliases_custom ]] && . ~/.bash_aliases_custom
