#/bin/bash
cd /opt/app/culturaaccesible-system
touch travis.ci
bundle install
bundle exec rake prepare
bundle exec rake test
