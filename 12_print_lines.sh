<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 21/02/2022
Description   : script to print contents of file from given line number to next given number of lines.
Sample input  : ./print_lines.sh 5 3 myfile.txt
Sample output : line number 5
		line number 6
		line number 7
Documentation
#!/bin/bash

if [ $# -ne 3 ]; then      #checking if 3 arguments are passed or not
    echo "Error: arguments missing!"
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
else
    #lines=`wc -l $3 | cut -d " " -f 1`  #fetching line number cusing cut
    #lines=`wc -l < $3`          #fetching line number using indirection
    lines=`cat $3 | wc -l`      #fetching no of lines in variable using piping
    if [ $lines -ge $(($1+$2-1)) ];then     
	cat $3 | head -$(($1+$2-1)) $3 | tail -$2  #piping file to head and tail 
	#cat $3 | tail +$1 | head -$2 
    else
	echo "Error: data.txt is having only $lines lines. file should have at least $(($1+$2-1)) lines."
    fi
fi

