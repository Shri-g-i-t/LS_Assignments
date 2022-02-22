<< Documentation
Name	      : Shridhar Pujar 
Date 	      :
Description   :
Sample input  :
Sample output :
Documentation
#!/bin/bash

if [ $# = 0 ];then
    echo "Error : Please pass the file name through command line."
else
    if [ -f $1 -a -s $1 ]; then
	    echo -ne "1-Lower to Upper \n2-Upper to lower\nPlease select option : "
	    read op
	    case $op in 
		1)
		    cat $1 | tr [a-z] [A-Z] > file2.txt
		    mv file2.txt $1
		    ;;
		2)
		    cat $1 | tr [:upper:] [:lower:] > file2.txt
		    mv file2.txt $1
		    ;;
		*)
		    echo "Invalid option"
		    ;;
	    esac
    else

         echo "Error: No contents inside the file."
    fi
fi
