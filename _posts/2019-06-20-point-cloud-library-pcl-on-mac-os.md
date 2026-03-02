---
layout: single
title: "Point Cloud Library (PCL) on Mac OS"
date: 2019-06-20
portfolio: true
author: Uki D. Lucas
permalink: "/posts/point-cloud-library-pcl-on-mac-os/"
overview: "FLANN found (include: /usr/local/Cellar/flann/1.9.1_7/include, lib: optimized;/usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib;debug;/usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib)"
---

Install PCL using BREW.

PCL is a Point Cloud Library for C++

$ xcode-select --install

xcode-select: error: command line tools are already installed, use "Software Update" to install updates

After updating Mac OS, please re-install the brew:

$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

$ brew update

Already up-to-date.

$ brew tap homebrew/science

Error: homebrew/science was deprecated. This tap is now empty as all its formulae were migrated.

$ brew tap brewsci/science

Cloning into '/usr/local/Homebrew/Library/Taps/brewsci/homebrew-science'...

DANGER (no need to do it if you re-insalled the brew):

$ sudo install -d -o $(whoami) -g admin /usr/local/Frameworks

$ brew reinstall pcl

🍺 /usr/local/Cellar/pcl/1.9.1_4: 1,173 files, 147.4MB

$ brew upgrade pcl

Error: pcl 1.9.1_4 already installed

Compile the Lidar Simulator (Udacity nd313)

cd /Volumes/DATA/_Drive/_REPOS/SFND_Lidar_Obstacle_Detection/build/

build $ rm ../CMakeCache.txt

build $ cmake ../CMakeLists.txt

-- The C compiler identification is AppleClang 10.0.1.10010046

-- The CXX compiler identification is AppleClang 10.0.1.10010046

-- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc

-- Check for working C compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc -- works

-- Detecting C compiler ABI info

-- Detecting C compiler ABI info - done

-- Detecting C compile features

-- Detecting C compile features - done

-- Check for working CXX compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++

-- Check for working CXX compiler: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ -- works

-- Detecting CXX compiler ABI info

-- Detecting CXX compiler ABI info - done

-- Detecting CXX compile features

-- Detecting CXX compile features - done

-- Checking for module 'eigen3'

-- No package 'eigen3' found

-- Found Eigen: /usr/local/include/eigen3

-- Eigen found (include: /usr/local/include/eigen3, version: 3.3.7)

-- Looking for pthread.h

-- Looking for pthread.h - found

-- Looking for pthread_create

-- Looking for pthread_create - found

-- Found Threads: TRUE

-- Boost version: 1.70.0

-- Found the following Boost libraries:

-- system

-- filesystem

-- thread

-- date_time

-- iostreams

-- serialization

-- chrono

-- atomic

-- regex

-- Checking for module 'flann'

-- No package 'flann' found

-- Found FLANN: /usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib

-- FLANN found (include: /usr/local/Cellar/flann/1.9.1_7/include, lib: optimized;/usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib;debug;/usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib)

-- Checking for module 'flann'

-- No package 'flann' found

-- FLANN found (include: /usr/local/Cellar/flann/1.9.1_7/include, lib: optimized;/usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib;debug;/usr/local/Cellar/flann/1.9.1_7/lib/libflann_cpp.dylib)

** WARNING ** io features related to pcap will be disabled

** WARNING ** io features related to png will be disabled

-- Found libusb-1.0: /usr/local/include

** WARNING ** io features related to libusb-1.0 will be disabled

-- Found Qhull: optimized;/usr/local/lib/libqhull_p.dylib;debug;/usr/local/lib/libqhull_p.dylib

-- QHULL found (include: /usr/local/include, lib: optimized;/usr/local/lib/libqhull_p.dylib;debug;/usr/local/lib/libqhull_p.dylib)

-- Found OpenGL: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.14.sdk/System/Library/Frameworks/OpenGL.framework

-- Found PkgConfig: /opt/local/bin/pkg-config (found version "0.29.2")

-- Checking for module 'glew'

-- No package 'glew' found

CMake Error at /usr/local/share/pcl-1.9/PCLConfig.cmake:58 (message):

simulation is required but glew was not found

Call Stack (most recent call first):

/usr/local/share/pcl-1.9/PCLConfig.cmake:361 (pcl_report_not_found)

/usr/local/share/pcl-1.9/PCLConfig.cmake:545 (find_external_library)

CMakeLists.txt:10 (find_package)

-- Configuring incomplete, errors occurred!

See also "/Volumes/DATA/_Drive/_REPOS/SFND313_Lidar_Obstacle_Detection/CMakeFiles/CMakeOutput.log".

See also "/Volumes/DATA/_Drive/_REPOS/SFND313_Lidar_Obstacle_Detection/CMakeFiles/CMakeError.log".

$ brew install glew

Updating Homebrew...

==> Auto-updated Homebrew!

Updated 1 tap (homebrew/core).

No changes to formulae.

Warning: glew 2.1.0 is already installed and up-to-date

To reinstall 2.1.0, run `brew reinstall glew`

(turi) uki 16:17 build $

References

- http://www.pointclouds.org/documentation/tutorials/installing_homebrew.php

- https://gist.github.com/irazasyed/7732946

-

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #141414; background-color: #fef48b; background-color: rgba(254, 244, 139, 0.78)}
span.s1 {font-variant-ligatures: no-common-ligatures}
span.s2 {font-variant-ligatures: no-common-ligatures; color: #ac1f16}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #141414; background-color: #fef48b; background-color: rgba(254, 244, 139, 0.78)}
span.s1 {font-variant-ligatures: no-common-ligatures}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #000000; background-color: #fef48b; background-color: rgba(254, 244, 139, 0.78)}
span.s1 {font-variant-ligatures: no-common-ligatures; color: #26aa16}
span.s2 {font-variant-ligatures: no-common-ligatures; color: #141414}
span.s3 {font-variant-ligatures: no-common-ligatures}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #141414; background-color: #fef48b; background-color: rgba(254, 244, 139, 0.78)}
span.s1 {font-variant-ligatures: no-common-ligatures}
span.s2 {font-variant-ligatures: no-common-ligatures; color: #ac1f16}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #141414; background-color: #fef48b; background-color: rgba(254, 244, 139, 0.78)}
span.s1 {font-variant-ligatures: no-common-ligatures}

p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 11.0px Menlo; color: #141414; background-color: #fef48b; background-color: rgba(254, 244, 139, 0.78)}
span.s1 {font-variant-ligatures: no-common-ligatures}
span.s2 {font-variant-ligatures: no-common-ligatures; color: #959715}
