#!/bin/bash

docker build -t ros2-dotnet:foxy-cyclone .
docker run -it --rm --volume "$(pwd)/Plugins:/opt/Plugins" ros2-dotnet:foxy-cyclone bash -c  "cd /opt && ros2 run rcldotnet_utils create_unity_plugin"
