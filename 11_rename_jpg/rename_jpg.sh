<< Documentation
Name	      : Shridhar Pujar 
Date 	      :
Description   :
Sample input  :
Sample output :
Documentation
#!/bin/bash

if [ $# = 0 ];then
    echo "Error : Please pass the prefix name through command line."
else
    var=`echo "hi001.jpg" | tr -d [:digit:].jpg`
    echo var=$var
    rename "s/$var/$1/" *.jpg
fi
   

