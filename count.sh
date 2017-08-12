#This is a script to count the number of files of particular extension
<<COMMENT1
	===================================================================
	Author: Avinash Halsnad
	Usage: 1. Make this script executable (chmod 755 <script.sh>)
		   2. Run this script as ./script.sh <location> <.ext>
				Example: ./script.sh /home/vintux/ .apk
COMMENT1

#!/bin/bash
loc=$1
ext=$2
ls $loc|grep "$ext$"|wc -l

