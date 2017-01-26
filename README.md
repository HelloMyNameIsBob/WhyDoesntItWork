#ZUPNIK Theodore
#LECLERCQ Tristan



# To install uginx on your server, tap:
./deploy.sh {your server IP in xxx.xxx.xxx.xxx format}

# this will also install kiwix, but it is not configured

After you enterred ./deploy.sh xxx.xxx.xxx.xxx in your terminal,
the logic in our script will then test the entries and not allow connection if ip
is not in valid format or is empty

System is then updated and upgraded system,
then nginx server is installed

Then a systlog.txt is created, in which the current date an current system info
are uploaded on connection and each 5minutes

A kiwix wget also allows us to suck up an offline version of wikipedia called
kiwix

