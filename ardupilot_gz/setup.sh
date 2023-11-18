#!/bin/bash
curr_dir="$(dirname "${BASH_SOURCE[0]}")"

if [[ ! -e $(pwd)/lib ]]; then
  mkdir lib 
fi

vcs import --input $curr_dir/extra_lib.repose lib

if [[ ! -e $(pwd)/src ]]
  mkdir src
fi

vcs import --input https://raw.githubusercontent.com/ArduPilot/ardupilot_gz/main/ros2_gz_macos.repos src
