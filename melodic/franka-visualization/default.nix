
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, franka-description, sensor-msgs, catkin, libfranka, roscpp, xacro }:
buildRosPackage {
  pname = "ros-melodic-franka-visualization";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/franka_ros-release/archive/release/melodic/franka_visualization/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "c6854a45b228f4aacf838c5bc70ef99cc8171d6d3fa4b745249d90afe9f6f350";
  };

  buildType = "catkin";
  buildInputs = [ libfranka sensor-msgs roscpp ];
  propagatedBuildInputs = [ franka-description sensor-msgs libfranka roscpp xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains visualization tools for Franka Emika.'';
    license = with lib.licenses; [ asl20 ];
  };
}
