cmake_minimum_required(VERSION 3.1)
project(TestConditionalHeader)

add_executable(test_conditional_header
  src/main.cc src/main.h)

option(USE_SYSTEM_LIB "enable use of system lib" OFF)
if(USE_SYSTEM_LIB)
  target_compile_definitions(test_conditional_header
    PRIVATE USE_SYSTEM_LIB)
endif()

target_include_directories(test_conditional_header
  PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/deps)
