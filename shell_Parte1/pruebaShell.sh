#!/bin/bash

cd /home/ubuntu/file_salida

for LINEA in *
do
    mv -- "$LINEA" "${LINEA%.*}.csv"
done

cd
ls /home/ubuntu/file_salida >salida.out
nl salida.out
