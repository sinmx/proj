#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "wxStEditLib" for configuration "RelWithDebInfo"
set_property(TARGET wxStEditLib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(wxStEditLib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELWITHDEBINFO "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxscintilla.lib;F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxpng.lib;F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxtiff.lib;F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxjpeg.lib;F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxzlib.lib;F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxregexu.lib;F:/proj/cpp/libs/wxWidgets/lib/vc_lib/wxexpat.lib;opengl32;glu32;winmm;comctl32;rpcrt4;wsock32"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/wxstedit-wx31-1.6.0.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS wxStEditLib )
list(APPEND _IMPORT_CHECK_FILES_FOR_wxStEditLib "${_IMPORT_PREFIX}/lib/wxstedit-wx31-1.6.0.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
