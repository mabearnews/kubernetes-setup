#!/bin/sh
scp -rp -i /ssh_id_rsa -o StrictHostKeyChecking=no root@$SCP_IP:/var/www/html/* $VOLUME
