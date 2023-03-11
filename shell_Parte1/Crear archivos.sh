#!/bin/bash

cd /home/ubuntu/file_salida

for LINEA in ´cat entrada.in´
do
    cd /home/ubuntu/file_salida
    touch "$LINEA"
done

cd
ls /home/ubuntu/file_salida >salida.out
nl salida.out
