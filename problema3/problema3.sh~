#!/bin/bash

DATA=~/LSX2_Lau_Segura/problema3
OUT_DATA=$DATA/archivos_csv
GRAF_DATA=$DATA/datos_graf

mkdir $GRAF_DATA
mkdir $OUT_DATA

cp $DATA/Datos $OUT_DATA/Datos.csv

m=0

for e in `find $OUT_DATA -name "*.csv"`
do
	echo "Dando formato de datos para graficar el archivo $e"
	cat $e | awk -F "\",\"" '{print $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 " " $9 " " $10 " " $11 " " $12 " " $13 " " $14 " " $15 " " $16 " " $17 " " $18 " " $19 " " $20 " " $21 " " $22 " " $23 " " $24 " " $25 " " $26 " " $27 " " $28 " " $29 " " $30 " " $31 " " $32 " " $33 " " $34 " " $35 " " $36 " " $37 " " $38 " " $39 " " $40 " " $41 " " $42 " " $43}'| sed '1,$ s/"//g' | sed '1 s/date/#date/g' > $GRAF_DATA/graf-$m.dat

let m=m+1
done 2> error2.log
