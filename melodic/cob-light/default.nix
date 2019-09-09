
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, actionlib-msgs, sensor-msgs, catkin, roscpp, message-generation, actionlib, message-runtime, rospy, std-msgs, diagnostic-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-light";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/melodic/cob_light/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ddbb22232cada7190f84aacd3bca7b5dd27c05e9a78748f7e61a29df876bb7d9";
  };

  buildType = "catkin";
  buildInputs = [ boost actionlib-msgs sensor-msgs roscpp message-generation actionlib std-msgs diagnostic-msgs visualization-msgs ];
  propagatedBuildInputs = [ boost actionlib-msgs sensor-msgs rospy message-runtime visualization-msgs actionlib std-msgs diagnostic-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains scripts to operate the LED lights on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}