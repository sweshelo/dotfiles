#!/bin/bash

function modFILCO(){
    xmodmap -e 'keycode 105 = Right'
    xmodmap -e 'keycode 134 = Left'
    xmodmap -e 'keycode 62 = Up'
    xmodmap -e 'keycode 119 = Down'
}

function main(){
    state=0
    while true; do
        if [[ "`lsusb | grep -i Microdia`" ]] ; then
            if [[ $state -eq 0 ]] ; then
                modFILCO
                state=1
            fi
        else
            if [[ $state -eq 1 ]] ; then
                setxkbmap
                state=0
            fi
        fi
        sleep 1
    done
}

main
