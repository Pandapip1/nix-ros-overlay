
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cv-bridge, rospy, std-msgs, roscpp, rosunit, eigen }:
buildRosPackage {
  pname = "ros-melodic-tuw-geometry";
  version = "0.0.3";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_geometry-release/archive/release/melodic/tuw_geometry/0.0.3-0.tar.gz";
    name = "0.0.3-0.tar.gz";
    sha256 = "96df80626ab8ecd101acb1f972c815be0d105e9e5539e73d691ea3b2ef5d3e84";
  };

  buildType = "catkin";
  buildInputs = [ boost cv-bridge rospy std-msgs roscpp eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ std-msgs cv-bridge roscpp rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The tuw_geometry package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
