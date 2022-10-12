#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "manager_utils::manager_utils" for configuration "RelWithDebInfo"
set_property(TARGET manager_utils::manager_utils APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(manager_utils::manager_utils PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libmanager_utils.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS manager_utils::manager_utils )
list(APPEND _IMPORT_CHECK_FILES_FOR_manager_utils::manager_utils "${_IMPORT_PREFIX}/lib/libmanager_utils.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
