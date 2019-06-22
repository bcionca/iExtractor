#!/bin/bash

cp config.sample config
git submodule update --init tools/xpwn

cd tools
cd vfdecrypt && make
cd ..
cd lzssdec && make
cd ..
cd xpwn && mkdir builddir && cd builddir && cmake .. && make
cd ..
mkdir ipsw
mkdir out

