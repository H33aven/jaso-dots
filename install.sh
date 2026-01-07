#!/bin/bash

GREEN='\e[32m'
RED='\e[31m' 
YELLOW='\e[33m'
NC='\e[0m'

echo -e "${GREEN}[+]${NC} Creating directories..."
mkdir -p ~/.config/hypr/hyprland || { echo -e "${RED}[-] Failed to create hyprland directory${NC}"; exit 1; }
mkdir -p ~/.config/illogical-impulse || { echo -e "${RED}[-] Failed to create illogical-impulse directory${NC}"; exit 1; }
mkdir -p ~/.config/neofetch || { echo -e "${RED}[-] Failed to create neofetch directory${NC}"; exit 1; }
mkdir -p ~/.config/vesktop || { echo -e "${RED}[-] Failed to create vesktop directory${NC}"; exit 1; }

echo -e "${GREEN}[+]${NC} Deploying configs..."
cp -f cfgs/hypr/hyprland/general.conf ~/.config/hypr/hyprland/ && echo -e "${GREEN}[+] general.conf deployed${NC}" || echo -e "${RED}[-] Failed to deploy general.conf${NC}"
cp -f cfgs/hypr/hyprland/keybinds.conf ~/.config/hypr/hyprland/ && echo -e "${GREEN}[+] keybinds.conf deployed${NC}" || echo -e "${RED}[-] Failed to deploy keybinds.conf${NC}"
cp -f cfgs/illogical-impulse/config.json ~/.config/illogical-impulse/ && echo -e "${GREEN}[+] config.json deployed${NC}" || echo -e "${RED}[-] Failed to deploy config.json${NC}"
cp -f cfgs/neofetch/config.conf ~/.config/neofetch/ && echo -e "${GREEN}[+] config.conf deployed${NC}" || echo -e "${RED}[-] Failed to deploy config.conf${NC}"
cp -r themes ~/.config/vesktop && echo -e "${GREEN}[+] config.conf deployed${NC}" || echo -e "${RED}[-] Failed to deploy config.conf${NC}"

hyprctl reload && echo -e "${GREEN}[+] Hyprland reloaded${NC}" || echo -e "${RED}[-] Failed to reload Hyprland${NC}"
echo -e "${GREEN}[+]${NC} Deployment complete. System configured."
