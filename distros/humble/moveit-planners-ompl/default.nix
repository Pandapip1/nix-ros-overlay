
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, llvmPackages, moveit-common, moveit-core, moveit-msgs, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, moveit-ros-planning, ompl, pluginlib, rclcpp, tf2-eigen, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-moveit-planners-ompl";
  version = "2.5.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_planners_ompl/2.5.6-1.tar.gz";
    name = "2.5.6-1.tar.gz";
    sha256 = "8d677ea09bc50bd6b789beffacbb23c7a6b9afa90db6adbda34a36f224db7d19";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake eigen3-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common eigen moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-resources-pr2-description tf2-eigen ];
  propagatedBuildInputs = [ llvmPackages.openmp moveit-common moveit-core moveit-msgs moveit-ros-planning ompl pluginlib rclcpp tf2-eigen tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = "MoveIt interface to OMPL";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
