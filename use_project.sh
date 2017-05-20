#/bin/bash
if [ -d "culturaaccesible-system" ]; then
  echo "System install ok"
fi

if [ -d "culturaaccesible-app" ]; then
  cd culturaaccesible-app
  npm install -f
  echo "App install ok"
  ionic serve --all
fi
