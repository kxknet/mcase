curl -O http://vestacp.com/pub/vst-install.sh
bash vst-install.sh --nginx yes --phpfpm yes --apache no --named no --remi no --vsftpd no --proftpd no --iptables yes --fail2ban yes --quota no --exim no --dovecot no --spamassassin no --clamav no --softaculous no --mysql no --postgresql no --hostname vps-77777675.vps.ovh.net --email fake666446@gmail.com
yum -y install supervisord mc
mkdir -p /home/centos/sup/
cd /home/centos/sup/
wget https://raw.githubusercontent.com/kxknet/mcase/master/start-caddy.conf
cd /home/centos/
wget https://raw.githubusercontent.com/kxknet/mcase/master/supervisord.conf
wget https://raw.githubusercontent.com/kxknet/mcase/master/caddy
cp /home/centos/supervisord.conf /etc/supervisord.conf
cp /home/centos/caddy /usr/local/bin/caddy
chmod +x /usr/local/bin/caddy
