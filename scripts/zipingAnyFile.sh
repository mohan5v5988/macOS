
tar -czvf out.tar out/ 

cat out.tar | base64 | pbcopy  or File=`cat out.tar | base64`

echo $File | base64 -d | tar pxz -C ./