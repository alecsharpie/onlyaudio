#!/bin/bash

# build the front-end and start the API server

cd front-end && npx next build && npx next export

cd ../
uvicorn api.main:app
