# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_perception_pipeline_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED perception_pipeline_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(perception_pipeline_FOUND FALSE)
  elseif(NOT perception_pipeline_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(perception_pipeline_FOUND FALSE)
  endif()
  return()
endif()
set(_perception_pipeline_CONFIG_INCLUDED TRUE)

# output package information
if(NOT perception_pipeline_FIND_QUIETLY)
  message(STATUS "Found perception_pipeline: 0.1.0 (${perception_pipeline_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'perception_pipeline' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${perception_pipeline_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(perception_pipeline_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "ament_cmake_export_dependencies-extras.cmake")
foreach(_extra ${_extras})
  include("${perception_pipeline_DIR}/${_extra}")
endforeach()
