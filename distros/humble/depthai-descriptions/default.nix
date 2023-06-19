
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-depthai-descriptions";
  version = "2.7.1-r1";

  src = fetchurl {
    url = "https://github.com/luxonis/depthai-ros-release/archive/release/humble/depthai_descriptions/2.7.1-1.tar.gz";
    name = "2.7.1-1.tar.gz";
    sha256 = "87d51ac7fa627c73f985b4904d616e63a40b34a3ed5b948063ecfa51a1fff0da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The depthai_descriptions package'';
    license = with lib.licenses; [ mit ];
  };
}