#!/bin/bash

echo "postCreate script started"

bash ceres_build.bash

echo "login -f ubuntu" >> /root/.bashrc
echo "cd /openvins_play" >> /home/ubuntu/.bashrc
echo "source /opt/ros/jazzy/setup.bash" >> /home/ubuntu/.bashrc
echo "source /openvins_play/install/setup.bash" >> /home/ubuntu/.bashrc

rosdep update

echo "postCreate script finished"