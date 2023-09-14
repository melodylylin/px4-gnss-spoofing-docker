#!/bin/bash
if [ ! -d ./work/px4 ] ; then
    cd ./work
    git clone git@github.com:kpant14/PX4-Autopilot px4
    cd px4
    git tag v1.14.0-beta2
    cd ../..
fi

if [ ! -d ./work/ros2_ws/src ] ; then
    mkdir -p ./work/ros2_ws/src
    cd work/ros2_ws/src
    wget https://raw.githubusercontent.com/melodylylin/gazebodistro/master/collection-garden.yaml
    vcs import < collection-garden.yaml
    cd ..
    colcon build --merge-install
    cd src
    git clone git@github.com:la1k/libpredict.git
    git clone git@github.com:PX4/px4_msgs.git
    git clone git@github.com:kpant14/px4-offboard.git
    git clone git@github.com:kpant14/ros_gz.git
fi

