#!/bin/bash
# 首先备份当前版本v1.0.0
zip -r build.zip.old ./build/*
cp ./build.zip.old /data/myweb/backup/build.zip.old
# 解压最新的版本v1.0.1
unzip -o build.zip
# 获取当前的时间，拼接下
current_time=$(date "+%Y%m%d%H")
cd /data/myweb/backup
mv build.zip.old build.zip."$current_time"