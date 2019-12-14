#! /bin/bash

NOW="$(date)"
FILE=/Users/velagas/logs/backup.log
LINE_SEP="--------------------------------"
{
    echo $LINE_SEP
    echo $NOW
    echo $LINE_SEP

    rsync -zarP ~/.backup/ velaga@192.168.1.17:/home/velaga/.backup/
} >> $FILE 2>&1&

exit 0