#!/bin/bash
#
# Sorting logs script
# By VT member disappoint

bla=`tput setaf 0`	#black color.
red=`tput setaf 1`      #red color.
gre=`tput setaf 2`      #green color.
yel=`tput setaf 3`      #yellow color.
blu=`tput setaf 4`	#blue color.
mag=`tput setaf 5`	#magenta color.
cya=`tput setaf 6`	#cyan color.
whi=`tput setaf 7`	#white color
cur=`pwd`		#current path.

clear
tput setaf 5
echo "   _______  _______  ______    _______         _______  __   __          __   __  _______ "
echo "  |       ||       ||    _ |  |       |       |  _    ||  | |  |        |  |_|  ||       |"
echo "  |  _____||   _   ||   | ||  |_     _| ____  | |_|   ||  |_|  | ____   |       ||    ___|"
echo "  | |_____ |  | |  ||   |_||_   |   |  |____| |       ||       ||____|  |       ||   |___ "
echo "  |_____  ||  |_|  ||    __  |  |   |         |  _   | |_     _|        |       ||    ___|"
echo "   _____| ||       ||   |  | |  |   |         | |_|   |  |   |          | ||_|| ||   |___ "
echo "  |_______||_______||___|  |_|  |___|         |_______|  |___|          |_|   |_||_______|"

tput setaf 1
echo "Logs will be saved into $cur"
tput setaf 2
echo -n "Please insert your unsorted logs filename: $red"
read fname

tput sgr0
touch "logs.txt"
sed -n -e '/\xE2\x98\x85/{p;n;}' $fname > logs.txt
