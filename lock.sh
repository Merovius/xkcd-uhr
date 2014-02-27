#!/bin/sh

export TZ=UTZ+12
H=`date +%H`
M=$(( (`date +%M` / 15)*15 ))
FILE=`printf $(dirname $0)/img/resized/%.2dh%.2dm.png $H $M`
i3lock -i $FILE
