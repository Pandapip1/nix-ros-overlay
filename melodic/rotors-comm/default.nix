
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, catkin, octomap-msgs, message-generation, message-runtime, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-rotors-comm";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_comm/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "6f5fc3033ab80590b10c00fc416c36221be5abd5756b389577e5f3e13dbb346c";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules octomap-msgs message-generation message-runtime geometry-msgs ];
  propagatedBuildInputs = [ cmake-modules octomap-msgs message-generation message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''RotorS specific messages and services.'';
    license = with lib.licenses; [ "ASL 2.0" ];
  };
}
