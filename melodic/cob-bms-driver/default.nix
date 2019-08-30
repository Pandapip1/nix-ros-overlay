
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, diagnostic-updater, cob-srvs, socketcan-interface, rospy, std-msgs, diagnostic-msgs, cob-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-bms-driver";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_bms_driver/0.7.0-1.tar.gz;
    sha256 = "3aaa4c0116867e6afa68ee7a4833ea7848c514ab96618902b48aa70e7848dda6";
  };

  buildInputs = [ diagnostic-updater socketcan-interface std-msgs diagnostic-msgs roscpp ];
  propagatedBuildInputs = [ pythonPackages.numpy diagnostic-updater cob-srvs socketcan-interface rospy std-msgs diagnostic-msgs cob-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}