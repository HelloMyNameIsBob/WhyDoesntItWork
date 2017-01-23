#!/bin/bash


# put some logic in here to test if input $1 is in good format, or is not blank :
# if [[$1=""]]
# echo "no argument specified" message or sth like this
# fi

# for the ip format test, we should refer to this link that looks quite helpful
# http://www.linuxjournal.com/content/validating-ip-address-bash-script



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

if [ ! -d ".systlog.txt" ];then
touch systlog.txt
fi

watch -n 300 echo[
watch -n 300 echo `date` >> systlog.txt
watch -n 300 echo `uname -a` >> systlog.txt




# aspirer un site à l'aide de wget semble sympa aussi, à tester
# ici arguments de wget : 
# -r parcourir tous les liens du site
# -k conversion des liens en liens locaux
# -E conversion php vers HTML

wget -r -k -E http://unSite.com/dossier








exit 0
