temp=$(curl wttr.in | grep °C | cut -b 28-45 | grep -v 118 | grep -v 082)
echo Temp: $temp°C
