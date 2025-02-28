#!/usr/bin/env bash
npm run build

mkdir -p ../ready-to-deploy/turbu-bulma/build/css

cp *.html *.jpg "../ready-to-deploy/turbu-bulma/" 2>/dev/null
cp build/css/*.* "../ready-to-deploy/turbu-bulma/build/css/" 2>/dev/null
