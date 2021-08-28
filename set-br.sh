#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/Dimas1441/error/main/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user corloussss@gmail.com
from corloussss@gmail.com
password vmlpmbagegqzhsqy
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc

#install bahan backup
figlet -f slant Install Auto Backup | lolcat
wget -O /usr/bin/autobackup https://raw.githubusercontent.com/Dimas1441/error/main/autobackup.sh && dos2unix autobackup && chmod +x autobackup

figlet -f slant Install Module Backup | lolcat
wget -O /usr/bin/backup https://raw.githubusercontent.com/Dimas1441/error/main/backup.sh && dos2unix backup && chmod +x backup

figlet -f slant Install Module Restore | lolcat
wget -O /usr/bin/restore https://raw.githubusercontent.com/Dimas1441/error/main/restore.sh && dos2unix restore && chmod +x restore

figlet -f slant Install Module Strt | lolcat
wget -O /usr/bin/strt https://raw.githubusercontent.com/Dimas1441/error/main/strt.sh && dos2unix strt && chmod +x strt

figlet -f slant Install Module Limit Speed | lolcat
wget -O /usr/bin/limit-speed https://raw.githubusercontent.com/Dimas1441/error/main/limit-speed.sh && dos2unix limit-speed && chmod +x limit-speed
cd
rm -f /root/set-br.sh
