
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp }:
buildRosPackage {
  pname = "ros-rolling-examples-rclcpp-minimal-timer";
  version = "0.19.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/rolling/examples_rclcpp_minimal_timer/0.19.2-1.tar.gz";
    name = "0.19.2-1.tar.gz";
    sha256 = "02adc614dd5090d39166c8b9e407fcbceead5e6679a8a0986b86ee0df375fcf8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples of minimal nodes which have timers";
    license = with lib.licenses; [ asl20 ];
  };
}
