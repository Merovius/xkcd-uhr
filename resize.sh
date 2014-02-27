#!/bin/zsh

DIM=1440x900
for i in {00..23}
	for j in {00..45..15}
	do
		FILE=`printf img/%.2dh%.2dm.png $i $j`
		echo "Resizing $FILE"
		mogrify -resize $DIM -gravity center -extent $DIM $FILE
	done
