<< Documentation
Name	      : Shridhar Pujar 
Date 	      : 18/02/2022
Description   : script to delete empty lines from a file
Sample input  : /delete_empty_lines.sh file.txt
Sample output : Empty lines are deleted
		Hello
		How
		are
		you?
Documentation
#!/bin/bash

if [ $# -ne 1 ]; then    #check if 1 argument is passed or nor
    echo "Empty lines are deleted"
    sed -i '/^[[:blank:]]*$/d' $1     #To delete empty lines from file
    cat $1
    
else
   echo "Error: Please pass the file name through command line"
fi
