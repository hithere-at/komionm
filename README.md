# komire
This is a Python script to download said `Komi Can't Communicate` chapters. This script scrape [w3.komisanwamanga.com](https://w3.komisanwamanga.com) for the chapters. This version of `komiomm` is using pure **Regular Expression**, BeautifulSoup4 isnt needed.

**NOTE: This version is unstable and need further testing. Use this if you know how to patch the bug. Consider making a pull request too :)**

<h2 align="center">Showcase</h2>
<p align="center"><img src="stuff.gif"></p>

## Windows version ?
I dont have PC. Sorry ._.

## Requirements
1. [Python](https://www.python.org)
2. sed
3. curl
4. [git](https://git-scm.com)

## How To Install
```sh
git clone -b komire https://github.com/hithere-xd/komionm.git && chmod +x komionm/komionm
sh komionm/install.sh
```

## Just some stuff
1. This script works for `Termux` legacy version (`<= 0.83`) or later.
2. `GNU/Linux` version of install is untested, but i think it works just by looking at the command.
3. This script is tested on Python 3.8, but i think Python 3.4 or above should work

## Credits
1. [w3.komisanwamanga.com](https://w3.komisanwamanga.com) for the `Komi Can't Communicate` chapters and easy to scrape website.
2. StackOverflow that helps me making this script.
3. [ani-cli](https://github.com/pystardust/ani-cli) for UI inspiration.
