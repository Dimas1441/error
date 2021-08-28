#!/bin/bash
wget -O /usr/bin/panel-v2ray https://raw.githubusercontent.com/Dimas1441/error/main/panel-v2ray.sh && dos2unix /usr/bin/panel-v2ray && chmod +x /usr/bin/panel-v2ray
wget -O /usr/bin/panel-vless https://raw.githubusercontent.com/Dimas1441/error/main/panel-vless.sh && dos2unix /usr/bin/panel-vless && chmod +x /usr/bin/panel-vless
wget -O /usr/bin/panel-trojan https://raw.githubusercontent.com/Dimas1441/error/main/panel-trojan.sh && dos2unix /usr/bin/panel-trojan && chmod +x /usr/bin/panel-trojan
wget -O /usr/bin/add-host https://raw.githubusercontent.com/Dimas1441/error/main/add-host.sh && chmod +x /usr/bin/add-host
wget -O /usr/bin/about https://raw.githubusercontent.com/Dimas1441/error/main/about.sh && chmod +x /usr/bin/about
wget -O /usr/bin/menu https://raw.githubusercontent.com/Dimas1441/error/main/menu.sh && dos2unix /usr/bin/menu && chmod +x /usr/bin/menu
wget -O /usr/bin/speedtest https://raw.githubusercontent.com/halluboys/xzvnct/main/speedtest_cli.py && chmod +x /usr/bin/speedtest
wget -O /usr/bin/info https://raw.githubusercontent.com/Dimas1441/error/main/info.sh && chmod +x /usr/bin/info
wget -O /usr/bin/ram https://raw.githubusercontent.com/Dimas1441/error/main/ram.sh && chmod +x /usr/bin/ram
wget -O /usr/bin/clear-log https://raw.githubusercontent.com/Dimas1441/error/main/clear-log.sh && chmod +x /usr/bin/clear-log
wget -O /usr/bin/change-port https://raw.githubusercontent.com/Dimas1441/error/main/change.sh && chmod +x /usr/bin/change-port
wget -O /usr/bin/port-ovpn https://raw.githubusercontent.com/Dimas1441/error/main/port-ovpn.sh && chmod +x /usr/bin/port-ovpn
wget -O /usr/bin/port-ssl https://raw.githubusercontent.com/Dimas1441/error/main/port-ssl.sh && chmod +x /usr/bin/port-ssl
wget -O /usr/bin/port-wg https://raw.githubusercontent.com/Dimas1441/error/main/port-wg.sh && chmod +x /usr/bin/port-wg
wget -O /usr/bin/port-tr https://raw.githubusercontent.com/Dimas1441/error/main/port-tr.sh && chmod +x /usr/bin/port-tr
wget -O /usr/bin/port-sstp https://raw.githubusercontent.com/Dimas1441/error/main/port-sstp.sh && chmod +x /usr/bin/port-sstp
wget -O /usr/bin/port-squid https://raw.githubusercontent.com/Dimas1441/error/main/port-squid.sh && chmod +x /usr/bin/port-squid
wget -O /usr/bin/port-ws https://raw.githubusercontent.com/Dimas1441/error/main/port-ws.sh && chmod +x /usr/bin/port-ws
wget -O /usr/bin/port-vless https://raw.githubusercontent.com/Dimas1441/error/main/port-vless.sh && chmod +x /usr/bin/port-vless
wget -O /usr/bin/wbmn https://raw.githubusercontent.com/Dimas1441/error/main/webmin.sh && chmod +x /usr/bin/wbmn
wget -O /usr/bin/cfd https://raw.githubusercontent.com/Dimas1441/error/main/cfd.sh && chmod +x /usr/bin/cfd
wget -O /usr/bin/cff https://raw.githubusercontent.com/Dimas1441/error/main/cff.sh && chmod +x /usr/bin/cff
wget -O /usr/bin/cfh https://raw.githubusercontent.com/Dimas1441/error/main/cfh.sh && chmod +x /usr/bin/cfh
wget -O /usr/bin/autoreboot https://raw.githubusercontent.com/Dimas1441/error/main/autoreboot.sh && chmod +x /usr/bin/autoreboot
wget -O /usr/bin/running https://raw.githubusercontent.com/Dimas1441/error/main/running.sh && chmod +x /usr/bin/running
wget -O /usr/bin/restart https://raw.githubusercontent.com/Dimas1441/error/main/restart.sh && chmod +x /usr/bin/restart
wget -O /usr/bin/xp-ws https://raw.githubusercontent.com/Dimas1441/error/main/xp-ws.sh && chmod +x /usr/bin/xp-ws
wget -O /usr/bin/xp-tr https://raw.githubusercontent.com/Dimas1441/error/main/xp-tr.sh && chmod +x /usr/bin/xp-tr
wget -O /usr/bin/xp-vless https://raw.githubusercontent.com/Dimas1441/error/main/xp-vless.sh && chmod +x /usr/bin/xp-vless
wget -O /usr/bin/xp https://raw.githubusercontent.com/Dimas1441/error/main/xp.sh && chmod +x /usr/bin/xp
wget -O /usr/bin/certv2ray https://raw.githubusercontent.com/Dimas1441/errpr/main/cert.sh && chmod +x /usr/bin/certv2ray
echo "0 0 * * * root xp-ws" >> /etc/crontab
echo "0 0 * * * root xp-tr" >> /etc/crontab
echo "0 0 * * * root xp-vless" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
echo "0 5 * * * root clear-log && reboot" >> /etc/crontab
echo "Selesai Install Module Tambahan"

