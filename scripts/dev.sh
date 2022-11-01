#!/bin/bash

# NOTE: This will currently only start the back-end, needs to be modified to start the front-end in watch mode too

uvicorn api.main:app --reload
