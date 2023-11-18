#!/bin/bash

GZ_VERSION=garden colcon build \
   --cmake-clean-cache \
  --cmake-args \
    --no-warn-unused-cli \
    -DBUILD_TESTING=ON \
    -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
    -DCMAKE_OSX_ARCHITECTURES="arm64" \
    -DCMAKE_APPLE_SILICON_PROCESSOR="arm64" \
    -DCMAKE_PREFIX_PATH="~/ros2_ws/lib:$(brew --prefix):$(brew --prefix qt@5)" \

