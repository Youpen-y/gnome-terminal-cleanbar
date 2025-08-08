#!/usr/bin/env bash

targetdir="$HOME/.config/gtk-3.0/"
targetfile="$targetdir/gtk.css"
localfile="./gtk.css"

[ -d $targetdir ] || mkdir -p "$targetdir"
[ -f "$targetdir/gtk.css" ] || touch "$targetdir/gtk.css"

if [ -f "$localfile" ]; then
    cat "$localfile" >> "$targetfile"
    echo -e "\033[1m\033[32mCompleted!\033[0m"
else
    echo -e "[\033[31mERROR\033[0m]: Can't find gtk.css in current dir." >&2
    echo "Makesure you have cloned the repository and in the right dir!" >&2
    exit 1
fi
