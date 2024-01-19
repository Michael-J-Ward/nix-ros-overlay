
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cpplint, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-imu-processors";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_pipeline-release/archive/release/rolling/imu_processors/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "0629b6717d6979da46b464de073f5384741956ec473c723fa9d929a6ada3984d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cpplint ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclcpp rclcpp-components sensor-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Processors for sensor_msgs::Imu data'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}