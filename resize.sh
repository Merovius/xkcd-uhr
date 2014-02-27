#!/bin/zsh

DIM=1440x900

mkdir -p img/resized
for i in {00..23}
	for j in {00..45..15}
	do
		IN=`printf img/%.2dh%.2dm.png $i $j`
		OUT=`printf img/resized/%.2dh%.2dm.png $i $j`
		echo "Resizing $IN"
		convert $IN -resize $DIM -gravity center -extent $DIM $OUT
	done
