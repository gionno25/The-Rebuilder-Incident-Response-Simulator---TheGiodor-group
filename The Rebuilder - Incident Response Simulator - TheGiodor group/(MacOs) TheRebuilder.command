#!/bin/bash
cd "$(dirname "$0")"
open -a "Google Chrome" "index.html" 2>/dev/null || open -a "Safari" "index.html" 2>/dev/null || open -a "Firefox" "index.html" 2>/dev/null || open "index.html"
osascript -e 'tell application "Terminal" to close first window' & exit
