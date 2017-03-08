########################################################################
#
# Author: moritz moeller (virtualritz@gmail.com)
#
# solvespace documentation CMake lists.
#
########################################################################

project( doc )

#if ( DARWIN )
#    #  used to comment out some unsupported options in conf.py.html
#    set( DEACTIVATE "#" )
#endif ()

configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/conf.py.html.template
    ${CMAKE_CURRENT_BINARY_DIR}/html/conf.py )

configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/conf.py.epub.template
    ${CMAKE_CURRENT_BINARY_DIR}/epub/conf.py )

include( SphinxRST )

file( GLOB_RECURSE docs_SRCS "*.rst" )

add_sphinxdoc( htmldoc
    ${docs_SRCS}
    BUILDER html
    CONFIG ${CMAKE_CURRENT_BINARY_DIR}/html
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/doc/html )

install( DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/doc/html
    DESTINATION doc
    COMPONENT documentation )

add_sphinxdoc( epubdoc
    ${docs_SRCS}
    BUILDER epub
    CONFIG ${CMAKE_CURRENT_BINARY_DIR}/epub
    DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/doc/epub )

install( FILES ${CMAKE_CURRENT_BINARY_DIR}/doc/epub/SolveSpace.epub
    DESTINATION doc
    COMPONENT documentation )

#add_custom_target( htmlupload
#    COMMAND ${CMAKE_COMMAND}
#    "-DPY_DIR=${CMAKE_CURRENT_SOURCE_DIR}/../SolveSpaceCommon/cmake"
#    "-DHTML_DIR=${CMAKE_CURRENT_BINARY_DIR}/doc/html"
#    "-DAE_OR_NUKE=ae"
#    -P ${CMAKE_CURRENT_SOURCE_DIR}/../SolveSpaceCommon/cmake/htmlupload.cmake
#)

#add_dependencies( htmlupload htmldoc )


