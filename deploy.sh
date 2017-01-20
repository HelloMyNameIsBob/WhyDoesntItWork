#!/bin/bash





# updates and upgrades system, then installs nginx server.
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y

# create date.txt if it does not already exist, then puts current date in it (date of creation?)
if [ ! -d ".date.txt" ];then
touch date.txt
fi

watch -n 600 echo `date` >> dates.txt

# create system.txt if it does not already exist, then puts current system login in it
if [ ! -d ".systemLog.txt" ];then
touch date.txt
fi

#then opens a crontab and loads the current system in a system.txt each minute

watch -n 600 echo `system` >> system.txt




# test echo 
echo testString

exit 0
