
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, nav2-lifecycle-manager, nav2-msgs, nav2-util, pluginlib, qt5, rclcpp, rclcpp-lifecycle, resource-retriever, rviz-common, rviz-default-plugins, rviz-ogre-vendor, rviz-rendering, std-msgs, tf2-geometry-msgs, urdf, visualization-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-iron-nav2-rviz-plugins";
  version = "1.2.6-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_rviz_plugins/1.2.6-1.tar.gz";
    name = "1.2.6-1.tar.gz";
    sha256 = "7191bc97902dadb0977d44bb034063737bbf51abacc290544ec89f5fe70f4f71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs nav2-lifecycle-manager nav2-msgs nav2-util pluginlib qt5.qtbase rclcpp rclcpp-lifecycle resource-retriever rviz-common rviz-default-plugins rviz-ogre-vendor rviz-rendering std-msgs tf2-geometry-msgs urdf visualization-msgs yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Navigation 2 plugins for rviz'';
    license = with lib.licenses; [ asl20 ];
  };
}
