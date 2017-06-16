#!/bin/bash
cd culturaaccesible-system
bundle exec rake &
cd ../culturaaccesible-app
ionic serve --all 
