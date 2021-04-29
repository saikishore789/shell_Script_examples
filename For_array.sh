#! /bin/bash
myservices=(docker nginx)

for eachServices in ${myservices[@]}
do 
  systemctl status $eachServices &> /dev/null
  if [[ $? -ne 0 ]]
  then 
     echo "$eachServices service is not running"
  else
     systemctl restart $eachServices &> /dev/null
     echo "$eachServices service is started again"
  fi
done
