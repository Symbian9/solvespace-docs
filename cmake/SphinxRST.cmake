########################################################################
#
# Copyright (c) /*jupiter jazz*/ limited
#
# Author: moritz moeller (mm@jupiter-jazz.com)
#
# Module to invoke Sphinx (http://sphinx.pocoo.org/) to build
# documentation in various formats.
#
########################################################################
#
# Usage:
#   add_sphinxdoc(
#       <target>
#       BUILDER <builder>
#       CONFIG <confog>
#       DESTINATION <dest> )
#
#
# Usage example:
#   add_sphinxdoc(
#       htmldoc
#       ${docs_SRCS}
#       BUILDER html
#       CONFIG ${CMAKE_CURRENT_BINARY_DIR}/html
#       DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/doc/html )
#
#   install(
#       DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/doc/html
#       DESTINATION doc
#       COMPONENT documentation )
#
########################################################################

# Include PARSE_ARGUMENTS macro
# http://www.itk.org/Wiki/CMakeMacroParseArguments
include( ParseArguments )

macro( add_sphinxdoc REST_TARGET )

    set( SPHINX_BUILDER_FLAGS )

    # parse the macro arguments
    parse_arguments( REST
        "CONFIG;BUILDER;DEPENDS;DESTINATION"
        ${ARGN} )

    # get the list of sources from the args
    set( REST_SOURCES ${REST_DEFAULT_ARGS} )

    #message( STATUS ${REST_SOURCES} )

    if ( NOT SPHINX_BUILDER )
        find_program( SPHINX_BUILDER NAMES
            sphinx-build
            sphinx-build-2.5
            sphinx-build-2.6
            sphinx-build-2.7
            sphinx-build-2.8 )
    endif ()

    # work out the where to build/stage the docs
    file( MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR} )

    if ( REST_CONFIG )
        set( SPHINX_BUILDER_FLAGS ${SPHINX_BUILDER_FLAGS} -c ${REST_CONFIG} )
    endif ()

    if ( REST_BUILDER )
        string( TOLOWER "${REST_BUILDER}" REST_BUILDER )
        set( SPHINX_BUILDER_FLAGS ${SPHINX_BUILDER_FLAGS} -b ${REST_BUILDER} )
        if ( "latex" STREQUAL REST_BUILDER )
            set( REST_OUTPUT_EXTENSION ".tex" )
        elseif ( "epub" STREQUAL REST_BUILDER )
            set( REST_OUTPUT_EXTENSION ".epub" )
        elseif ( "html" STREQUAL REST_BUILDER OR
                 "dirhtml" STREQUAL REST_BUILDER OR
                 "qthelp" STREQUAL REST_BUILDER OR
                 "htmlhelp" STREQUAL REST_BUILDER )
            set( REST_OUTPUT_EXTENSION ".html" )
        elseif ( "pickle" STREQUAL REST_BUILDER )
            set( REST_OUTPUT_EXTENSION ".fpickle" )
        elseif ( "json" STREQUAL REST_BUILDER )
            set( REST_OUTPUT_EXTENSION ".fjson" )
        elseif ( "text" STREQUAL REST_BUILDER )
            set( REST_OUTPUT_EXTENSION ".txt" )
        endif ()
    else ()
        set( SPHINX_BUILDER_FLAGS -b html )
        set( REST_OUTPUT_EXTENSION html )
    endif ()

    if ( REST_DESTINATION )
        set( REST_OUTPUT_DIR ${REST_DESTINATION} )
    else ()
        set( REST_OUTPUT_DIR ${CMAKE_CURRENT_BINARY_DIR}/doc )
    endif ()

    if ( "epub" STREQUAL REST_BUILDER )
        find_package( PythonInterp )

        if ( PYTHON_VERSION_MAJOR GREATER 2 )
            execute_process(COMMAND python "-c" "import sys; filename='${REST_CONFIG}/conf.py'; exec(compile(open(filename, 'rb').read(), filename, 'exec')); sys.stdout.write(project)" OUTPUT_VARIABLE REST_PROJECT_NAME)
        else()
            execute_process(COMMAND python "-c" "import sys; execfile('${REST_CONFIG}/conf.py'); sys.stdout.write(project)" OUTPUT_VARIABLE REST_PROJECT_NAME)
        endif()

        set( ${REST_TARGET}_OUTPUT "${REST_OUTPUT_DIR}/${REST_PROJECT_NAME}${REST_OUTPUT_EXTENSION}" )
    else ()
        set( ${REST_TARGET}_OUTPUT )
        foreach ( REST_SOURCE ${REST_SOURCES} )
            file( RELATIVE_PATH REST_RELATIVE_FILE ${CMAKE_CURRENT_SOURCE_DIR} ${REST_SOURCE} )
            get_filename_component( REST_RELATIVE_PATH ${REST_RELATIVE_FILE} PATH )
            get_filename_component( REST_BASENAME ${REST_SOURCE} NAME_WE )
            set( DOC_FILE "${REST_OUTPUT_DIR}/${REST_RELATIVE_PATH}/${REST_BASENAME}${REST_OUTPUT_EXTENSION}" )
            list( APPEND ${REST_TARGET}_OUTPUT ${DOC_FILE} )
        endforeach ()
    endif ()

    add_custom_command(
        OUTPUT ${${REST_TARGET}_OUTPUT}
        COMMAND ${SPHINX_BUILDER} ${SPHINX_BUILDER_FLAGS} ${CMAKE_CURRENT_SOURCE_DIR} ${REST_DESTINATION}
        DEPENDS ${REST_SOURCES}
        COMMENT "Building ${REST_BUILDER} documentation"
    )

    add_custom_target( ${REST_TARGET} ALL DEPENDS ${${REST_TARGET}_OUTPUT} )

endmacro ()
