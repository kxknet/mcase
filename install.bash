mkdir -p /home/centos/sup/
cd /home/centos/sup/
wget https://raw.githubusercontent.com/kxknet/mcase/master/start-caddy.conf
cd /home/centos/
wget https://raw.githubusercontent.com/kxknet/mcase/master/supervisord.conf
wget https://raw.githubusercontent.com/kxknet/mcase/master/caddy
cp /home/centos/supervisord.conf /etc/supervisord.conf
cp /home/centos/caddy /usr/local/bin/caddy
chmod +x /usr/local/bin/caddy
