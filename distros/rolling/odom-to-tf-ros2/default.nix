
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav-msgs, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-odom-to-tf-ros2";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/gstavrinos/odom_to_tf_ros2-release/archive/release/rolling/odom_to_tf_ros2/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "93d453562723c8963f547aeb53ff75f038b448771a339663f9b33c77f5617c57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav-msgs rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A simple ros2 package (node) that reads an odom topic and generates the equivalent tf connection (transformation). It also provides options to override frame names, or just use the ones in the original odom topic.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}