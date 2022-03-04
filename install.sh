#!/bin/sh

gnu_lnx="~/komionm/chapters/"
termux="/storage/emulated/0/komionm/chapters/"

if ! $(command -v tac > /dev/null 2>&1); then "tac isnt installed. Install it using your package manager"; exit 1
fi

if ! $(command -v curl > /dev/null 2>&1); then "curl isnt installed. Install it using your package manager"; exit 1
fi

if ! $(command -v gawk > /dev/null 2>&1); then "gawk isnt installed. Install it using your package manager"; exit 1
fi

if ! $(command -v sed > /dev/null 2>&1); then "sed isnt installed. Install it using your package manager"; exit 1
fi

if ! $(command -v grep > /dev/null 2>&1); then "grep isnt installed. Install it using your package manager"; exit 1
fi

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
		mkdir ~/komionm/chapters/scans
		sudo cp komionm /usr/local/bin/komionm
		sed -i "s|data_path=.*|data_path=$gnu_lnx|" /usr/local/bin/komionm
		echo "Successfully installed\nChapters download location: $gnu_lnx"
		break

	elif [ $choices -eq 2 ]; then
		termux-setup-storage
		mkdir /storage/emulated/0/komionm
		mkdir /storage/emulated/0/komionm/chapters
		mkdir /storage/emulated/0/komionm/chapters/scans
		cp komionm /data/data/com.termux/files/usr/bin/komionm
		sed -i "s|data_path=.*|data_path=$termux|" /data/data/com.termux/files/usr/bin/komionm
		sed -i "s|#\!/bin/sh|#!/data/data/com.termux/files/usr/bin/sh|" /data/data/com.termux/files/usr/bin/komionm
		echo "Successfully installed\nChapters download location: $termux"
		break

	else
		echo "No such option available. Try again"

	fi
done
