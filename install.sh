#!/bin/sh

gnu_lnx="~/komionm/chapters/"
termux="/storage/emulated/0/komionm/chapters/"

echo "Installing python packages..."
pip3 install -r requirements.txt

echo "\n1. GNU/Linux\n2. Android (Termux)"

while true; do
	echo -n "Please choose the platform that you currently use: "
	read choices

	if [ $choices -eq 1 ]; then

		if [ $(uname -o) = "Android" ]; then
			echo "You're on Android ._."
			break
		fi

		mkdir ~/komionm
		mkdir ~/komionm/chapters
		sudo cp komionm /usr/local/bin/komionm
		sed -i "s|chapters/|$gnu_lnx|g" /usr/local/bin/komionm
		echo "Successfully installed\nLocation: $gnu_lnx"
		break

	elif [ $choices -eq 2 ]; then
		mkdir /storage/emulated/0/komionm
		mkdir /storage/emulated/0/komionm/chapters
		cp komionm /data/data/com.termux/files/usr/bin/komionm
		sed -i "s|chapters/|$termux|g" /data/data/com.termux/files/usr/bin/komionm
		echo "Successfully installed\nLocation: $termux"
		break

	else
		echo "No such option available. Try again"

	fi
done
