#!/bin/bash

RED=`tput setaf 1`
GREEN=`tput setaf 2`
NC=`tput sgr0` # No Color

echo "${RED}Nadogradnja u tijeku!${NC}"
echo "${RED}Update paketa${NC}"
apt update
echo "${RED}Upgrade paketa${NC}"
apt full-upgrade -y
echo "${RED}Deinstalacija nepotrebnih paketa${NC}"
apt autoremove -y
echo "${RED}Uklanjanje deinstaliranih paketa${NC}"
apt autoclean
echo "${GREEN}UPGRADE SISTEMA JE GOTOV!${NC}"
