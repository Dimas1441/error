#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.me/ip);
clear
if [ -f "/etc/v2ray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
mkdir /var/lib/premium-script;
echo "IP=" >> /var/lib/premium-script/ipvps.conf
wget https://raw.githubusercontent.com/Dimas1441/error/main/cf.sh && dos2unix cf.sh && chmod +x cf.sh && ./cf.sh
#install ssh ovpn
figlet -f slant Install SSH | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/ssh-vpn.sh && dos2unix ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
figlet -f slant Install SSTP | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/sstp.sh && dos2unix sstp.sh && chmod +x sstp.sh && ./sstp.sh
#install ssr
figlet -f slant Install SSR | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/ssr.sh && dos2unix ssr.sh && chmod +x ssr.sh && ./ssr.sh
wget https://raw.githubusercontent.com/Dimas1441/error/main/sodosok.sh && dos2unix sodosok.sh && chmod +x sodosok.sh && ./sodosok.sh
#install wg
figlet -f slant Install WIREGUARD | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/wg.sh && dos2unix wg.sh && chmod +x wg.sh && ./wg.sh
#install v2ray
figlet -f slant Install V2RAY | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/ins-vt.sh && dos2unix ins-vt.sh && chmod +x ins-vt.sh && ./ins-vt.sh
#install L2TP
figlet -f slant Install L2TP | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/ipsec.sh && dos2unix ipsec.sh && chmod +x ipsec.sh && ./ipsec.sh
#install trojan-go
figlet -f slant Install TROJAN-GO | lolcat
wget https://raw.githubusercontent.com/Dimas1441/error/main/ins-trojango.sh && dos2unix ins-trojango.sh && chmod +x ins-trojango.sh && ./ins-trojango.sh
#module tambahan
wget https://raw.githubusercontent.com/Dimas1441/error/main/install.sh && dos2unix install.sh && chmod +x install.sh && ./install.sh

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/ipsec.sh
rm -f /root/ins-trojango.sh
rm -r /root/install.sh
cat <<EOF> /etc/systemd/system/autosett.service
[Unit]
Description=autosetting
Documentation=https://premium-server.xyz

[Service]
Type=oneshot
ExecStart=/bin/bash /etc/set.sh
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl enable autosett
wget -O /etc/set.sh "https://raw.githubusercontent.com/Dimas1441/error/main/set.sh"
chmod +x /etc/set.sh
history -c
echo "1.2" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Autoscript Premium By Brody-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt
echo "   - WS-SSH                 : 1412 " | tee -a log-install.txt
echo "   - WS-SSL                 : 1413 " | tee -a log-install.txt
echo "   - WS-OVPN                : 1412 " | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1420"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1415:2425"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 1416:2426"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 1417:2427"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 8442"  | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880"  | tee -a log-install.txt
echo "   - Trojan                  : 1419"  | tee -a log-install.txt
echo "   - TrojanGO                : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - Dev/Main                : Brody"  | tee -a log-install.txt
echo "   - Telegram                : T.me/brody"  | tee -a log-install.txt
echo "   - Instagram               :  "  | tee -a log-install.txt
echo "   - Whatsapp                : "  | tee -a log-install.txt
echo "   - Facebook                : https://www.facebook.com" | tee -a log-install.txt
echo ""
echo "------------------Script Created By Brody-----------------" | tee -a log-install.txt
echo ""
echo " Reboot 10 Sec"
sleep 10
rm -f setup.sh
reboot
