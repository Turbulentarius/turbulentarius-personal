#!/usr/bin/env bash
npm run build

mkdir -p ../ready-to-deploy/turbu-bootstrap/build/css

cp *.html *.jpg ../ready-to-deploy/turbu-bootstrap/
cp build/css/*.* ../ready-to-deploy/turbu-bootstrap/build/css/
