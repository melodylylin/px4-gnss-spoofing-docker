#!/bin/bash
set -e
set -x

sudo mkdir -p gz_ws/src
cd gz_ws/src
sudo wget https://raw.githubusercontent.com/melodylylin/gazebodistro/master/collection-garden.yaml
vcs import < collection-garden.yaml
cd ..
colcon build --merge-install
