#!/bin/bash

set ip = $1

# put some logic in here to test if input is not blank :
if [[ %ip% == ""]];
then
echo no argument specified, please enter an IP adress that has the following format : XXX.XXX.XXX.XXX
fi


# function that check if IP inputed in it is in corret IP format
function valid_ip()
{
    local  ip=$1
    local  stat=1

    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        OIFS=$IFS
        IFS='.'
        ip=($ip)
        IFS=$OIFS
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 \
            && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
        stat=$?
    fi
    return $stat
}


# check input IP adress for format
if valid_ip $ip; 
then stat='good'; else stat='bad'; 
fi

# if IP is written in wrong format , echo error
if "%stat%" == "bad"; 
then
echo the entered IP adress %ip% is not written correct XXX.XXX.XXX.XXX format
fi

# if IP is written in valid format, process whole program logic
if "%stat%" == "good" 
then

# updates and upgrades system, then installs nginx server.
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y

# create systlog.txt if it does not already exist, then puts current date an current system info in it.
# uploads new current date and system info every 5min then adds a blank line
# ====================================================================================================
# systlog.txt has therefore this format : 
# 
# date of connection
# system connection info
# 
# date after 5min if still same connection 
# system info after 5min if still same connection 
#
# ...

if [ ! -d ".systlog.txt" ];
then
touch systlog.txt
fi

watch -n 300 "echo. && `date` >> systlog.txt && `uname -a` >> systlog.txt"




# get kiwix
wget https://download.kiwix.org/bin/kiwix-server-arm.tar.bz26
bzip2 -d kiwix-server-arm.tar.bz2
tar xvf kiwix-server-arm.tar
rm kiwix-server-arm.tar
sudo mv kiwix-serve /usr/bin/kiwix-serve
sudo mv kiwix-manage /usr/bin/kiwix-manage

# TO DO
# ajouter conditions :
# if le site est deja telechargé
# je ne telecharge pas deja qqc sur le port actuel

# end of the "valid IP" condition 
fi 

exit 0
