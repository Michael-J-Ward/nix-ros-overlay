
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-2d, geometry-msgs, mbf-abstract-core, mbf-utility, nav-core, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mbf-costmap-core";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/move_base_flex-release/archive/release/melodic/mbf_costmap_core/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "c6e3e281027660161d2da10566b8d7010cdfe1f72fa280a5a20b3dfe21017abb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ costmap-2d geometry-msgs mbf-abstract-core mbf-utility nav-core std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides common interfaces for navigation specific robot actions. It contains the CostmapPlanner, CostmapController and CostmapRecovery interfaces. The interfaces have to be implemented by the plugins to make them available for Move Base Flex using the mbf_costmap_nav navigation implementation. That implementation inherits the mbf_abstract_nav implementation and binds the system to a local and a global costmap.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
