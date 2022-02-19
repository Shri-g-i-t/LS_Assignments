<< Documentation
Name	      : Shridhar Pujar 
Date 	      :
Description   :
Sample input  :
Sample output :
Documentation
#!/bin/bash

if [ $# -ne 1 ]; then     #check if arguments passed and exactly=1
    echo "Error : Please pass the arguments through CL."
    echo "Usage : ./operator_dependent.sh 2345+"
else                      #if exact one argument is passed 
    str=$1
    op=${str: -1}
    str_len=${#str}
    if [ $op = "+" -o $op = "-" -o $op = "x" -o $op = "/" ]; then  #check if operator passed valid or not
	case $op in   #using case to switch wrt operator
	    "+")                                        #case for addition
		sum=${str:0:1}
		for i in `seq 1 $(($str_len - 2))`; do  #looping index from 1 to string length-2
		    sum=`echo "$sum + ${str:$i:1}" | bc` #Calculate sum by incrementing to nxt index recursively
		done
		echo "Sum of digits = $sum"
		;;
	    "-")                                        #case for substraction
		sub=${str:0:1}
		for i in `seq 1 $(($str_len - 2))`; do
		    sub=`echo "$sub - ${str:$i:1}" | bc`
		done
	       echo "Subtraction of digits = $sub"
	       ;;
	   "x")                                          #case for multiplication
	       mul=${str:0:1}
	       for i in `seq 1 $(($str_len-2))`; do
		   mul=`echo "$mul * ${str:$i:1}" | bc`
	       done
	       echo "Multiplication of digits = $mul"
	       ;;
	   "/")                                            #case for division
	       div=${str:0:1}
	       for i in `seq 1 $(($str_len-2))`; do
		   div=`echo "scale=2;$div / ${str:$i:1}" | bc`
	       done
	       echo "Division of digits = $div"
	       ;;
       esac
       
    else                                   #if operator is not valid print error msg
	echo "Error: Operator missing or invalid operator, please pass operator as last digit (+,-,x,/)"
    fi
fi
