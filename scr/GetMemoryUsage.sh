#!/bin/bash

./memRam.sh > memRam.dat &
watch -n 1 'gnuplot -e "set terminal dumb;p \"memRam.dat\" with impulses"'
