#!/bin/bash

# 设置脚本在发生错误时停止执行
set -e

# 创建构建目录
mkdir -p build
cd build

# 运行 CMake 和构建
echo "Configuring project with CMake..."
cmake ..
echo "Building project..."
cmake --build .

# 将生成的二进制文件移动到 bin 目录
mkdir -p ../bin
cp test_binary ../bin/

echo "Build completed. Binary is located in ../bin/test_binary"
