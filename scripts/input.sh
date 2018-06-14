#!/bin/bash
setxkbmap -layout tr -option caps:super
xcape -e 'Super_L=Escape'
xmodmap -e 'keycode 135 = Super_R'
xmodmap -e 'keycode 133 = NoSymbol'
xset r rate 200 25
