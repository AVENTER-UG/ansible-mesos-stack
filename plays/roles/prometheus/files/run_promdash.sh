#!/bin/bash

working_dir="/opt/promdash"

cd $working_dir

echo "Running bundle install..."
echo ""
bash -lc "bundle install --without mysql postgresql"

echo "DB migrate..." 
echo ""
bash -lc "bundle exec rake db:migrate"

echo "Asset precompile..."
echo ""
bash -lc "bundle exec rake assets:precompile"

echo "starting service..."
echo ""
bash -lc "bundle exec thin start -d"

if [[ $? -eq 0 ]]; then
	echo "Success!"
	exit 0
else
	echo "Failed!"
	exit 1
fi
