#!/bin/bash

apply_patch () {
  curr_dir="$(dirname "${BASH_SOURCE[0]}")"
  patch -u -d $(pwd)/src/ros2/rviz < $curr_dir/ros2_rviz.patch
  patch -u -d $(pwd)/src/ros2/performance_test_fixture < $curr_dir/ros2_performance_test_fixture.patch
  patch -u -d $(pwd)/src/ros2/geometry2 < $curr_dir/ros2_geometry2.patch
  patch -u -d $(pwd)/src/ros2/rosbag2 < $curr_dir/ros2_rosbag2.patch
  patch -u -d $(pwd)/src/ros-visualization/interactive_markers < $curr_dir/ros-visualization_interactive_markers.patch 
}

if [[ -e $(pwd)/src/ros2 ]] && [[ -e $(pwd)/src/ros-visualization ]]; then
  apply_patch
  echo "HERE"
else
  if [[ ! -e $(pwd)/src ]]; then
    mkdir $(pwd)/src
  fi
  vcs import --input https://raw.githubusercontent.com/ros2/ros2/humble/ros2.repos src
  apply_patch
fi
