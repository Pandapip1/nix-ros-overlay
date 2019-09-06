
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, libusb1, diagnostic-updater, robot-state-publisher, dynamic-reconfigure, roslaunch, roscpp, libusb, xacro }:
buildRosPackage {
  pname = "ros-melodic-sick-tim";
  version = "0.0.16-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/sick_tim-release/archive/release/melodic/sick_tim/0.0.16-1.tar.gz";
    name = "0.0.16-1.tar.gz";
    sha256 = "21cbe180b6016b00a94db9fdcaca49ef8d560608c041bb975b5babb0e8f9aaf3";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs libusb1 diagnostic-updater dynamic-reconfigure roslaunch roscpp ];
  propagatedBuildInputs = [ sensor-msgs libusb1 diagnostic-updater robot-state-publisher dynamic-reconfigure roscpp libusb xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS driver for the SICK TiM and the SICK MRS 1000 laser scanners.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
