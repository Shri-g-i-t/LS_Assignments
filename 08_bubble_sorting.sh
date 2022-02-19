<< Documentation
Name	      : Shridhar Pujar 
Date 	      :
Description   :
Sample input  :
Sample output :
Documentation
#!/bin/bash

arr=($*)
len=${#arr[*]}
if [ $# = 0 ];then
    echo "Error : Please pass the argument through command line."
    echo "Usage : ./sorting -a/-d 4 23 5 6 3"
else
	case $1 in
	    "-a")
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
		for k in `seq $(($len-1))`;do
		    echo -n  "${arr[$k]} "
		done
		;;
	    "-d")
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
		for k in `seq $(($len-1))`; do
		    echo -n "${arr[$k]} "
		done
		;;
	    *)
		echo "Error : Please pass the choice."
		echo "Usage : ./sorting -a/-d 4 23 5 6 3"
		;;
	esac
fi
	




