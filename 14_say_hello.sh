<< Documentation
Name	      : Shridhar Pujar 
Date 	      :
Description   :
Sample input  :
Sample output :
Documentation
#!/bin/bash

day=`date +%A`      #assigning day from date command
month=`date +%b`    #assigning month from date command
date=`date +%d`     #assigning date from date command 
time=`date | cut -d " " -f 5,6`  #cutting time from date command
year=`date +%Y`     #assigning year from date command
time_24=`date +%H`  #assigning 24 hrs time from date command

if [ $time_24 -ge 5 -a $time_24 -lt 12 ];then         #"Good morning" (5 AM – 12 PM)
    echo "Good Morning $USERNAME, Have nice day!"
elif [ $time_24 -ge 12 -a $time_24 -lt 13 ];then     #"Good noon" (12 PM – 1 PM)
    echo "Good noon $USERNAME, Have nice day!"
elif [ $time_24 -ge 13 -a $time_24 -lt 17 ];then    #"Good afternoon" (2 PM – 5 PM)
    echo "Good afternoon $USERNAME, Have nice day!"  
elif [ $time_24 -ge 17 -a $time_24 -lt 21 ];then   #"Good evening" (5PM – 9 PM)
    echo "Good evening $USERNAME, Have nice day!"
elif [ $time_24 -ge 21 -a $time_24 -lt 24 ];then   #“Good night” (9 PM – 5 AM)
    echo "Good night $USERNAME, Have nice day!"
fi

echo "This is $day $date in $month of $year ($time)"
