#!/bin/bash

# Define colors
GREEN="\e[32m"
YELLOW="\e[33m"
CYAN="\e[36m"
RED="\e[31m"
RESET="\e[0m"

# Display banner
clear
echo -e "${CYAN}"
echo "███████╗██╗  ██╗██╗   ██╗██████╗  ██████╗ ████████╗██████╗ ███████╗ ██████╗ ";
echo "██╔════╝██║  ██║╚██╗ ██╔╝██╔══██╗██╔═══██╗╚══██╔══╝██╔══██╗██╔════╝██╔═══██╗";
echo "███████╗███████║ ╚████╔╝ ██████╔╝██║   ██║   ██║   ██████╔╝█████╗  ██║   ██║";
echo "╚════██║██╔══██║  ╚██╔╝  ██╔═══╝ ██║   ██║   ██║   ██╔══██╗██╔══╝  ██║   ██║";
echo "███████║██║  ██║   ██║   ██║     ╚██████╔╝   ██║   ██║  ██║███████╗╚██████╔╝";
echo "╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝      ╚═════╝    ╚═╝   ╚═╝  ╚═╝╚══════╝ ╚═════╝ ";
echo "                 Script by CraftingCrazeGaming i dont what is .                            ";
echo -e "${RESET}"

echo -e "${CYAN}Starting the installation process...${RESET}"

# Install Docker
echo -e "${YELLOW}Installing Docker...${RESET}"
curl -sSL https://get.docker.com/ | CHANNEL=stable bash

# Update package lists
echo -e "${YELLOW}Updating package lists...${RESET}"
sudo apt update

# Install Node.js and Git
echo -e "${YELLOW}Installing Node.js and Git...${RESET}"
sudo apt install -y nodejs git

# Clone the skyportd repository
echo -e "${YELLOW}Cloning the skyportd repository...${RESET}"
git clone https://github.com/Mehetab1234/skyportd.git

# Change to the skyportd directory
cd skyportd

# Install dependencies
echo -e "${YELLOW}Installing npm dependencies...${RESET}"
npm install

# Install PM2 globally
echo -e "${YELLOW}Installing PM2...${RESET}"
sudo npm install -g pm2

echo -e "${GREEN}Installation completed successfully!${RESET}"
