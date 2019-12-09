
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-rviz-plugins, libuvc, pluginlib, tf, image-transport, nodelet, rostest, sensor-msgs, dynamic-reconfigure, camera-info-manager, pcl-ros, catkin, cv-bridge, roscpp, roslaunch, rgbd-launch, rviz, rqt-reconfigure, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-cis-camera";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/cis_camera-release/archive/release/melodic/cis_camera/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "23afb3a9a394bc89c389da55add4a57c7a4e0731e7530f7dd078a014b577e0f6";
  };

  buildType = "catkin";
  buildInputs = [ pcl-ros sensor-msgs dynamic-reconfigure libuvc camera-info-manager pluginlib tf image-transport cv-bridge nodelet roscpp tf-conversions rostest ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ pcl-ros jsk-rviz-plugins sensor-msgs dynamic-reconfigure libuvc pluginlib camera-info-manager tf image-transport rviz cv-bridge rqt-reconfigure nodelet roscpp tf-conversions rgbd-launch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cis_camera package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}