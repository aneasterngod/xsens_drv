# Dongshin Kim, 2018-05-01 18:00
include_directories (${xti300_driver_SOURCE_DIR}/src
${xti300_driver_SOURCE_DIR}/include)
link_directories (${xti300_driver_BINARY_DIR}/src)
add_executable (xti300_drv xti300.cpp)
