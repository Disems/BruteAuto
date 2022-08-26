#!/bin/bash
aircrack-ng -w /home/kadavrul-admin/handshake/wpa2-wordlists/PlainText/cow.txt /home/kadavrul-admin/handshake/handshake-01.cap  --restore-file-path=my.res -o outfile.txt --hwmon-temp-abort=90 --workload-profile=3




--hwmon-temp-abort        | Числ | Остановить, если темп. дост. X градусов Цельсия      | --hwmon-temp-abort=100
-l, --limit                   | Числ | Лимит X слов от начала + пропущенные слова           | -l 1000000


while :
do
  echo "Succes start."
  echo "Press <CTRL+C> to exit."
  aircrack-ng -w /home/kadavrul-admin/handshake/wpa2-wordlists/PlainText/cow.txt /home/kadavrul-admin/handshake/handshake-01.cap  --restore-file-path=my.res --session session_name -o outfile.txt --hwmon-temp-abort=90 --workload-profile=3
  hashcat --session session_name --restore

done