# ZUPNIK Theodore
# LECLERCQ Tristan

# To install uginx on your server, tap:
`./deploy.sh {your server IP in xxx.xxx.xxx.xxx format}`

# this will also install kiwix, but it is not configured

After you enterred `./deploy.sh xxx.xxx.xxx.xxx` in your terminal,
the logic in our script will then test the entries and not allow connection if ip
is not in valid format or is empty

System is then updated and upgraded system,
then nginx server is installed.

Then a `systlog.txt` file is created, in which the current date an
current system info are uploaded on connection and every 5 minutes.

A Kiwix wget also allows us to download an offline version of
Wikipedia called kiwix.

(bzg: be more precise: Kiwix is not itself the online version, the
`.zim` file is.)
