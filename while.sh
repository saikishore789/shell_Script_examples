#! /bin/bash
<< com
while true
do 
   echo "ok"
   echo "----"
done
com

<< scom
while read each
do
   echo "$each"
   
done < server_info.txt
scom

cat server_info.txt | while IFS="," read f1 f2 f3 f4
do
   echo "$f1 $f2"

done 
