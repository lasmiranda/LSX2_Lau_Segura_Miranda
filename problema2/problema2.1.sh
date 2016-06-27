#!/bin/bash

DATA=~/Desktop/problema
OUT_DATA=$DATA/archivos_csv
#GRAF_DATA=$DATA/datos_graf
VAR=0

mkdir $GRAF_DATA
mkdir $OUT_DATA
#mkdir $GRAF_DATA

m=1

for i in `find $DATA -name '*.xls' `
do 
	echo "Procesando archivo $i"
	xls2csv $i > $OUT_DATA/data-$m.csv
	let m=m+1
done 2> error1.log

vari=0

for e in `find $OUT_DATA -name "*.csv"`
do
#if [ $vari -lt 2 ]; then
	echo  m "Dando formato de datos para graficar el archivo $e"
	cat $e | awk "/^Luz/" -F "\",\"" '{print $1 "," $2}'
| sed '1,$ s/"//g' | sed '1 s/date/#date/g' >> $OUT_DATA/graf-3mesesluz.csv
	let $vari=$vari+1

#fi




#if [m-lt 3];
#then
#echo  m "Dando formato de datos para graficar el archivo $e"
#	cat $e | awk -F "\",\"" '{print $1 " " $2}'| sed '1,$ s/"//g' | sed '1 s/date/#date/g' >> $OUT_DATA/graf-3mesesluz.csv
#	let m=m+1
#else
#echo"no entro"
#fi

done 2> error2.log
