cmake_minimum_required(VERSION 3.5)
project(mas_perception_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/Blob.msg"
  "msg/BlobList.msg"
  "msg/BoundingBox.msg"
  "msg/BoundingBoxList.msg"
  "msg/BoundingBox2D.msg"
  "msg/Cavity.msg"
  "msg/PeopleScene.msg"
  "msg/Face.msg"
  "msg/ImageList.msg"
  "msg/LaserScanSegment.msg"
  "msg/LaserScanSegmentList.msg"
  "msg/MatchingErrorStamped.msg"
  "msg/Object.msg"
  "msg/ObjectEmbedding.msg"
  "msg/ObjectList.msg"
  "msg/ObjectView.msg"
  "msg/NamedColor.msg"
  "msg/NamedShape.msg"
  "msg/Person.msg"
  "msg/PersonList.msg"
  "msg/Plane.msg"
  "msg/PlaneList.msg"
  "msg/PlanarPolygon.msg"
  "msg/PointCloud2List.msg"
)

set(srv_files
  "srv/AccumulateTabletopCloud.srv"
  "srv/AnalyzeCloudColor.srv"
  "srv/BaseScanLinearRegression.srv"
  "srv/ClusterTabletopCloud.srv"
  "srv/FindWorkspace.srv"
  "srv/GetPersonList.srv"
  "srv/GetObjectList.srv"
  "srv/GetFaceName.srv"
  "srv/GetFacialExpression.srv"
  "srv/GetNearestObject.srv"
  "srv/GetSegmentedImage.srv"
  "srv/IsPersonInFront.srv"
  "srv/MakeBoundingBoxes.srv"
  "srv/PublishGoal.srv"
  "srv/RecognizeImage.srv"
  "srv/RecognizeObject.srv"
  "srv/SetFaceName.srv"
)

set(action_files
  "action/DetectObjects.action"
  "action/DetectScene.action"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES builtin_interfaces std_msgs geometry_msgs sensor_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
