
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, actionlib-msgs, pr2-common-action-msgs, catkin, roscpp, urdf, actionlib, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-arm-move-ik";
  version = "0.0.11";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_common_actions-release/archive/release/melodic/pr2_arm_move_ik/0.0.11-0.tar.gz";
    name = "0.0.11-0.tar.gz";
    sha256 = "8051d2f766e269e465921bb3b85eb08ab5a8f24c1e9e0f2ee7422665e5f23eee";
  };

  buildType = "catkin";
  buildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs tf urdf actionlib roscpp geometry-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs actionlib-msgs pr2-common-action-msgs tf urdf actionlib roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Move the pr2 arm using inverse kinematics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
