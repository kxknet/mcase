yum -y install wget supervisor mc git
curl -O http://vestacp.com/pub/vst-install.sh
bash vst-install.sh --nginx yes --phpfpm yes --apache no --named no --remi no --vsftpd no --proftpd no --iptables yes --fail2ban yes --quota no --exim no --dovecot no --spamassassin no --clamav no --softaculous no --mysql no --postgresql no --hostname $HOSTNAME --email myke46344@gm666ail.com
mkdir -p /home/centos/sup/
mkdir -p /home/centos/ssl/
git clone https://github.com/kxknet/mcase.git
cp /home/centos/mcase/supervisord.conf /etc/supervisord.conf
cp /home/centos/mcase/start-caddy.conf /home/centos/sup/start-caddy.conf
cp /home/centos/mcase/ip.sh /home/centos/ip.sh
cp /home/centos/mcase/ip.txt /home/centos/ip.txt
cp /home/centos/mcase/Caddyfile /home/centos/Caddyfile
chown centos.centos /home/centos/ip.txt
chown centos.centos /home/centos/ip.sh
chown centos.centos /home/centos/ssl/
cp /home/centos/mcase/caddy /usr/local/bin/caddy
chmod +x /usr/local/bin/caddy
