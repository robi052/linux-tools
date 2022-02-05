#!/bin/bash

RED=`tput setaf 1`
GREEN=`tput setaf 2`
NC=`tput sgr0` # No Color

echo "${RED}Update in progress!${NC}"
echo "${RED}Packages update${NC}"
apt update
echo "${RED}Packages upgrade${NC}"
apt full-upgrade -y
echo "${RED}Uninstall old packages${NC}"
apt autoremove -y
echo "${RED}Delete old pckages${NC}"
apt autoclean
echo "${GREEN}SYSTEM UPGRADE IS FINISHED!${NC}"
