
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dbw-mkz-msgs, catkin, dbw-mkz-description, dbw-mkz-can, dbw-mkz-joystick-demo }:
buildRosPackage {
  pname = "ros-melodic-dbw-mkz";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/melodic/dbw_mkz/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "dd8b1ff2c326f66b1106449e1ae429badff6740c2d744c88d653092fa58f7aa3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dbw-mkz-msgs dbw-mkz-description dbw-mkz-can dbw-mkz-joystick-demo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Lincoln MKZ DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
