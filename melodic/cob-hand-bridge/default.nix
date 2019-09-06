
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rosserial-python, control-msgs, sensor-msgs, catkin, diagnostic-updater, message-generation, message-runtime, actionlib, std-msgs, angles }:
buildRosPackage {
  pname = "ros-melodic-cob-hand-bridge";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_hand-release/archive/release/melodic/cob_hand_bridge/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "6849d1db4ffd4043e6c46027bbfe6a0f1f2f5fef2951015c15989182299b8845";
  };

  buildType = "catkin";
  buildInputs = [ std-srvs control-msgs sensor-msgs diagnostic-updater message-generation actionlib angles ];
  propagatedBuildInputs = [ std-srvs rosserial-python control-msgs sensor-msgs diagnostic-updater message-runtime actionlib std-msgs angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_hand_bridge package'';
    license = with lib.licenses; [ asl20 ];
  };
}
