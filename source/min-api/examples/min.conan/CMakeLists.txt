cmake_minimum_required(VERSION 3.19)

project(MinConanExample)

set(AUTHOR_DOMAIN "com.cycling74")
set(COPYRIGHT_STRING "Copyright (c) 2020 Cycling '74")

if(NOT CMAKE_BUILD_TYPE)
	set(CMAKE_BUILD_TYPE Debug CACHE STRING "Choose the type of build, options are: Debug Release" FORCE)
endif()

#don't pollute the source directory
set(C74_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/externals/" CACHE FILEPATH "The destination path for the built external")

if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
	message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
	file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/master/conan.cmake"
		"${CMAKE_BINARY_DIR}/conan.cmake")
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)
conan_check(VERSION 1.29.0 REQUIRED)

conan_add_remote(
	NAME cycling-public
	INDEX 1
	URL https://conan-public.cycling74.com
	VERIFY_SSL True
)

conan_cmake_configure(
	REQUIRES min-api/main_768519f556edaeecffee7e6f002b3e07ea1a539c@xnor/testing
	GENERATORS cmake_paths
)
conan_cmake_autodetect(settings)
conan_cmake_install(
	PATH_OR_REFERENCE .
	BUILD missing
	SETTINGS ${settings}
)

include(${CMAKE_CURRENT_BINARY_DIR}/conan_paths.cmake)
include(${CONAN_MIN-API_ROOT}/script/min-package.cmake)
include(${CONAN_MIN-API_ROOT}/script/min-pretarget.cmake)

include_directories("${C74_INCLUDES}")
set(SOURCE_FILES "min.conan.cpp")
add_library(${PROJECT_NAME} MODULE ${SOURCE_FILES})

include(${CONAN_MIN-API_ROOT}/script/min-posttarget.cmake)
