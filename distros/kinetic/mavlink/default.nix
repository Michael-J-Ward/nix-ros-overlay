
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python, pythonPackages }:
buildRosPackage {
  pname = "ros-kinetic-mavlink";
  version = "2019.12.30-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/kinetic/mavlink/2019.12.30-1.tar.gz";
    name = "2019.12.30-1.tar.gz";
    sha256 = "a7731b4fe968de88f8c2ce5f7d2062761ef1ddab55172aa0c57fb6da72979c11";
  };

  buildType = "cmake";
  buildInputs = [ pythonPackages.future pythonPackages.lxml ];
  propagatedBuildInputs = [ catkin python ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}