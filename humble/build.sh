#!/bin/bash

if [ $# -gt 0 ]; then
  PACKAGES_SELECT="--packages-select $@"
fi

colcon build \
  --symlink-install \
  --merge-install \
  --event-handlers console_cohesion+ console_package_list+ desktop_notification- \
  $PACKAGES_SELECT \
  --packages-skip-by-dep python_qt_binding \
  --cmake-clean-cache \
  --cmake-args \
    --no-warn-unused-cli \
    -DBUILD_TESTING=OFF \
    -DINSTALL_EXAMPLES=ON \
    -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk \
    -DCMAKE_OSX_ARCHITECTURES="arm64" \
    -DCMAKE_APPLE_SILICON_PROCESSOR="arm64" \
    -DCMAKE_PREFIX_PATH="$(brew --prefix);$(brew --prefix qt@5)" \

