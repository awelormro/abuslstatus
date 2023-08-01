#!/bin/bash

# Obtener el porcentaje de batería
battery_percentage=$(acpi | awk '{print $4}' | tr -d ',')

# Mostrar el resultado
echo " $battery_percentage"
