#/bin/bash
if [ -d "culturaaccesible-system" ]; then
  echo "System install ok"
fi

if [ -d "culturaaccesible-app" ]; then
  cd culturaaccesible-app
  echo "The first start-up takes a long time to complete"
  bundle install
  npm install -f
  echo "App install ok"
  ionic serve --all
fi
