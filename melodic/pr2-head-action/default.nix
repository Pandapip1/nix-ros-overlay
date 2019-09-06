
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-controllers-msgs, kdl-parser, orocos-kdl, trajectory-msgs, sensor-msgs, catkin, message-filters, roscpp, actionlib, tf-conversions, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-pr2-head-action";
  version = "1.10.17-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_controllers-release/archive/release/melodic/pr2_head_action/1.10.17-1.tar.gz";
    name = "1.10.17-1.tar.gz";
    sha256 = "424a5a18ed18b42bcde7b0f810213435066b8250169b2ff65886802760c7421d";
  };

  buildType = "catkin";
  buildInputs = [ pr2-controllers-msgs kdl-parser orocos-kdl trajectory-msgs sensor-msgs message-filters roscpp actionlib tf-conversions tf geometry-msgs ];
  propagatedBuildInputs = [ pr2-controllers-msgs kdl-parser orocos-kdl trajectory-msgs sensor-msgs message-filters roscpp actionlib tf-conversions tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The PR2 head action is a node that provides an action interface for
  pointing the head of the PR2.  It passes trajectory goals to the
  controller, and reports success when they have finished executing.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
