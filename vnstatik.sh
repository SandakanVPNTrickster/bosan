#!/bin/bash
Yellow='\e[0;33m'
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
ORANGE='\033[0;36m'
cyan='\e[36m'
NC='\e[0m'


MYIP=$(curl -sS ipv4.icanhazip.com)

dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"


echo -e "${green}═══════════════════════════════════════════════${NC}"
echo -e "\e[36m Traffic            Today"
echo -e "\e[36m Download           $dtoday"
echo -e "\e[36m Upload             $utoday"
echo -e "${green}═══════════════════════════════════════════════${NC}"
echo -e "\e[36m Traffic            Yesterday"
echo -e "\e[36m Download            $dyest"
echo -e "\e[36m Upload              $uyest"
echo -e "${green}═══════════════════════════════════════════════${NC}"
echo -e "\e[36m Traffic             Month"
echo -e "\e[36m Download            $dmon"
echo -e "\e[36m Upload              $umon"
echo -e "${green}═══════════════════════════════════════════════${NC}"
echo -e "\e[36m STAT              TOTAL"
echo -e "\e[36m Today             $ttoday"
echo -e "\e[36m Yesterday         $tyest"
echo -e "\e[36m Month             $tmon"
echo -e "${green}═══════════════════════════════════════════════${NC}"
echo -e "       Premium VPS by @SandakanVPN"
echo -e "${green}═══════════════════════════════════════════════${NC}"
echo -e   ""
       read -n 1 -s -r -p "Press any key to back on menu"
       menu
