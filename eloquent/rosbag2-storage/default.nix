
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, yaml-cpp-vendor, rcutils, pluginlib, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-gmock, rosbag2-test-common, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-rosbag2-storage";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/eloquent/rosbag2_storage/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "c42af32057286b35d82bbc53a8b039875dfb8dccda1217ed4541b02dab64ffe8";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib yaml-cpp-vendor rcutils ];
  checkInputs = [ ament-lint-common ament-lint-auto ament-cmake-gmock rosbag2-test-common ament-cmake-gtest ];
  propagatedBuildInputs = [ pluginlib yaml-cpp-vendor rcutils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 independent storage format to store serialized ROS2 messages'';
    license = with lib.licenses; [ asl20 ];
  };
}