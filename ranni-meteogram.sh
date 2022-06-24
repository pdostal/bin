#!/usr/bin/env bash
DATE=$(date +"%Y%m%d00")
FILE="/tmp/meteogram${DATE}.png"
URL="https://www.chmi.cz/files/portal/docs/meteo/ov/aladin/results/public/meteogramy/data/${DATE}/355.png"
BODY="Meteogram Aladin pro Prahu ze dne $(date +"%d. %m. %Y"):\nZdroj: https://www.chmi.cz/files/meteogramy.html\n\n\n"

# Viz. https://www.chmi.cz/files/meteogramy.html
# Každá lokace má svoje číslo (například 355 pro Prahu)

curl -s $URL -o $FILE
echo -en $BODY | mail -r "quiiicq@gmail.com" -s "Ranní meteogram" -a $FILE -Ssendwait pdostal@pdostal.cz

find /tmp -daystart -maxdepth 1 -mtime +7 -type f -delete -iname "meteogram*.png"

