#! /bin/bash

NOW="$(date)"
FILE=/Users/velagas/logs/backup.log
LINE_SEP="--------------------------------"

num_args=$#

function mount() {
    echo mount
    #VeraCrypt -t --password="${1}" --pim="${2}" --protect-hidden=no --keyfiles=  ${3} /Users/velagas/mountDir
}

function unmount() {
    VeraCrypt -t --dismount ${2}
    echo unmount
}

echo $LINE_SEP
echo $NOW
echo $LINE_SEP

# not compleated because there is no point use this for the example.
read -sp 'Password : ' password
read -sp 'Pin : ' pin
read -p 'Hidden [no]: ' protectHidden
: ${protectHidden:=no}
read -p 'location to the file : '

while getopts r parm ; do
case $parm in
    r)
        echo r
        unmount
        exit 0
        ;;
esac
done

if [ $num_args -lt 3 ]; then
    echo "Check the arguments."
    exit 1
else
    VeraCrypt -t --password="${1}" --pim="${2}" --protect-hidden=no --keyfiles=  ${3} /Users/velagas/mountDir
fi

exit 0