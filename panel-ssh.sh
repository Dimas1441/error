#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
echo "Checking VPS"
clear
echo -e ""
echo -e "\e[1;32m═════════════════════════════════════════\e[m" | lolcat
echo -e "          \e[1;31m\e[1;31m═[\e[mSSH & OpenVPN Menu\e[1;31m]═\e[m" 
echo -e "\e[1;32m═════════════════════════════════════════\e[m" | lolcat
echo -e " 1\e[1;33m)\e[m  Add SSH & OpenVPN Account"
echo -e " 2\e[1;33m)\e[m  Trial SSH & OpenVPN"
echo -e " 3\e[1;33m)\e[m  Renew SSH & OpenVPN Account"
echo -e " 4\e[1;33m)\e[m  Hapus SSH & OpenVPN Account"
echo -e " 5\e[1;33m)\e[m  Check User Login SSH & OpenVPN"
echo -e " 6\e[1;33m)\e[m  List Member SSH & OpenVPN"
echo -e " 7\e[1;33m)\e[m  Hapus User Expired SSH & OpenVPN"
echo -e " 8\e[1;33m)\e[m  Setting Autokill SSH"
echo -e " 9\e[1;33m)\e[m  Cek Users Multi Login SSH"
echo -e " 10\e[1;33m)\e[m Restart Service Dropbear, Squid3"
echo -e "     OpenVPN dan SSH"
echo -e ""
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e " x)   MENU"
echo -e "\e[1;32m══════════════════════════════════════════\e[m" | lolcat
echo -e ""
read -p "     Please Input Number  [1-10 or x] :  "  ssh
echo -e ""
read -p "     Please Input Number  [1-10 or x] :  "  ssh
echo -e ""
case $panel-ssh in
1)
add-ssh
;;
2)
trial-ssh
;;
3)
renew-ssh
;;
4)
hapus-ssh
;;
5)
cek-ssh
;;
6)
member-ssh
;;
7)
del-ssh
;;
8)
auto-kill-ssh
;;
9)
cek-multi-ssh
;;
10)
restart-service-ssh
;;
x)
exit
;;
*)
echo "Please enter an correct number"
;;
esac
