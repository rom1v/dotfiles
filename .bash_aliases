alias o=xdg-open
alias r='xdg-open mailto:"Romain Vimont <rom@rom1v.com>"'
alias qr='qrencode -t ANSI'
alias s='ssh -t serv "tmux -2 attach || tmux -2"'
alias h='ssh -t ovh "tmux -2 attach || tmux -2"'
alias ack=ack-grep
alias sa='ssh-add ~/.ssh/id_{rsa,ecdsa,rom_genymobile}'
alias fr='setxkbmap fr oss'
alias u='sudo apt-get update && sudo apt-get upgrade'
alias httpserv='python -m SimpleHTTPServer 4242'
alias pj='python -mjson.tool'
alias t='adb shell input text'
alias v='git rev-list HEAD -1'
alias tmux='/usr/bin/tmux -2'
alias vir='vi -R'
alias linux='cd ~/linux-source-3.13'
alias p='cd ~/Documents/projects'
alias f='cd ~/Documents/FollowApps/'
alias fs='cd ~/Documents/FollowApps/sdk_android_v2/'
alias ft='cd ~/Documents/FollowApps/followapps-android-test-app/'
alias m='cd src/main/'
alias M='cd ../../'
alias d='watch -n1 adb devices'
alias cp-sv4='cp ~/android/sdk/extras/android/support/v4/android-support-v4.jar .'

# find and open a file in vi
fvi() {
  find -type f -name "$1" |
    if read r
    then
      vi "$r" < /dev/tty
    fi
}

