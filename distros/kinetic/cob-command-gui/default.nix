
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-gui";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_gui/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "efb2cecf45c6a306d568f581e922cb0107b449084e3aafbc3087f3d2bfb3c271";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-script-server pythonPackages.pygraphviz pythonPackages.pygtk roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}