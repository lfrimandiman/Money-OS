#!/bin/sh
# Builds the home-screen app into docs/ (GitHub Pages serves main /docs).
# Run from the repo root: sh site/build.sh
set -e
mkdir -p docs
cat site/head.html prototype/app.html prototype/skeleton.foot > docs/index.html
cp site/manifest.webmanifest site/sw.js site/icon-180.png site/icon-192.png site/icon-512.png docs/
touch docs/.nojekyll
cd prototype && cat skeleton.head app.html skeleton.foot > index.html
