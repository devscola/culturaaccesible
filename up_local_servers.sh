#!/bin/bash
download_system_folder () {
  git clone https://github.com/devscola/culturaaccesible-system.git
}
download_app_folder () {
  git clone https://github.com/devscola/culturaaccesible-app.git
}
close_connection () {
  fuser -k 4567/tcp
}
up_bundle_in_system () {
  cd culturaaccesible-system
  bundle exec rake &
  sleep 4
  cd ..
}
up_ionic () {
  cd culturaaccesible-app
  ionic serve --all 
  cd ..
}
install_bundle_in_system () {
  cd culturaaccesible-system
  bundle install --path vendor --jobs 3
  cd ..
}
install_bundle_in_app () {
  cd culturaaccesible-app
  bundle install --path vendor --jobs 3
  cd ..
}
install_bundle_in_testapp () {
  cd test-app
  bundle install --path vendor --jobs 3
  cd ..
}
install_npm_in_app () {
  cd culturaaccesible-app
  npm install -f
  cd ..
}

if [ ! -d "culturaaccesible-system" ]; then
  download_system_folder
fi

if [ ! -d "culturaaccesible-app" ]; then
  download_app_folder
fi

if hash docker-compose 2>/dev/null; then
  docker-compose build
else
  if [ ! -d "culturaaccesible-system/vendor" ]; then
      install_bundle_in_system
  fi

  if [ ! -d "culturaaccesible-app/vendor" ]; then
      install_bundle_in_app
      install_bundle_in_testapp
      install_npm_in_app
  fi

  if [ ! -d "test-app/vendor" ]; then
      install_bundle_in_testapp
  fi
fi

if hash docker-compose 2>/dev/null; then
  docker-compose up
else
  close_connection
  up_bundle_in_system
  up_ionic
fi
