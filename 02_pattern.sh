<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 14/02/2022
Description   : Read 'n' and generate a pattern 
Sample input  : 2
Sample output : 1
		2 3
Documentation
#!/bin/bash

read -p "Enter the number : " n    #reading limit from user
var=1                                #declaring and initialising variable
for row in `seq $n`; do            #loop for rows
    for col in `seq $row`; do      #loop for columns
	echo -ne "$var "
	var=$(($var+1))              #incrementing var variable by 1 
    done
    echo
done
