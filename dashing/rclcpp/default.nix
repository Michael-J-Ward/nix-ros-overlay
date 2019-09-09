
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rosidl-generator-cpp, rosidl-typesupport-c, ament-cmake, rmw-implementation-cmake, ament-cmake-gmock, ament-lint-common, test-msgs, ament-cmake-gtest, rosidl-typesupport-cpp, rosgraph-msgs, rmw-implementation, rcl-yaml-param-parser, rcl-interfaces, ament-cmake-ros, rcl, ament-lint-auto, rmw }:
buildRosPackage {
  pname = "ros-dashing-rclcpp";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rclcpp-release/archive/release/dashing/rclcpp/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "697b595e7fb6ffaaa3193a4f928657cca12d1c00294f95d12fc077a5a4c2e7cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-generator-cpp builtin-interfaces rosidl-typesupport-c rosidl-typesupport-cpp rosgraph-msgs rmw-implementation rcl-yaml-param-parser rcl-interfaces rcl ];
  checkInputs = [ rmw-implementation-cmake ament-lint-common ament-cmake-gmock test-msgs ament-cmake-gtest ament-lint-auto rmw ];
  propagatedBuildInputs = [ rosidl-generator-cpp builtin-interfaces rosidl-typesupport-c ament-cmake rosidl-typesupport-cpp rosgraph-msgs rmw-implementation rcl-yaml-param-parser rcl-interfaces rcl rmw ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''The ROS client library in C++.'';
    license = with lib.licenses; [ asl20 ];
  };
}