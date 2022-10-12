#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "game_engine::game_engine" for configuration "RelWithDebInfo"
set_property(TARGET game_engine::game_engine APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(game_engine::game_engine PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libgame_engine.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS game_engine::game_engine )
list(APPEND _IMPORT_CHECK_FILES_FOR_game_engine::game_engine "${_IMPORT_PREFIX}/lib/libgame_engine.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
