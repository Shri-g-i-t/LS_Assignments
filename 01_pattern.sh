<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 14/02/2022
Description   : Read 'n' and generate a pattern 
Sample input  : 2
Sample output : 1
	 	1 2
Documentation
#!/bin/bash

read -p "Enter the number : " n  #take user input
for row in `seq $n`; do         #Loop will run upto the user input
    for col in `seq $row`; do
	echo -ne " $col"  #to print output
    done
    echo   #to go to next line
done
