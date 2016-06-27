#!/bin/sh
gnuplot << EOF
set xrange [1 : 6]
set terminal png
set output 'fig1.png'
plot "$1.dat" using 1:2 with lines title "Consumo Agua enero-junio"
EOF
