# komish
This is a shell script to download said `Komi Can't Communicate` chapters. This script scrape [w3.komisanwamanga.com](https://w3.komisanwamanga.com) for the chapters

<h2 align="center">Showcase</h2>
<p align="center"><img src="stuff.gif"></p>

## Windows version ?
I dont have PC. Sorry ._.

## Requirements
1. tac (part of coreutils)
2. wc (part of coreutils)
3. sed
4. gawk
5. curl
6. grep

## How To Install
```sh
git clone -b komish https://github.com/hithere-xd/komionm.git && chmod +x komionm/komish
sh komionm/install.sh
```

## Just some stuff
1. This script works for `Termux` legacy version (`<= 0.83`) or later.
2. `GNU/Linux` version of install is untested, but i think it works just by looking at the command.
3. This is purely written in dash. if you have dash installed, then you shouldnt have any problem
4. This is by far the fastest komionm version

## Credits
1. [w3.komisanwamanga.com](https://w3.komisanwamanga.com) for the `Komi Can't Communicate` chapters and easy to scrape website.
2. StackOverflow that helps me making this script.
3. [ani-cli](https://github.com/pystardust/ani-cli) for UI inspiration.
