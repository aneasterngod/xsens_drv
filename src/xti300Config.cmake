get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
include(${SELF_DIR}/xti300-targets.cmake)
get_filename_component(xti300_INCLUDE_DIRS "${SELF_DIR}/../../include" ABSOLUTE)
get_filename_component(xti300_LIBRARY_DIRS "${SELF_DIR}/../../lib" ABSOLUTE)
