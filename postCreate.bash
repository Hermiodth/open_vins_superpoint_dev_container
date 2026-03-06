#!/bin/bash

echo "postCreate script started"

cd opencv
mkdir build
cd build
cmake -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
make -j 30
sudo make install

echo "postCreate script finished"