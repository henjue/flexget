#!/bin/sh
if [ -f ~/.flexget/.config-lock ]; then
    rm ~/.flexget/.config-lock
fi

# echo "run flexget web passwd $WEB_PASSWORD"
flexget -c /config/config.yml web passwd $WEB_PASSWORD
flexget -c /config/config.yml execute --now
flexget -c /config/config.yml daemon start