#!/usr/bin/env bash

# 1. Build for production: ./dist/
# 2. Run docker-compose
npm run build && sudo docker-compose build && sudo docker-compose up