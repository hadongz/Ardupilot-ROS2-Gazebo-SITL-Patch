#!/bin/bash

GZ_VERSION=garden colcon build \
  --cmake-clean-cache \
  --cmake-args \
    --no-warn-unused-cli \
    -DBUILD_TESTING=ON \
    -DCMAKE_PREFIX_PATH="~/ros2_ws/lib:$(brew --prefix):$(brew --prefix qt@5)" \

