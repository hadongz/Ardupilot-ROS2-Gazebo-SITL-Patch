#!/bin/bash
curr_dir="$(dirname "${BASH_SOURCE[0]}")"

if [[ ! -e $(pwd)/lib ]]; then
  mkdir lib 
fi

vcs import --input $curr_dir/extra_lib.repos lib

if [[ ! -e $(pwd)/src ]]; then
  mkdir src
fi

vcs import --input https://raw.githubusercontent.com/ArduPilot/ardupilot_gz/main/ros2_gz_macos.repos --recursive src

project_dir=$(pwd)
cd $project_dir/src/gps_umd/gpsd_client 
touch COLCON_IGNORE
cd $project_dir
