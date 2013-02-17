#!/bin/bash

function execute_with_privilege_escalation () {
  osascript -e "do shell script \"$1\" with administrator privileges"
}

function tunlr_on () {
  execute_with_privilege_escalation "networksetup -setdnsservers Wi-Fi 149.154.158.186 199.167.30.144" && \
  echo "The Tunlr DNS servers were set"
}

function tunlr_off () {
  execute_with_privilege_escalation "networksetup -setdnsservers Wi-Fi Empty" && \
  echo "The Tunlr DNS servers were unset"
}

case "$1" in
  "on")
    tunlr_on;;
  "off")
    tunlr_off;;
  "status")
    echo "Current nameservers: \n$(networksetup -getdnsservers Wi-Fi)";;
  "")
    # Toggle servers if not told other wise
    if networksetup -getdnsservers Wi-Fi | grep -q "aren't"; then
      tunlr_on
    else
      tunlr_off
    fi
    ;;
esac
