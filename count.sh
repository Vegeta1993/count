#This is a script to count the number of files according to each extension 
<<COMMENT1
	===================================================================
	Author: Avinash Halsnad
	Usage: 1. Make this script executable (chmod 755 <script.sh>)
		   2. Run this script as ./script.sh <location> 
				Example: ./script.sh /home/vintux/
COMMENT1

#!/bin/bash
loc=$1
search=0
declare -A arr
for i in `ls -l $loc| grep ^-|awk '{print $9}'|grep '\.'`; do
  count=1
	var="${i##*.}"
  for key in ${!arr[@]}; do
	if [ ${key} == $var ];then
	  search=1
	fi
  done
  if [ $search -eq 1 ];then
	((arr[${var}]++))
  else
	arr+=( ["$var"]=1 )
  fi
done
for key in ${!arr[@]}; do
  echo -e "\033[0m Number of \033[0;32m${key}\033[0m is \033[0;32m${arr[${key}]}"
done
