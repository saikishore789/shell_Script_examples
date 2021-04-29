#! /bin/bash

print_header(){
      printf "#%0.s" $(seq 1 $(tput cols))
      printf "\n"
}

center_msg(){
  msg=$1
  terminalCol=$(tput cols)
  msg_len=$(echo ${#1})
  pre_space=$(($((terminalCol-msg_len))/2))
 
  print_header
  printf " %0.s" $(seq 1 $pre_space)
  printf "%s" "$1"
  printf "\n"
  print_header
}


check_remotepass() {
  if [ ! -e "remotepass" ]
  then 
     center_msg "please store your password in >>remotepass<<"
     exit 1
  fi
}
check_remoteUser() {
  if [ ! -e "remoteUser" ]
  then
     center_msg "please store your user in >>remoteUser<<"
     exit 2
  fi
}
check_remote_server() {
  if [ ! -e "remote_server" ]
  then
     center_msg "please store your remote servers in >>remote_server<<"
     exit 3
  fi
}

center_msg "welcome to inventory script"
check_remotepass
check_remoteUser
check_remote_server
ssh_opt="sshpass -f remotepass ssh -n -o StrictHostKeyChecking=No -o PubkeyAuthentication=No sai"

while read server
do
   echo "working on $server"
   OS_type=$($ssh_opt@$server "cat /etc/os-release" | awk -F '"' 'NR==1 { print $2 }' | awk '{ print $2 }')
   OS_version=$($ssh_opt@$server "cat /etc/os-release" | awk -F '"' 'NR==2 { print $2 }')
   Arc_type=$(uname -n)
   cpu_type=$($ssh_opt@$server "cat /proc/cpuinfo" | grep -i "model name" | awk -F ":" '{ print $2 }')
   echo "OS_TYPE=$OS_type"
   echo "OS_VERSION=$OS_version"
   echo "ARC_TYPE=$Arc_type"
   echo "CPU_TYPE=$cpu_type"
done < remote_server
center_msg "inventory script completes"
