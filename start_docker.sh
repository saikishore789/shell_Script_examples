#! /bin/bash

if [[ $(id -u) -eq 0 ]]
then
   if service docker status 1>/dev/null 2>/dev/null
   then
       echo "docker is already running"
   else
       echo "starting docker"
       service docker start
       echo "docker is up and running"
   fi
else
   echo "this is not a root user"
fi
