#!/usr/bin/env bash
set -e
LIB="scripted-storm.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/ellisenne/turboaislekit/releases/download/calm-harbor-cosmic-garden/scripted-storm.a"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
