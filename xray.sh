#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ad2cde26-672c-434d-8caf-ab0752f1c70d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

