#!/bin/bash
NGINX_AVAILABLE_VHOSTS='/home/centos/ssl'
# Create the Nginx config file.
cat > $NGINX_AVAILABLE_VHOSTS/$1.conf <<EOF
http://$1, http://www.$1, https://$1 {
bind $2
gzip {
        level 9
        min_length 1
    }
redir https://www.$1{uri}
}
https://www.$1 {
bind $2
gzip {
        level 9
        min_length 1
    }
proxy / https://207.180.245.138 {
 transparent
insecure_skip_verify
    }
}
EOF
