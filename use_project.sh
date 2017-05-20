#/bin/bash
if [ -d "culturaaccesible-system" ]; then
  echo $(date '+%Y %b %d %H:%M') > control.log
fi

if [ -d "culturaaccesible-app" ]; then
  cd culturaaccesible-app
  npm install -f
  ionic serve --all
fi
