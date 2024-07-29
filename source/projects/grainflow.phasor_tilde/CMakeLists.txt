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
	${PROJECT_NAME}.h
)


add_library( 
	${PROJECT_NAME} 
	MODULE
	${SOURCE_FILES}
)
set(RELFLAGS )
if (MSVC)
set(RELFLAGS /Oi /O2 /Ot /Ob2 /GL /GT /LTGT)
endif()
if(APPLE)
set(RELFLAGS -Ofast)
endif()
target_compile_options(${PROJECT_NAME} PRIVATE
"$<$<CONFIG:Release>:${RELFLAGS}>"
)

include(${C74_MIN_API_DIR}/script/min-posttarget.cmake)


#############################################################
# UNIT TEST
#############################################################


