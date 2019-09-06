
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuid-msgs, message-generation, message-runtime, std-msgs, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-melodic-scheduler-msgs";
  version = "0.9.0";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/scheduler_msgs/0.9.0-0.tar.gz";
    name = "0.9.0-0.tar.gz";
    sha256 = "1b4d4544455c6a6b0cd9dfa8388e3f497ada0125fd906b544ccdb0d23a491a71";
  };

  buildType = "catkin";
  buildInputs = [ uuid-msgs message-generation std-msgs rocon-std-msgs ];
  propagatedBuildInputs = [ std-msgs uuid-msgs message-runtime rocon-std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by the rocon scheduler.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
