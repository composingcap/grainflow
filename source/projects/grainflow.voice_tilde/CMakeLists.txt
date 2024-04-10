# Copyright 2018 The Min-DevKit Authors. All rights reserved.
# Use of this source code is governed by the MIT License found in the License.md file.

cmake_minimum_required(VERSION 3.11)

set(C74_MIN_API_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../min-api)
set(CMAKE_OSX_ARCHITECTURES x86_64;arm64)
include(${C74_MIN_API_DIR}/script/min-pretarget.cmake)


#############################################################
# MAX EXTERNAL
#############################################################


include_directories( 
	"${C74_INCLUDES}"
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/include"
)


set( SOURCE_FILES
	${PROJECT_NAME}.cpp
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/include/IGrain.h"
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/include/gfParam.h"
	"${CMAKE_CURRENT_SOURCE_DIR}/../../GrainflowLib/include/gfUtils.h"
	./mspGrain.h
)


add_library( 
	${PROJECT_NAME} 
	MODULE
	${SOURCE_FILES}
)

if(MSVC)
	target_compile_options(${PROJECT_NAME} PRIVATE "/Oi")
endif()
if(APPLE)
	target_compile_options(${PROJECT_NAME} PRIVATE "-ffast-math")
endif()

include(${C74_MIN_API_DIR}/script/min-posttarget.cmake)


#############################################################
# UNIT TEST
#############################################################


