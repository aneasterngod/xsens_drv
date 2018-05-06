# Dongshin Kim, 2018-05-01 18:00
cmake_minimum_required(VERSION 2.8)
project( xti300_driver )

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")

add_subdirectory( src )