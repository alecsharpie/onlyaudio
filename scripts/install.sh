#!/bin/bash

# install all front-end and back-end dependencies

cd front-end
npm install

pip install python-dotenv
pip install python-watchfiles
pip install email-validator
pip install normalizer
pip install fastapi[all]
pip install psycopg2-binary

echo '--------------------------------------'
echo 'Installed dependencies!'
