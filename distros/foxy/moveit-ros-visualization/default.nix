
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, class-loader, eigen, geometric-shapes, interactive-markers, moveit-common, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, ogre1_9, pkg-config, pluginlib, qt5, rclcpp, rclpy, rviz2, tf2-eigen }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-visualization";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_visualization/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "6f62f1872faedf1263c7f4f91de5942eb74600d6f1b90e6db1e101eba11fc744";
  };

  buildType = "ament_cmake";
  buildInputs = [ class-loader eigen moveit-common ogre1_9 qt5.qtbase ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rclcpp rclpy rviz2 tf2-eigen ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = ''Components of MoveIt that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}