#!/bin/bash

# Obtener el porcentaje de uso del disco duro
disk_percentage=$(df -h | awk '$NF=="/"{print $5}' | sed 's/%//')

# Mostrar el resultado
echo " $disk_percentage%"
