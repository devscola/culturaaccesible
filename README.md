# README.md

a. Prepare project by executing:

sh prepare_system.sh

it download your git's and create vendor folders if necessary.


b. Build the project:

docker-compose build


c. Up the project:

docker-compose up


d. For run test of api and system folder:

docker-compose run system bundle exec rake test


e. For run test of app ionic:

docker-compose run system bundle exec rspec


