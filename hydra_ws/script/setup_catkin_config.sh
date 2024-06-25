#!/bin/bash -e

# Get the directory of this script.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"

# Get the directory of the catkin workspace.
CATKIN_WS_DIR="$(cd $SCRIPT_DIR/.. && pwd)"

# Move to the catkin workspace directory.
cd $CATKIN_WS_DIR

# Initialize the catkin workspace and configure it.
catkin init
catkin config -DCMAKE_BUILD_TYPE=Release -DGTSAM_TANGENT_PREINTEGRATION=OFF -DGTSAM_BUILD_WITH_MARCH_NATIVE=OFF
catkin config --skiplist hdf5_map_io mesh_msgs_hdf5 label_manager mesh_tools rviz_map_plugin minkindr_python