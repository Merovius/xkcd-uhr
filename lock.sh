#!/bin/sh

export TZ=UTC+12
H=`date +%k`
M=$(( (`date +%M` / 15)*15 ))
DIR=$(dirname `readlink -f $0`)
FILE=`printf $DIR/img/resized/%.2dh%.2dm.png $H $M`
i3lock -i $FILE
