#!/bin/bash

function build(){
    yarn build:$1
    zip -r build.zip ./build/*
    scp ./build.zip root@117.50.4.30:/data/myweb
}

if [ $1 == "pre" ]; then
build $1
elif [ $1 == "prod" ]; then
build $1
else
echo "your params is not pre or prod"
fi