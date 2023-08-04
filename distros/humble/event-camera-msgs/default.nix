
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-event-camera-msgs";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/event_camera_msgs-release/archive/release/humble/event_camera_msgs/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "83d1d4dd82b4ba311e06152075ab04116312e1f7dc7f8065a4db8a85392a3b02";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ros-environment ];

  meta = {
    description = ''messages for event based cameras'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}