<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 21/02/2022
Description   : Script to rename a file/directory replaced by lower/upper case letters
Sample input  : File.txt MyScript.SH MyFile007.txt dir/ Assign1/ newfolder/ 
Sample output : file.txt myfile007.txt myscript.sh DIR/ ASSIGN1/ NEWFOLDER/
Documentation
#!/bin/bash

arr=(`ls`)   #Storing o/p of ls in array
#echo ${arr[*]}
for i in ${arr[*]}; do  
    if [ -f $i ];then   #checking if $i is file
	mv $i `echo "$i" | tr A-Z a-z`  #rename to lower case
    elif [ -d $i ];then #checking if $i is directory
	mv $i `echo "$i" | tr a-z A-Z`  #rename to upper case
    fi
done
echo "Files are rename in lowercase and directories are renamed in upper case"    
arr2=(`ls`)
echo ${arr2[*]}
