#!/bin/bash
function build(){
    echo $1
    # 执行打包命令
    yarn build:$1
    # 压缩打包后的文件
    zip -r build.zip ./build/*
    # 迁移压缩文件到服务器对应目录下
    scp ./build.zip root@117.50.4.30:/data/myweb/build
    # 删除上传后的压缩文件
    rm -rf build.zip
}
if [ $1 == "pre" ]; then
build $1
elif [ $1 == "prod" ]; then
build $1
else
echo "your params is not pre or prod"
fi