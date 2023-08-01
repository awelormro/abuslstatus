#!/bin/bash

# Obtener el nombre de la red WiFi
wifi_name=$(iwgetid -r)

# Obtener la velocidad de subida y bajada de datos en Kbps
network_info=$(nmcli -t -f name,device,rate connection show --active)
download_speed=$(echo "$network_info" | grep "$wifi_name" | cut -d':' -f3)
upload_speed=$(echo "$network_info" | grep "$wifi_name" | cut -d':' -f4)
echo "|"

# Mostrar el resultado
# echo " $download_speed Kbps  $upload_speed Kbps"
