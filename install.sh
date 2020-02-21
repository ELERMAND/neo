echo "===================="
echo "|    How are you?  |"
echo "|======Select======|"
echo "|    1. Termux     |"
echo "|    2. Unix       |"
echo "|                  |"
echo "|   Enter 1 or 2   |"
echo "===================="
read numb
if [ $numb = "1" ]
then
	pkg install python
	pkg install python3
	pkg install python3-pip
	pkg install dos2unix
	pip3 install requests
	pip3 install colorama
	cp ~/neo/spammer.py /data/data/com.termux/files/usr/bin/neo
	dos2unix /data/data/com.termux/files/usr/bin/neo
	chmod 777 /data/data/com.termux/files/usr/bin/neo
	neo
else
	if [ $numb = "2" ]
	then

		if [ "$(whoami)" != 'root' ]; then
			echo "You are not rooted. Start install.sh with root acces Example:
            (sudo sh ~/neo/install.sh)"
			exit
		else
			apt install python3 python3-pip dos2unix
			pip3 install requests
			pip3 install colorama
			cp ~/spymer/spammer.py /usr/bin/spymer
			dos2unix /usr/bin/spymer
			chmod 777 /usr/bin/spymer
			spymer
		fi
	else
		echo "Incorrect try again....going to succes :)"
	fi
fi
