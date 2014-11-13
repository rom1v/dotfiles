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
alias tab='adb shell input keyevent 61'
alias v='git rev-list HEAD -1'
alias tmux='/usr/bin/tmux -2'
alias mtpsync='adb shell am broadcast -a android.intent.action.MEDIA_MOUNTED -d file:///mnt/sdcard'
# update ssh-agent env variables
alias fixagent='export SSH_AGENT_PID=$(pidof ssh-agent) && export SSH_AUTH_SOCK=$(find /tmp -path "/tmp/ssh-*/agent.$((SSH_AGENT_PID-1))")'

# find and open a file in vi
fvi() {
  find -type f -name "$1" |
    if read r
    then
      vi "$r" < /dev/tty
    fi
}

# bash aliases not to be shared by different hosts
[[ -e .bash_aliases_custom ]] && . .bash_aliases_custom
