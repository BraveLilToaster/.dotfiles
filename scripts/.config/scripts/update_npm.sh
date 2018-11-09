#!/bin/bash

prev_npm_v=$(npm -v)

pushd ~/.nvm/versions/node/$(node -v)/lib >/dev/null 2>&1

  npm i npm
popd >/dev/null 2>&1

echo "$prev_npm_v => $(npm -v)"
