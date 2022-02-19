<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 16/02/2022
Description   : Script to print the length of each and every string using arrays
Sample input  : hello hai how are you?
Sample output : Length of string (hello) - 5
		Length of string (hai) - 3
		Length of string (how) - 3
		Length of string (are) - 3
		Length of string (you?) - 4
Documentation
#!/bin/bash

if [ $# -eq 0 ]; then  #check if arguments passed or not
    echo "Error : Please pass arguments through command-line" #Print Error message
else
    arr=($*)     #Storing all arguments in an array
    #echo ${arr[*]}
    for i in `seq 0 $(($#-1))`; do  #Looping i from 0 to number of arguments-1
	echo "Length of string (${arr[$i]}) - ${#arr[$i]}"  #Printing the length of each string
    done
fi

