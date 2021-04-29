#! /bin/bash

which wget 1>/dev/nul 2>/dev/null

if [[ $? -ne 0 ]]
then
   echo "installing wget"
   yum install wget -y
   exit 1
fi

if [[ -e index.html ]]
then
   echo "removing index.html"
   rm -rf index.html
fi

url=https://mirrors.edge.kernel.org/pub/software/scm/git/
wget $url
if [[ $? -ne 0 ]]
then
   echo "unable to download url "
   exit 2
fi

declare -a git_vers
while read line
do
git_vers+=($(echo $line | sed -n '/git-\([0-9]\+\.\)\+tar.gz/p' | awk -F '"' '{ print $2 }' | cut -c 5- | awk -F '.tar.gz' '{ print $1 }'))

done < index.html

echo "available all git versions are : "
cnt=0
no_of_vers=${#git_vers[*]}
width=21
for each_version in ${git_vers[*]}
do
#   echo -e "\t\t ${git_vers[$cnt]} \\t ${git_vers[$((cnt+1))]}\\t ${git_vers[$((cnt+2))]} \\t ${git_vers[$((cnt+3))]} \\t ${git_vers[$((cnt+4))]} \\t ${git_vers[$((cnt+5))]}"
   printf "%-*s %-*s %-*s %-*s %-*s\n" $width ${git_vers[$cnt]} $width ${git_vers[$((cnt+1))]} $width ${git_vers[$((cnt+2))]} $width ${git_vers[$((cnt+3))]} $width ${git_vers[$((cnt+4))]} $width ${git_vers[$((cnt+5))]}

   cnt=$((cnt+5))
   if [[ $cnt -ge ${no_of_vers} ]]
   then
       break
   fi
done 

which git 1>/dev/null 2>/dev/null
if [[ $? -eq 0 ]]
then
   echo "git is already  installed"
   git_version=$(git --version)
   echo "$git_version"
else
   read -p "enter git version to download: " vers
    
   if [[ $vers -eq ${git_vers[*]} ]]
   then 
     echo "download the new verion of git"
     wget "https://mirrors.edge.kernel.org/pub/software/scm/git/git-${vers}.tar.gz"
     
   fi
fi  

