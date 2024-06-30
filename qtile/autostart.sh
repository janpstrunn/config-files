#!/usr/bin/env bash 

COLORSCHEME=ShinyCrystal

if [[ -f "$HOME/.config/fix-elpaca-symlinks/log" ]]; then
    echo "fix-eplaca-symlinks has been run previously."
else
    /usr/local/bin/fix-elpaca-symlinks
    touch "$HOME/.config/fix-elpaca-symlinks/log" 
    echo "has-been-run: TRUE" > "$HOME/.config/fix-elpaca-symlinks/log" 
fi

lxsession &
picom --daemon &
autokey-gtk &
nm-applet &
"$HOME"/.screenlayout/layout.sh &
nitrogen --restore &
