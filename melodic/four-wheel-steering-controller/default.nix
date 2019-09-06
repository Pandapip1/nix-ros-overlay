
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, std-srvs, urdf-geometry-parser, realtime-tools, catkin, rostest, rosgraph-msgs, nav-msgs, controller-interface, tf, four-wheel-steering-msgs }:
buildRosPackage {
  pname = "ros-melodic-four-wheel-steering-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/four_wheel_steering_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "bd529d3a98a4ca99a6965a27d09a019ab15fbb247be61246e4c949bed5ae9fcb";
  };

  buildType = "catkin";
  buildInputs = [ urdf-geometry-parser realtime-tools nav-msgs controller-interface tf four-wheel-steering-msgs ];
  checkInputs = [ controller-manager rostest std-srvs rosgraph-msgs ];
  propagatedBuildInputs = [ urdf-geometry-parser realtime-tools nav-msgs controller-interface tf four-wheel-steering-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for a four wheel steering mobile base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
