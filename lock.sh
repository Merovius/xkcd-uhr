#!/bin/sh

export TZ=UTZ+12
H=`date +%H`
M=$(( (`date +%M` / 15)*15 ))
FILE=`printf /home/mero/src/xkcd-uhr/img/resized/%.2dh%.2dm.png $H $M`
i3lock -i $FILE
