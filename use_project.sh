#/bin/bash
if [ -d "culturaaccesible-system" ]; then
  echo "System install ok"
fi

if [ -d "culturaaccesible-app" ]; then
  cd culturaaccesible-app
  bundle install --path vendor
  echo "The first start-up takes a long time to complete"
  npm install -f
  echo "App install ok"
  ionic serve --all
fi
