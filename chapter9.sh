#! /bin/bash

RED='\033[1;31m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RESET='\033[0m'

clear
echo -e "${GREEN}Hello and welcome to Chapter 9!"
echo -e "${BLUE}First, let's see your Ethernet configuration:"
echo -e "${YELLOW}Press <ENTER> to continue.${RESET}"
read
ifconfig | more
echo ""
echo -e "${BLUE}Let's explore wireless networks available."
echo -e "${YELLOW}Please enter the wireless ${RED}interface identifier${YELLOW} (from previous command, probably starts with 'w'):"
echo -e "It may take a second.${RESET}"
read WIFI
sudo iw dev $WIFI scan | less -P "Scroll in any direction. Press 'Q' to quit."
echo -e "${YELLOW}Press <ENTER> to continue.${RESET}"
read
echo -e "${BLUE}Let's see our routing table:${RESET}"
route -n
echo -e "${BLUE}Pick your favorite website's address and we'll see,"
echo -e "what its public IPv4/IPv6 addresses are and try to trace our"
echo -e "route to it:${RESET}"
read WEBSITE
echo ""
host $WEBSITE
echo ""
traceroute $WEBSITE | more
echo ""
echo -e "${BLUE}Let's take a look at our Firewall policies and rules.${RESET}"
sudo iptables -L
echo -e "${BLUE}By changing these, you can easily impact trafic to/from"
echo -e "hosts or networks.${RESET}"
echo -e "${YELLOW}Press <ENTER> to continue.${RESET}"
read
echo -e "${BLUE}Here's a table that resolves local ip addresses to MAC addresses:${RESET}"
arp -n
echo ""
echo -e "${GREEN}That's it!"
echo -e "\033[38;5;57mThank \033[38;5;93myou \033[38;5;129mfor \033[38;5;165myour \033[38;5;201mtime!${RESET}"
echo ""

