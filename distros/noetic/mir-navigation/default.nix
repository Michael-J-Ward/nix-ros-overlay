
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, base-local-planner, catkin, dwa-local-planner, dwb-critics, dwb-local-planner, dwb-plugins, hector-mapping, map-server, mir-driver, mir-dwb-critics, mir-gazebo, move-base, nav-core-adapter, python3Packages, roslaunch, sbpl-lattice-planner, teb-local-planner }:
buildRosPackage {
  pname = "ros-noetic-mir-navigation";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_navigation/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "ee5eb011c5df71f351da4d3e01d27a5fa02b2ec936f77b955f2f8efdb879e27c";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ amcl base-local-planner dwa-local-planner dwb-critics dwb-local-planner dwb-plugins hector-mapping map-server mir-driver mir-dwb-critics mir-gazebo move-base nav-core-adapter python3Packages.matplotlib sbpl-lattice-planner teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and configuration files for move_base, localization etc. on the MiR robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
