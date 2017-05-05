# xampp start/stop
alias xampp='sudo /opt/lampp/xampp'

# ssh codelynx server
alias codelynx='ssh ubuntu@codelynx.io'

# ssh virtual server
alias mysv='ssh ubuntu@10.10.10.10'

# create virtual machine
alias vtn='cd ~/vagrant && vagrant up'

# start/ stop virtual machine
vb() {
  if [[ "$1" == "stop" ]]; then
    vboxmanage controlvm vagrant_web_1493910304417_69479 poweroff
  elif [[ "$1" == "listall" ]]; then
    vboxmanage list vms
  elif [[ "$1" == "list" ]]; then
    vboxmanage list runningvms
  else
    vboxmanage startvm vagrant_web_1493910304417_69479 --type headless
  fi
}

checksvc() {
  if [[ "$1" == "all" ]]; then
    service --status-all
  else
    service $1 status
  fi
}