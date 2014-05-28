alias o=xdg-open
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
alias wk='cd ~/Documents/workspace'

# find and open a file in vi
fvi() {
  find -type f -name "$1" |
    if read r
    then
      vi "$r" < /dev/tty
    fi
}

# ELTEG
alias e='ssh -t elteg "tmux -2 attach || tmux -2"'
alias relay='ssh -t pms "sudo screen -x RELAY"' #mot de n@m@d
alias domo='ssh -t pms "sudo screen -x DOMOTIQUE"' #mot de n@m@d
alias db='ssh -t pms mysql -uroot -ppwd4mysql' # http://192.168.0.1/phpmyadmin
stb() {
  if [ ! "$1" ]
  then
    printf "Syntax: $0 <ip_stb>\n" >&2
    return 1
  fi
  db nomade -e "\"update ip_devices set ip_settopbox='$1' where ip_tab='172.32.150.5'\""
}

cap() {
  sudo tcpdump -pni eth0 -s0 -U -w - | wireshark -k -i -
}

play() {
  local channel="$1" # last token of ip address
  curl -X POST http://legilocal:demo0710@192.168.0.1/gateway/room/servers/server_json.php -d '{"version":"1.1","method":"playChannel","id":2,"params":["{\"value\":\"{\"url\":\"http://172.32.0.1:8080/udp/239.0.0.'"$channel"':1234/\",\"infos\":{},\"type\":\"CHANGE_CHANNEL\"}\"}"]}'
}

alias d='watch -n1 adb devices'
alias up='rsync -P --inplace ~/Documents/projects/oceania/STBApp/bin/STBApp.apk pms:/data/www/STBConfig'

cdm() {
  if echo "$1" | grep -qo '^\.\{3,\}$'
  then
    \cd $(echo "$1" | sed 's,^\.,,;s,\.,../,g')
  else
    \cd "$@"
  fi
}
