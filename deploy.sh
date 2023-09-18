#!/bin/bash

if [ $2 == "true" ]; then
  echo "Deploying to dev"
  vev deploy --token "$1" --dev
else
  vev deploy --token "$1"
fi
