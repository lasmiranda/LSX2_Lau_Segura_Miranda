#!/bin/sh
gnuplot << EOF
set xrange [1 : 3]
set terminal png
set output 'fig2.png'
plot "$1.dat" using 1:2 with lines title "Consumo Electricidad 3 primeros meses 2012"
EOF
