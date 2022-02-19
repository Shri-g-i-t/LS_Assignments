#!/bin/bash
<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 14/02/2022
Description   : arithmetic calculator using command line arguments
Sample input  : 10.32 + 20.45
Sample output : 10.32 + 20.45 = 30.77
Documentation

if [ $# -eq 0 ]; then   #check if arguments are passed 
    echo "Error : Please pass the arguments through command line."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
elif [ $# -ne 3 ]; then  #check if only one or two arguments are passed
    echo "Error:Please pass 3 arguments."
    echo "Usage:./arithmatic_calc.sh 2.3 + 6.7"
else
    case "$2" in   #switch w.r.t 2nd argument 
	"+")
	    ans=`echo "$1 $2 $3" | bc`
	    ;;
	"-")
	    ans=`echo "$1 $2 $3" | bc`
	    ;;
	"x")
	    ans=`echo "$1 * $3" | bc`
	    ;;
	"/")
	    ans=`echo "scale=2;$1 $2 $3" | bc`
	    ;;
	*)
	    echo "Invalid Operator"
	    ;;
    esac
    echo "$1 $2 $3 = $ans"
fi


