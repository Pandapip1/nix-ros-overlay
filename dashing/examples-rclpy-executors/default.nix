
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, rclpy, pythonPackages, ament-pep257, std-msgs, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-examples-rclpy-executors";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/examples-release/archive/release/dashing/examples_rclpy_executors/0.7.4-1.tar.gz;
    sha256 = "65486f7253161e607d9e24ae1d939677a3f5d784d4a9b5d75abd0c6c24dd16c3";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of creating and using exectors to run multiple nodes in the same process'';
    license = with lib.licenses; [ asl20 ];
  };
}