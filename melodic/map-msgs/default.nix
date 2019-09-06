
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, message-generation, nav-msgs, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-map-msgs";
  version = "1.13.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/melodic/map_msgs/1.13.0-0.tar.gz";
    name = "1.13.0-0.tar.gz";
    sha256 = "a0b7044c2fd59448eb714ce14d60c5ff2d0073962e011e6549c7dd99fc916ffc";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs nav-msgs message-generation sensor-msgs ];
  propagatedBuildInputs = [ std-msgs sensor-msgs nav-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
