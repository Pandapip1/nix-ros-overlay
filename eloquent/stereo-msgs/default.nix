
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, rosidl-default-runtime, std-msgs, ament-lint-common, ament-cmake, rosidl-default-generators }:
buildRosPackage {
  pname = "ros-eloquent-stereo-msgs";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/eloquent/stereo_msgs/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "c2a3441cbba24e2df51a51eec9d82a11ef297b7898c56cf42c21955073caaa1b";
  };

  buildType = "ament_cmake";
  buildInputs = [ std-msgs sensor-msgs ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ std-msgs sensor-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake ];

  meta = {
    description = ''A package containing some stereo camera related message definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}