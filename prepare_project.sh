#/bin/bash
echo "Preparing project"
echo "Detect if exist system folder"
if [ ! -d "culturaaccesible-system" ]; then
  git clone https://github.com/devscola/culturaaccesible-system.git
else
echo "Ok."
echo $(date '+%Y %b %d %H:%M') > control.log
echo
fi

echo "Detect if exist app folder"
if [ ! -d "culturaaccesible-app" ]; then
  git clone https://github.com/devscola/culturaaccesible-app.git
else
echo "Ok."
echo $(date '+%Y %b %d %H:%M') > control.log
echo
fi

echo "Clonning is update. You must run 'docker-compose up --build' and tests."

if [ ! -d "culturaaccesible-system/public/vendor/classjs" ]; then
  mkdir -p culturaaccesible-system/public/vendor/classjs
fi

if [ ! -d "culturaaccesible-system/public/vendor/polymer" ]; then
  mkdir -p culturaaccesible-system/public/vendor/polymer
fi

echo "The system is already"

