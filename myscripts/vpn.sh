#!/bin/bash
vpn() {

osascript  <<EOF
tell application "System Events" to tell process "GlobalProtect"
  click menu bar item 1 of menu bar 2 -- Activates the GlobalProtect "window" in the menubar
  click button 2 of window 1 -- Clicks either Connect or Disconnect
end tell
EOF

}
