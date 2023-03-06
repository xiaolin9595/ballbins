cmake_minimum_required(VERSION 3.10)

# set the project name 
project(collectiveCoupons)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)


add_executable(simulate)



#openmp
find_package(OpenMP)
if(OpenMP_CXX_FOUND)
    target_link_libraries(simulate PUBLIC OpenMP::OpenMP_CXX)
endif()



target_sources(simulate
	PRIVATE
        "main.cpp"        
        "simulate.cpp"
        "util/CSVWriter.cpp"  
        "util/Rand.cpp"
        "samplers/SegmentSampler.cpp"
        "samplers/UniformWRSampler.cpp"
        "samplers/UniformWoRSampler.cpp")

target_include_directories(simulate PRIVATE 
        "samplers"
        "util" 
        "."
)


target_compile_options(simulate
    PRIVATE "-Wall" "-Wextra" "-Wno-sign-compare")
