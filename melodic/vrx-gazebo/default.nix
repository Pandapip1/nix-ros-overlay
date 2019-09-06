
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, wave-gazebo, joy-teleop, joy, catkin, wamv-gazebo, gazebo-dev, geographic-msgs, message-runtime, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-vrx-gazebo";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/vrx-release/archive/release/melodic/vrx_gazebo/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "7d42088ed6c42e99402b0aca80f0bc4ed9ef9b47517fc4eb669ff07dbd1f6ed8";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-ros wave-gazebo joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  propagatedBuildInputs = [ gazebo-ros wave-gazebo joy-teleop joy wamv-gazebo gazebo-dev geographic-msgs message-runtime std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package for the RobotX competition running in Gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
