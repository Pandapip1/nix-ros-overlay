
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, filters, cmake-modules, mk, git, catkin, laser-filters, laser-geometry }:
buildRosPackage {
  pname = "ros-melodic-laser-filters-jsk-patch";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/laser_filters_jsk_patch/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "a6f1fb80defd53f329b29127878be0751e2eae4dd118671bc7166237b3f1d6e7";
  };

  buildType = "catkin";
  buildInputs = [ filters cmake-modules mk git laser-filters laser-geometry ];
  propagatedBuildInputs = [ filters laser-filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''laser_filters_jsk_patch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
