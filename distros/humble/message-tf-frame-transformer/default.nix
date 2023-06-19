
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, rclcpp, ros-environment, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, tf2-sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-message-tf-frame-transformer";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/message_tf_frame_transformer-release/archive/release/humble/message_tf_frame_transformer/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "eb3ff9eb114dbf4d84b264ff20280caff9d704d3fbce5ab2c322ade2115c32ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs rclcpp ros-environment sensor-msgs tf2 tf2-geometry-msgs tf2-ros tf2-sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Transforms messages of arbitrary type to a different frame using tf2::doTransform'';
    license = with lib.licenses; [ mit ];
  };
}