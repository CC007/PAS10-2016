# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "img_manip: 7 messages, 1 services")

set(MSG_I_FLAGS "-Iimg_manip:/home/student/catkin_ws/devel/share/img_manip/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(img_manip_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg" "img_manip/pixelCountResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg" ""
)

get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg" "img_manip/pixelCountActionGoal:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:img_manip/pixelCountGoal:img_manip/pixelCountActionFeedback:img_manip/pixelCountFeedback:std_msgs/Header:sensor_msgs/Image:img_manip/pixelCountResult:img_manip/pixelCountActionResult"
)

get_filename_component(_filename "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv" "std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg" "actionlib_msgs/GoalID:img_manip/pixelCountGoal:std_msgs/Header:sensor_msgs/Image"
)

get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg" ""
)

get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg" NAME_WE)
add_custom_target(_img_manip_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "img_manip" "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:img_manip/pixelCountFeedback:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg"
  "${MSG_I_FLAGS}"
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)
_generate_msg_cpp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)

### Generating Services
_generate_srv_cpp(img_manip
  "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
)

### Generating Module File
_generate_module_cpp(img_manip
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(img_manip_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(img_manip_generate_messages img_manip_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_cpp _img_manip_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(img_manip_gencpp)
add_dependencies(img_manip_gencpp img_manip_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS img_manip_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg"
  "${MSG_I_FLAGS}"
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)
_generate_msg_lisp(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)

### Generating Services
_generate_srv_lisp(img_manip
  "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
)

### Generating Module File
_generate_module_lisp(img_manip
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(img_manip_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(img_manip_generate_messages img_manip_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_lisp _img_manip_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(img_manip_genlisp)
add_dependencies(img_manip_genlisp img_manip_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS img_manip_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg"
  "${MSG_I_FLAGS}"
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)
_generate_msg_py(img_manip
  "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)

### Generating Services
_generate_srv_py(img_manip
  "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/Image.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
)

### Generating Module File
_generate_module_py(img_manip
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(img_manip_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(img_manip_generate_messages img_manip_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionResult.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountResult.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountGoal.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountAction.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/img_manip/srv/rgb2gray.srv" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionGoal.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountFeedback.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/devel/share/img_manip/msg/pixelCountActionFeedback.msg" NAME_WE)
add_dependencies(img_manip_generate_messages_py _img_manip_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(img_manip_genpy)
add_dependencies(img_manip_genpy img_manip_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS img_manip_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/img_manip
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(img_manip_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(img_manip_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(img_manip_generate_messages_cpp actionlib_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/img_manip
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(img_manip_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(img_manip_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(img_manip_generate_messages_lisp actionlib_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/img_manip
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(img_manip_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(img_manip_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(img_manip_generate_messages_py actionlib_msgs_generate_messages_py)
