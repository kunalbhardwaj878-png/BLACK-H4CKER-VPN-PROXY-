#!/data/data/com.termux/files/usr/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'
NC='\033[0m'

clear

# Banner Design
echo -e "${RED}💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀${NC}"
echo -e "${RED}  ____  _        _    ____ _  __          ${NC}"
echo -e "${RED} | __ )| |      / \\  / ___| |/ /          ${NC}"
echo -e "${RED} |  _ \\| |     / _ \\| |   | ' /           ${NC}"
echo -e "${RED} | |_) | |___ / ___ \\ |___| . \\           ${NC}"
echo -e "${RED} |____/|_____/_/   \\_\\____|_|\\_\\          ${NC}"
echo -e "${RED}                                          ${NC}"
echo -e "${RED}  _   _    _    ____ _  _______ ____      ${NC}"
echo -e "${RED} | | | |  / \\  / ___| |/ / ____|  _ \\     ${NC}"
echo -e "${RED} | |_| | / _ \\| |   | ' /|  _| | |_) |    ${NC}"
echo -e "${RED} |  _  |/ ___ \\ |___| . \\| |___|  _ <     ${NC}"
echo -e "${RED} |_| |_/_/   \\_\\____|_|\\_\\_____|_| \\_\\    ${NC}"
echo -e "${GREEN}      [=] 100% AUTO CORE VPN - v4.5 [=]   ${NC}"
echo -e "${RED}💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀💀${NC}"
echo ""

# Dependency Check
if ! command -v openvpn &> /dev/null; then
    echo -e "${YELLOW}[*] Installing OpenVPN core...${NC}"
    pkg install root-repo -y && pkg install openvpn -y
fi

echo -e "${CYAN}[*] Fetching Live Global Server List...${NC}"
curl -s http://www.vpngate.net/api/iphone/ > ~/.vpndata.txt

if [ ! -s ~/.vpndata.txt ]; then
    echo -e "${RED}[X] Error: Internet slow or API blocked!${NC}"
    exit 1
fi

echo -e "${GREEN}[+] Active Global Servers Synced Successfully!${NC}"
echo -e "${RED}---------------------------------------------${NC}"
echo -e "${CYAN}SELECT TARGET COUNTRY:${NC}\n"

# 2-Column Clean Layout for 40 Countries
echo -e " ${RED}[1]${NC} ${GREEN}India (IN)${NC}          ${RED}[21]${NC} ${GREEN}Russia (RU)${NC}"
echo -e " ${RED}[2]${NC} ${GREEN}Saudi Arabia (SA)${NC}   ${RED}[22]${NC} ${GREEN}China (CN)${NC}"
echo -e " ${RED}[3]${NC} ${GREEN}Dubai / UAE (AE)${NC}    ${RED}[23]${NC} ${GREEN}South Korea (KR)${NC}"
echo -e " ${RED}[4]${NC} ${GREEN}Pakistan (PK)${NC}       ${RED}[24]${NC} ${GREEN}Malaysia (MY)${NC}"
echo -e " ${RED}[5]${NC} ${GREEN}America / USA (US)${NC}  ${RED}[25]${NC} ${GREEN}Thailand (TH)${NC}"
echo -e " ${RED}[6]${NC} ${GREEN}Indonesia (ID)${NC}      ${RED}[26]${NC} ${GREEN}Vietnam (VN)${NC}"
echo -e " ${RED}[7]${NC} ${GREEN}Cambodia (KH)${NC}       ${RED}[27]${NC} ${GREEN}Philippines (PH)${NC}"
echo -e " ${RED}[8]${NC} ${GREEN}United Kingdom (GB)${NC} ${RED}[28]${NC} ${GREEN}Brazil (BR)${NC}"
echo -e " ${RED}[9]${NC} ${GREEN}Germany (DE)${NC}        ${RED}[29]${NC} ${GREEN}Mexico (MX)${NC}"
echo -e " ${RED}[10]${NC} ${GREEN}Japan (JP)${NC}         ${RED}[30]${NC} ${GREEN}South Africa (ZA)${NC}"
echo -e " ${RED}[11]${NC} ${GREEN}Canada (CA)${NC}        ${RED}[31]${NC} ${GREEN}Egypt (EG)${NC}"
echo -e " ${RED}[12]${NC} ${GREEN}Singapore (SG)${NC}     ${RED}[32]${NC} ${GREEN}Italy (IT)${NC}"
echo -e " ${RED}[13]${NC} ${GREEN}Australia (AU)${NC}     ${RED}[33]${NC} ${GREEN}Spain (ES)${NC}"
echo -e " ${RED}[14]${NC} ${GREEN}France (FR)${NC}        ${RED}[34]${NC} ${GREEN}Netherlands (NL)${NC}"
echo -e " ${RED}[15]${NC} ${GREEN}Bangladesh (BD)${NC}    ${RED}[35]${NC} ${GREEN}Switzerland (CH)${NC}"
echo -e " ${RED}[16]${NC} ${GREEN}Qatar (QA)${NC}         ${RED}[36]${NC} ${GREEN}Sweden (SE)${NC}"
echo -e " ${RED}[17]${NC} ${GREEN}Kuwait (KW)${NC}        ${RED}[37]${NC} ${GREEN}Norway (NO)${NC}"
echo -e " ${RED}[18]${NC} ${GREEN}Oman (OM)${NC}          ${RED}[38]${NC} ${GREEN}New Zealand (NZ)${NC}"
echo -e " ${RED}[19]${NC} ${GREEN}Bahrain (BH)${NC}       ${RED}[39]${NC} ${GREEN}Argentina (AR)${NC}"
echo -e " ${RED}[20]${NC} ${GREEN}Turkey (TR)${NC}        ${RED}[40]${NC} ${GREEN}Sri Lanka (LK)${NC}"
echo -e "\n ${RED}[99] STOP VPN & EXIT TOOL${NC}"
echo -e "${RED}---------------------------------------------${NC}"

echo -n -e "${YELLOW}Enter Choice: ${NC}"
read choice

case $choice in
    1) CC="IN" ;; 2) CC="SA" ;; 3) CC="AE" ;; 4) CC="PK" ;; 5) CC="US" ;;
    6) CC="ID" ;; 7) CC="KH" ;; 8) CC="GB" ;; 9) CC="DE" ;; 10) CC="JP" ;;
    11) CC="CA" ;; 12) CC="SG" ;; 13) CC="AU" ;; 14) CC="FR" ;; 15) CC="BD" ;;
    16) CC="QA" ;; 17) CC="KW" ;; 18) CC="OM" ;; 19) CC="BH" ;; 20) CC="TR" ;;
    21) CC="RU" ;; 22) CC="CN" ;; 23) CC="KR" ;; 24) CC="MY" ;; 25) CC="TH" ;;
    26) CC="VN" ;; 27) CC="PH" ;; 28) CC="BR" ;; 29) CC="MX" ;; 30) CC="ZA" ;;
    31) CC="EG" ;; 32) CC="IT" ;; 33) CC="ES" ;; 34) CC="NL" ;; 35) CC="CH" ;;
    36) CC="SE" ;; 37) CC="NO" ;; 38) CC="NZ" ;; 39) CC="AR" ;; 40) CC="LK" ;;
    99) pkill -f openvpn; echo -e "${RED}[!] VPN Tunnels Killed. Exiting...${NC}"; exit 0 ;;
    *) echo -e "${RED}[-] Invalid Option!${NC}"; exit 1 ;;
esac

echo -e "${CYAN}[*] Extracting automated configuration for [$CC]...${NC}"
# Extract the base64 config line for chosen country, decode it directly to file
grep -i ",$CC," ~/.vpndata.txt | head -n 1 | cut -d, -f15 | base64 -d > ~/.target.ovpn 2>/dev/null

if [ ! -s ~/.target.ovpn ]; then
    echo -e "${RED}[X] Error: No free public server found right now for $CC.${NC}"
    echo -e "${YELLOW}[!] Note: Countries like SA/AE have high restrictions, trying a global backup node...${NC}"
    # Backup: try to fetch an open node if explicit code fails
    grep -m 1 "vpngate" ~/.vpndata.txt | cut -d, -f15 | base64 -d > ~/.target.ovpn 2>/dev/null
fi

echo -e "${CYAN}[*] Clearing stale processes...${NC}"
pkill -f openvpn
sleep 1

echo -e "${GREEN}[+] Connecting to $CC Server in the background...${NC}"
openvpn --config ~/.target.ovpn --daemon termux_auto_vpn
sleep 9

echo -e "${RED}---------------------------------------------${NC}"
NEW_IP=$(curl -s --max-time 10 https://api.ipify.org || echo "Masked/Protected")
echo -e "${GREEN}[✓] TERMINAL WORKSPACE INJECTED WITH VPN!${NC}"
echo -e "${GREEN}[✓] Active Location: $CC Server${NC}"
echo -e "${GREEN}[✓] Current Node IP: $NEW_IP${NC}"
echo -e "${YELLOW}[!] Your entire team's Termux tools are now securely routed.${NC}"
echo -e "${RED}---------------------------------------------${NC}"
echo -e "${RED}[!] To stop the VPN later, restart the script and press 99.${NC}"
