#! /bin/bash

#for each in blockofcode.sh actionOnService.sh
for s in nginx java
do 
   yum install ${s} -y

done
