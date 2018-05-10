#/bin/sh

mkdir dist
elm-make ./src/Main.elm --output dist/main.js
cp *.html dist/
cp -r src/css dist/
cp -r src/assets dist/

