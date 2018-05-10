#/bin/sh

rm -r dist
mkdir dist
mkdir dist/js
elm-make ./src/Main.elm --output dist/js/main.js
cp *.html dist/
cp -r src/css dist/
cp -r src/assets dist/

