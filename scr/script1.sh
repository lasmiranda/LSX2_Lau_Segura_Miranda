#!/bin/bash

echo ""
echo "Tarea Hacer un Script que obtenga estados del sistema, networking, uso de disco, memoria ram"
echo " "
echo "Usuario:$USER en la estacion: $HOSTNAME"
echo " "
echo "-------------------------- ESTADOS DEL SISTEMA-----------------------"
echo " "
vmstat
echo " "
echo "---------------------------NETWORKING--------------------------------"
echo " "
netstat -ltuna |grep EST
echo " "
echo "------------------------- ESPACIO EN DISCO---------------------------"
echo " "
df -lh
echo " "
echo "---------------------------PUERTOS-----------------------------------"
echo " "
nmap



