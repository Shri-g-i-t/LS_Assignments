<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 21/02/2022
Description   : script to sort a given number in ascending or descending order
Sample input  : ./sorting.sh -a 5 4 6 2 3 8 9 7 1
Sample output : Ascending order of array is 1 2 3 4 5 6 7 8 9
Documentation
#!/bin/bash

arr=($*)             #Storing all arguments in an aray
len=${#arr[*]}       #storing length of array in variable
if [ $# = 0 ];then   #no argument passed
    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
else
	case $1 in         #switching with respect to 1st argument
	    "-a")          #Ascending case
		for i in `seq $(($len - 1))`; do
		    for j in `seq  $(($len - ($i+1)))`;do
			if [ ${arr[$j]} -gt ${arr[$j+1]} ];then
			    temp=${arr[$j]}
			    arr[$j]=${arr[$j+1]}
			    arr[$j+1]=$temp
			fi
		    done
		done
		echo -n "Ascending order of array is "
		for k in `seq $(($len-1))`;do    #Printing sorted array
		    echo -n  "${arr[$k]} "
		done
		;;
	    "-d")             #descending case
		for i in `seq $(($len - 1))`; do
		    for j in `seq  $(($len - ($i+1)))`;do
			if [ ${arr[$j]} -lt ${arr[$j+1]} ];then
			    temp=${arr[$j]}
			    arr[$j]=${arr[$j+1]}
			    arr[$j+1]=$temp
			fi
		    done
		done
		echo -n "Descending order of array is "
		for k in `seq $(($len-1))`; do   #Printing sorted array
		    echo -n "${arr[$k]} "
		done
		;;
	    *)            #default case
		echo "Error : Please pass the choice."
		echo "Usage : ./sorting -a/-d 4 23 5 6 3"
		;;
	esac
fi
	




