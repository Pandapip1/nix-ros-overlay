
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-etsi-its-denm-coding";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/etsi_its_messages-release/archive/release/jazzy/etsi_its_denm_coding/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "be1e05392455d4e056f647e96aeb995b73934f92299632ccb033b220f53a3121";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-environment ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ compatible C source code for ETSI ITS DENMs generated from ASN.1 using asn1c";
    license = with lib.licenses; [ mit ];
  };
}
