# Copyright 2018 The Min-DevKit Authors. All rights reserved.
# Use of this source code is governed by the MIT License found in the License.md file.

cmake_minimum_required(VERSION 3.15)

set(C74_MIN_API_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../min-api)
set(CMAKE_OSX_ARCHITECTURES x86_64;arm64)
include(${C74_MIN_API_DIR}/script/min-pretarget.cmake)


#############################################################
# MAX EXTERNAL
#############################################################

# Disable SAF tests, examples, and extras
set(SAF_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(SAF_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(SAF_BUILD_EXTRAS OFF CACHE BOOL "" FORCE)

# Add SAF as a subdirectory if not already added
if(NOT TARGET saf)
	add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/lib/Spatial_Audio_Framework ${CMAKE_CURRENT_BINARY_DIR}/saf)
endif()

include_directories(
	"${C74_INCLUDES}"
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/include"
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/lib/Spatial_Audio_Framework/framework/include"
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/lib/Spatial_Audio_Framework/framework/modules/saf_hoa"
)

set( SOURCE_FILES
	${PROJECT_NAME}.cpp
	${PROJECT_NAME}.h
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/include/gfAmbi.h"
)

add_library(
	${PROJECT_NAME}
	MODULE
	${SOURCE_FILES}
)

# Link against SAF
target_link_libraries(${PROJECT_NAME} PRIVATE saf)

set(RELFLAGS )
if (MSVC)
set(RELFLAGS /Oi /O2 /Ot /Ob2 /GL /GT)
endif()
if(APPLE)
set(RELFLAGS -Ofast)
endif()
target_compile_options(${PROJECT_NAME} PRIVATE
"$<$<CONFIG:Release>:${RELFLAGS}>"
)

include(${C74_MIN_API_DIR}/script/min-posttarget.cmake)
