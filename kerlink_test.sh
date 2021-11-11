 #!/bin/bash

cp /etc/lorad/fevo/AU915-AU.json /etc/lorad/lorad.json
cp lorad /etc/default/lorad
cp lorafwd /etc/default/lorafwd
cp lorafwd.toml /etc/lorafwd.toml
cp provisioning /etc/network/ofono/provisioning

chmod +x heart.sh

crontab -l | { cat; echo "*/5 * * * * /home/root/mawat-conf/heart.sh"; } | crontab -

