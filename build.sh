#!/usr/bin/env bash
npm run build

mkdir -p ../ready-to-deploy/turbu-bootstrap/build/css

cp *.html *.jpg "../ready-to-deploy/turbu-bootstrap/" 2>/dev/null
cp build/css/*.* "../ready-to-deploy/turbu-bootstrap/build/css/" 2>/dev/null
