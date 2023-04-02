
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, clang, cmake, cppcheck, gtest, include-what-you-use, lcov }:
buildRosPackage {
  pname = "ros-rolling-ros-industrial-cmake-boilerplate";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_industrial_cmake_boilerplate-release/archive/release/rolling/ros_industrial_cmake_boilerplate/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "402ee9e74bf4e78be5fc3eee3b37c7b0c677f1f59579f1099d18439a6ed2eac9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ clang cppcheck gtest include-what-you-use lcov ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Contains boilerplate cmake script, macros and utils'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}