
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, cv-bridge, depthai-ros-msgs, image-transport, message-filters, opencv, rclcpp, rclcpp-components, sensor-msgs, vision-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-depthai-filters";
  version = "2.10.4-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_filters/2.10.4-1.tar.gz";
    name = "2.10.4-1.tar.gz";
    sha256 = "3917b0eaab23bb8697ccbbcf2637c083482f4ee061cc323d82577f5879c7e52b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ cv-bridge depthai-ros-msgs image-transport message-filters opencv opencv.cxxdev rclcpp rclcpp-components sensor-msgs vision-msgs visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Depthai filters package";
    license = with lib.licenses; [ mit ];
  };
}
