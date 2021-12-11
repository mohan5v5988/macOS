#! /bin/bash -x

NOW="$(date)"
FILE=/Users/velagas/logs/backup.log
LINE_SEP="--------------------------------"

num_args=$#

function dry-run() {
    rsync -zarP --dry-run /Users/velagas/.backup/Photos/ /Volumes/VelagaHD/Photos_07282019/
}

echo $LINE_SEP
echo $NOW
echo $LINE_SEP

echo -e "Enter the source Dir : \c"
read sourceDir

echo -e "Enter the destination Dir : \c"
read destinationDir

if [ -d $destinationDir ]; then
    echo "$destinationDir found"
else
    echo "$destinationDir not found"
fi


while getopts d parm ; do
case $parm in
    d)
        dry-run
        exit 0
        ;;
esac
done

if [ $num_args -lt 3 ]; then
    echo "Check the arguments."
    exit 1
else
    rsync -zarP --dry-run /Users/velagas/.backup/Photos/ /Volumes/VelagaHD/Photos_07282019/ >> my.log
fi

exit 0