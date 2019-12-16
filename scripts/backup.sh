#! /bin/bash

NOW="$(date)"
FILE=/Users/velagas/logs/backup.log
LINE_SEP="--------------------------------"

    echo $LINE_SEP
    echo $NOW
    echo $LINE_SEP

    rsync -zarP /Users/velagas/.backup/ velaga@192.168.1.17:/home/velaga/.backup/

exit 0