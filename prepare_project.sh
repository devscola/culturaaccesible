#/bin/bash
echo "Preparing project"
if [ ! -d "culturaaccesible-system" ]; then
  git clone https://github.com/devscola/culturaaccesible-system.git
fi

if [ ! -d "culturaaccesible-app" ]; then
  git clone https://github.com/devscola/culturaaccesible-app.git
fi
