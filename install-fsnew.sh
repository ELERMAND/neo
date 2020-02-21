#!/bin/bash
clear
echo "********************"
echo "|   How are you ?  |"
echo "|------------------|"
echo "| 1. Termux        |"
echo "| 2. Another Unix  |"
echo "| 3. iSH           |"
echo "|                  |"
echo "|   Enter 1/2/3:   |"
echo "*******************"
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/neo/spammer-v2.py /data/data/com.termux/files/usr/bin/neo
	dos2unix /data/data/com.termux/files/usr/bin/neo
	chmod 777 /data/data/com.termux/files/usr/bin/neo
	neo
else
	if [ $numb = "2" ]
	then
		if [ "$(whoami)" != 'root' ];
		then
			echo "You are not super user. Start install.sh with Super User example:(sudo sh ~/spymer/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/neo/spammer-v2.py /usr/bin/neo
			dos2unix /usr/bin/neo
			chmod 777 /usr/bin/neo
			neo
		fi
	else
		if [ $numb = "3" ] 
		then
			apk add python
			apk add python3
			apk add dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spymer/spammer-ver2.py /usr/bin/neo
			dos2unix /usr/bin/neo
			chmod 777 /usr/bin/neo
			neo
		else
			echo "Incorrect Entered"
		fi
	fi
fi
