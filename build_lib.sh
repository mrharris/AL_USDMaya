#!/usr/bin/env bash
mkdir build
cd build

BUILD_DIR=/usr/local/USD
MAYA_LOCATION=/usr/autodesk/maya2017

cmake -Wno-dev \
      -DCMAKE_INSTALL_PREFIX=$BUILD_DIR \
      -DCMAKE_MODULE_PATH=$BUILD_DIR \
      -DCMAKE_BUILD_TYPE=RelWithDebInfo \
      -DBOOST_ROOT=$BUILD_DIR \
      -DMAYA_LOCATION=$MAYA_LOCATION \
      -DGTEST_ROOT=$BUILD_DIR \
      -DUSD_CONFIG_FILE=$BUILD_DIR/pxrConfig.cmake \
      -DCMAKE_PREFIX_PATH=$MAYA_LOCATION/lib/cmake \
      -DBUILD_USDMAYA_SCHEMAS=OFF \
      -DBUILD_USDMAYA_TRANSLATORS=OFF \
      ..
      # -DOPENEXR_LOCATION='/path/to/root/folder'\
      # -DOPENGL_gl_LIBRARY='/path/to/glfw/library'\
      # -DGLEW_LOCATION='/path/to/root/folder'\
make -j 46 install
cd -
