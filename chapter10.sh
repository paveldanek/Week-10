#! /bin/bash

RED='\033[1;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RESET='\033[0m'

clear
echo -e "${RED}This is Chapter 10 Script."
echo -e "${BLUE}We'll start with listing programs or processes using or listening on ports:${RESET}"
sudo lsof -n -i
echo -e "${BLUE}Let's see, if somebody's browsing the web; we'll start dumping"
echo -e "both ${GREEN}secure ${BLUE}and ${RED}unsecure ${BLUE}content onto the screen."
echo -e "${YELLOW}To stop the process, press ${RED}<CTRL>+C${YELLOW} anytime."
echo -e "Now press <ENTER>.${RESET}"
read
sudo tcpdump port 80 or port 443
echo -e "${BLUE}Now let's see, if any ports on your computer are being used:${RESET}"
sudo nmap 127.0.0.1
echo -e "${BLUE}A little more information about ports being used:"
echo -e "${YELLOW}Press <ENTER>.${RESET}"
read
sudo rpcinfo -p localhost
echo -e "${BLUE}And finally a list of Unix domain sockets currently in use:"
echo -e "${YELLOW}Press <ENTER> when ready.${RESET}"
read
sudo lsof -U | less -P "Navigate in any direction; to end, press 'Q'"
echo -e "${GREEN}That's the best of me today. \033[38;5;15;48;5;201m  THANKS!  ${RESET}"
echo ""

