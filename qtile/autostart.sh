#!/usr/bin/env bash 

COLORSCHEME=DoomOne

if [[ -f "$HOME/.config/fix-elpaca-symlinks/log" ]]; then
    echo "fix-eplaca-symlinks has been run previously."
else
    /usr/local/bin/fix-elpaca-symlinks
    touch "$HOME/.config/fix-elpaca-symlinks/log" 
    echo "has-been-run: TRUE" > "$HOME/.config/fix-elpaca-symlinks/log" 
fi

### AUTOSTART PROGRAMS ###
lxsession &
picom --daemon &
autokey-gtk &
/usr/bin/emacs --daemon &
nm-applet &
"$HOME"/.screenlayout/layout.sh &
nitrogen --restore &

resolutionHeight=$(xrandr | grep "primary" | awk '{print $4}' | awk -F "+" '{print $1}' | awk -F 'x' '{print $2}')

if [[ $resolutionHeight -ge 1080 ]]; then
    killall conky || echo "Conky not running."
    sleep 2
    conky -c "$HOME"/.config/conky/qtile/01/"$COLORSCHEME".conf || echo "Couldn't start conky."
elif [[ $resolutionHeight -lt 1080 ]]; then
    killall conky || echo "Conky not running."
    sleep 2
    conky -c "$HOME"/.config/conky/qtile/02/"$COLORSCHEME".conf || echo "Couldn't start conky."
else
    killall conky || echo "Conky not running."
    sleep 2
    conky -c "$HOME"/.config/conky/qtile/02/"$COLORSCHEME".conf || echo "Couldn't start conky."
fi
