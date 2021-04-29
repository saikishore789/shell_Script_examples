#! /bin/bash

coloumns=$(tput cols)

for((i=1;i<=coloumns;i++))
do 
   if [[ $i -eq $coloumns ]]
   then
#      echo "-"
      break
   fi
   echo -n "-"
done

#printf "%{coloumns}s" " " | tr " " "-"

