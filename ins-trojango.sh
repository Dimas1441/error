#!/bin/bash
# Trojan Go
# =========================

# Domain 
domain=$(cat /etc/v2ray/domain)

# Uuid Service
uuid=$(cat /proc/sys/kernel/random/uuid)

# Trojan Go Akun 
mkdir -p /etc/trojan-go/
touch /etc/trojan-go/akun.conf
touch /etc/trojan-go/uuid.txt

# Installing Trojan Go
mkdir -p /etc/trojan-go/
chmod 777 /etc/trojan-go/
touch /etc/trojan-go/trojan-go.pid
wget -O /etc/trojan-go/trojan-go https://raw.githubusercontent.com/Dimas1441/ipvps/main/trojan-go
wget -O /etc/trojan-go/geoip.dat https://raw.githubusercontent.com/Dimas1441/ipvps/main/geoip.dat
wget -O /etc/trojan-go/geosite.dat https://raw.githubusercontent.com/Dimas1441/ipvps/main/geosite.dat
chmod +x /etc/trojan-go/trojan-go
cat <<EOF > /etc/trojan-go/config.json
{
    "run_type": "server",
    "local_addr": "0.0.0.0",
    "local_port": 443,
    "remote_addr": "127.0.0.1",
    "remote_port": 1421,
    "log_level": 1,
    "log_file": "/var/log/trojan-go.log",
    "password": [
        "$uuid"
    ],
  "disable_http_check": false,
  "udp_timeout": 60,
  "ssl": {
    "verify": true,
    "verify_hostname": true,
    "cert": "/etc/v2ray/v2ray.crt",
    "key": "/etc/v2ray/v2ray.key",
    "key_password": "",
    "cipher": "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256",
    "curves": "",
    "prefer_server_cipher": true,
    "sni": "$domain",
    "alpn": [
      "http/1.1"
    ],
    "session_ticket": true,
    "reuse_session": true,
    "plain_http_response": "",
    "fallback_addr": "127.0.0.1",
    "fallback_port": 443,
    "fingerprint": ""
  },
  "tcp": {
    "no_delay": true,
    "keep_alive": true,
    "prefer_ipv4": false
  },
  "mux": {
    "enabled": true,
    "concurrency": 64,
    "idle_timeout": 60
  },
  "router": {
    "enabled": true,
    "bypass": [],
    "proxy": [],
    "block": [],
    "default_policy": "proxy",
    "domain_strategy": "as_is",
    "geoip": "/etc/trojan-go/geoip.dat",
    "geosite": "/etc/trojan-go/geosite.dat"
  },
  "websocket": {
    "enabled": true,
    "path": "/brody",
    "host": "$domain"
  },
  "shadowsocks": {
    "enabled": false,
    "method": "AES-128-GCM",
    "password": ""
  },
  "transport_plugin": {
    "enabled": false,
    "type": "",
    "command": "",
    "plugin_option": "",
    "arg": [],
    "env": []
  },
  "forward_proxy": {
    "enabled": false,
    "proxy_addr": "",
    "proxy_port": 0,
    "username": "",
    "password": ""
  },
  "mysql": {
    "enabled": false,
    "server_addr": "localhost",
    "server_port": 3306,
    "database": "",
    "username": "",
    "password": "",
    "check_rate": 60
  },
  "api": {
    "enabled": false,
    "api_addr": "",
    "api_port": 0,
    "ssl": {
      "enabled": false,
      "key": "",
      "cert": "",
      "verify_client": false,
      "client_cert": []
    }
  }
}
EOF
cat <<EOF > /etc/systemd/system/trojan-go.service
[Unit]
Description=Trojan-Go 
Documentation=https://p4gefau1t.github.io/trojan-go/
After=network.target nss-lookup.target

[Service]
User=root
NoNewPrivileges=true
ExecStart=/etc/trojan-go/trojan-go -config /etc/trojan-go/config.json
Restart=on-failure
RestartSec=10s
LimitNOFILE=infinity

[Install]
WantedBy=multi-user.target

EOF

cat <<EOF > /etc/trojan-go/uuid.txt
$uuid
EOF
iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport 443 -j ACCEPT
iptables -I INPUT -m state --state NEW -m udp -p udp --dport 443 -j ACCEPT
iptables-save >/etc/iptables.rules.v4
netfilter-persistent save
netfilter-persistent reload
systemctl daemon-reload

# Starting
systemctl daemon-reload
systemctl enable trojan-go.service
systemctl start trojan-go

#tambahan
figlet -f slant Install Module TROJAN-GO | lolcat
wget -O /usr/bin/panel-trojan-go https://raw.githubusercontent.com/Dimas1441/ipvps/main/panel-trojan-go.sh && dos2unix /usr/bin/panel-trojan-go && chmod +x /usr/bin/panel-trojan-go
wget -O /usr/bin/add-trgo https://raw.githubusercontent.com/Dimas1441/ipvps/main/add-trgo.sh && dos2unix /usr/bin/add-trgo && chmod +x /usr/bin/add-trgo
wget -O /usr/bin/del-trgo https://raw.githubusercontent.com/Dimas1441/ipvps/main/del-trgo.sh && dos2unix /usr/bin/del-trgo && chmod +x /usr/bin/del-trgo
wget -O /usr/bin/renew-trgo https://raw.githubusercontent.com/Dimas1441/ipvps/main/renew-trgo.sh && dos2unix /usr/bin/renew-trgo && chmod +x /usr/bin/renew-trgo
wget -O /usr/bin/cek-trgo https://raw.githubusercontent.com/Dimas1441/ipvps/main/cek-trgo.sh && dos2unix /usr/bin/cek-trgo && chmod +x /usr/bin/cek-trgo
wget -O /usr/bin/xp-trgo https://raw.githubusercontent.com/Dimas1441/error/main/xp-trgo.sh && chmod +x /usr/bin/xp-trgo
echo "0 0 * * * root xp-trgo" >> /etc/crontab
echo "DONE INSTALL TROJAN-GO" 