#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"

echo -e "${CYAN}Skyport-Installer${RESET}"
echo -e "${YELLOW}Select an option:${RESET}"
echo "1) Install Panel"
echo "2) Install Wings"
echo "3) Install Panel + Wings"
echo "4) Install Node.js"
echo -n "Enter your choice: "
read choice

case $choice in
    1)
        echo -e "${GREEN}Installing Skyport Panel...${RESET}"
        bash <(curl -s https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/panel.sh)
        ;;
    2)
        echo -e "${GREEN}Installing Wings...${RESET}"
        bash <(curl -s https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;
    3)
        echo -e "${GREEN}Installing Panel + Wings...${RESET}"
        bash <(curl -s https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/panel.sh)
        bash <(curl -s https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.sh)
        ;;
    4)
        echo -e "${GREEN}Installing Node.js...${RESET}"
        bash <(curl -s https://raw.githubusercontent.com/Mehetab1234/Skyport-installer/main/scripts/node.js.sh)
        ;;
    *)
        echo -e "${RED}Invalid choice! Please run the script again.${RESET}"
        exit 1
        ;;
esac

echo -e "${GREEN}Skyport-Installer process completed!${RESET}"
