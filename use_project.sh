#/bin/bash
if [ -d "culturaaccesible-system" ]; then
  echo $(date '+%Y %b %d %H:%M') > control.log
fi

if [ -d "culturaaccesible-app" ]; then
  bundle install
  cd culturaaccesible-app
  npm install -f
  bundle install
  ionic serve
fi
