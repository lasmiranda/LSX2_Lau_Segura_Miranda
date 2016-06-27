#!/bin/sh
gnuplot << EOF
set xrange [2012-03-16 11:00:00 : 2012-05-30 22:00:00]
set terminal png
set output 'fig1.png'
plot "$1.dat" using 1:6 with lines title "MInimo"
EOF
