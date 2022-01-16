#!/bin/sh

# config
cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": $PORT,
      "protocol": "$PROTOCOL",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "$UUID"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}		
EOF

# run
/usr/bin/v2ray -config /etc/config.json
