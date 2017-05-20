#/bin/bash
echo "Preparing project"
echo "\nDetect if exist system folder"
if [ ! -d "culturaaccesible-system" ]; then
  git clone https://github.com/devscola/culturaaccesible-system.git
else
echo "Ok."
fi

echo "\nDetect if exist app folder"
if [ ! -d "culturaaccesible-app" ]; then
  git clone https://github.com/devscola/culturaaccesible-app.git
else
echo "Ok."
fi

echo "\nClonning is update. You must run 'docker-compose up --build' and tests."

