cmake_minimum_required(VERSION 3.5)
project(robo_miner_controller)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(cmake_helpers REQUIRED)
find_package(ament_index_cpp REQUIRED)
find_package(robo_miner_interfaces REQUIRED)
find_package(robo_miner_common REQUIRED)
find_package(std_msgs REQUIRED)

set(_INC_FOLDER_NAME include)
set(_SRC_FOLDER_NAME src)
set(_RESOURCE_FOLDER_NAME resources)
set(_INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${_INC_FOLDER_NAME})
set(_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${_SRC_FOLDER_NAME})

add_executable(
  ${PROJECT_NAME}
    ${_INC_DIR}/MovementController.h
    ${_INC_DIR}/data_struct.h

    ${_SRC_DIR}/main.cpp
    ${_SRC_DIR}/MovementController.cpp
    ${_SRC_DIR}/data_struct.cpp
    )

target_include_directories(
    ${PROJECT_NAME} 
    PRIVATE
        $<BUILD_INTERFACE:
            ${CMAKE_CURRENT_SOURCE_DIR}/${_INC_FOLDER_NAME}
            ${CMAKE_CURRENT_SOURCE_DIR}/${_RESOURCE_FOLDER_NAME}
        >
        $<INSTALL_INTERFACE:
            ${_INC_FOLDER_NAME}
            ${_RESOURCE_FOLDER_NAME}
        >
)

ament_target_dependencies(
    ${PROJECT_NAME}
    PUBLIC
        rclcpp
        ament_index_cpp
        robo_miner_interfaces
        robo_miner_common
        std_msgs
)

install(
  TARGETS
  robo_miner_controller

  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
