<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 22/02/2022
Description   : Script to convert string lower to upper and upper to lower
Sample input  : ./upper_lower.sh file.txt
		Please select option : 1 
Sample output : WHAT IS OS?
Documentation
#!/bin/bash

if [ $# = 0 ];then       #check if arguments are passed 
    echo "Error : Please pass the file name through command line."
else                    
    if [ -f $1 -a -s $1 ]; then  #check if file is present and its size is greater than 0
	    read -p "1 - Lower to Upper \n2 - Upper to lower" op
	   # read op
	    case $op in     #switch w.r.t option choosen
		1)
		    cat $1 | tr [a-z] [A-Z]   #translate lower to upper
		    ;;
		2)
		    cat $1 | tr [:upper:] [:lower:]  #translate upper to lower
		    ;;
		*)
		    echo "Invalid option"
		    ;;
	    esac
    else

         echo "Error: No contents inside the file."
    fi
fi
