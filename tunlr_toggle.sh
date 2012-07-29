export ON="networksetup -setdnsservers Wi-Fi 149.154.158.186 199.167.30.144"
for i in "$@"; do export ON="$ON '${i}'";done

export OFF="networksetup -setdnsservers Wi-Fi Empty"
for i in "$@"; do export OFF="$OFF '${i}'";done

if networksetup -getdnsservers Wi-Fi | grep -q "aren't"; then
  osascript -e "do shell script \"$ON\" with administrator privileges"
  if [ "$(sw_vers -productVersion)" > "10.7" ]; then
    ./terminal-notifier.app/Contents/MacOS/terminal-notifier -message "The Tunlr DNS servers were set" -title "Tunlr" -group "tunlr_alfred_extension"
  fi
else
  osascript -e "do shell script \"$OFF\" with administrator privileges"
  if [ "$(sw_vers -productVersion)" > "10.7" ]; then
    ./terminal-notifier.app/Contents/MacOS/terminal-notifier -message "The Tunlr DNS servers were unset" -title "Tunlr" -group "tunlr_alfred_extension"
  fi
fi
