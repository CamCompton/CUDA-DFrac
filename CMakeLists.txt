cmake_minimum_required (VERSION 2.8)

project (test)

find_package(OpenGL REQUIRED)
find_package(CUDA QUIET REQUIRED)


if( CMAKE_BINARY_DIR STREQUAL CMAKE_SOURCE_DIR )
    message( FATAL_ERROR "Please select another Build Directory ! (and give it a clever name, like bin_Visual2012_64bits/)" )
endif()
if( CMAKE_SOURCE_DIR MATCHES " " )
	message( "Your Source Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()
if( CMAKE_BINARY_DIR MATCHES " " )
	message( "Your Build Directory contains spaces. If you experience problems when compiling, this can be the cause." )
endif()



set(
    CUDA_NVCC_FLAGS
    ${CUDA_NVCC_FLAGS}
    -std=c++11 -ccbin g++ -I../common/inc -gencode arch=compute_30,code=sm_30 -lineinfo
    )


add_subdirectory (external)


include_directories(
    external/glfw-3.1.2/include/
    external/glew-1.13.0/include/
    common/inc/
    common/libwb/


)

set(ALL_LIBS
    ${OPENGL_LIBRARY}
    glfw
    GLEW_1130
)



cuda_add_executable(dragonfrac
    kernel.cu
    dragonfrac.cpp
    common/shader.cpp
    common/shader.hpp
    shaders/SimpleVertexShader.vertexshader
    shaders/SimpleFragmentShader.fragmentshader

)

target_link_libraries(dragonfrac
    ${ALL_LIBS}
)
