#!/bin/bash

RED=`tput setaf 1`
GREEN=`tput setaf 2`
NC=`tput sgr0` # No Color

echo "${RED}Update in progress!${NC}"
echo "${RED}Packages update${NC}"
sudo apt update
echo "${RED}Packages upgrade${NC}"
sudo apt full-upgrade -y
echo "${RED}Uninstall old packages${NC}"
sudo apt autoremove -y
echo "${RED}Delete old packages${NC}"
sudo apt autoclean
echo "${GREEN}SYSTEM UPGRADE IS FINISHED!${NC}"
