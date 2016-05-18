
# Make backup on server
ssh -i /ssh_id_rsa -o StrictHostKeyChecking=no root@107.170.242.240 -t 'mysqldump --opt -u wordpress -pEzgOr2RLtk wordpress > /tmp/wordpressbak.sql'

# Copy backup to correct hostPath
scp -i /ssh_id_rsa -o StrictHostKeyChecking=no root@107.170.242.240:/tmp/wordpressbak.sql $VOLUME/wordpressbak.sql

