# Find engine3
#
#  IDLC_BIN_DIR - where to find idlc
#  ENGINE3_INCLUDE_DIR - where to find engine headers, etc.
#  ENGINE3_LIBRARIES   - list of libraries when using engine3
#  ENGINE3_FOUND       - true if engine3 found.

IF (ENGINE3_INCLUDE_DIR)
  SET(ENGINE3_FIND_QUIETLY_INCLUDE TRUE)
ENDIF (ENGINE3_INCLUDE_DIR)

IF (IDLC_BIN_DIR)
  SET(ENGINE3_FIND_QUIETLY_IDLC_BIN TRUE)
ENDIF (IDLC_BIN_DIR)

IF (ENGINE3_LIBRARY)
  SET(ENGINE3_FIND_QUIETLY_LIB TRUE)
ENDIF (ENGINE3_LIBRARY)

FIND_PATH(IDLC_BIN_DIR idlc.jar
  /opt/engine3/bin
  /opt/engine3pub/bin
  ../MMOEngine/lib
  ../MMOEngine/bin
  ../../engine3/MMOEngine/lib
  ../../engine3/MMOEngine/bin
  ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/MMOEngine/bin
  ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/MMOEngine/lib
  NO_DEFAULT_PATH
)

FIND_PATH(ENGINE3_INCLUDE_DIR engine/engine.h
  /opt/engine3/include
  /opt/engine3pub/include
  ../MMOEngine/src
  ../MMOEngine/include
  ../../engine3/MMOEngine/src
  ../../engine3/MMOEngine/include
  ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/MMOEngine/include
  ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/MMOEngine/src
  NO_DEFAULT_PATH
)

SET(ENGINE3_NAMES engine3)

FIND_LIBRARY(ENGINE3_LIBRARY
	NAMES ${ENGINE3_NAMES}
	PATHS ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/MMOEngine/lib/unix /opt/engine3/lib /opt/engine3pub/lib ../MMOEngine/lib/unix ../MMOEngine/lib/linux64 ../../engine3/MMOEngine/lib/unix ../MMOEngine/lib/osx)

FIND_LIBRARY(ENGINE3_ASAN_LIBRARY
	NAMES engine3-asan
	PATHS ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/MMOEngine/lib/unix /opt/engine3/lib /opt/engine3pub/lib ../MMOEngine/lib/unix  ../MMOEngine/lib/linux64 ../../engine3/MMOEngine/lib/unix)

FIND_LIBRARY(ENGINE3_TSAN_LIBRARY
	NAMES engine3-tsan
	PATHS ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/unix /opt/engine3/lib /opt/engine3pub/lib ../MMOEngine/lib/unix  ../MMOEngine/lib/linux64 ../../engine3/MMOEngine/lib/unix)

FIND_LIBRARY(ENGINE3_UBSAN_LIBRARY
	NAMES engine3-ubsan
	PATHS ${CMAKE_CURRENT_SOURCE_DIR_DIR}/utils/engine3/unix /opt/engine3/lib /opt/engine3pub/lib ../MMOEngine/lib/unix  ../MMOEngine/lib/linux64 ../../engine3/MMOEngine/lib/unix)

IF (IDLC_BIN_DIR AND ENGINE3_INCLUDE_DIR AND ENGINE3_LIBRARY AND ENGINE3_ASAN_LIBRARY AND ENGINE3_TSAN_LIBRARY AND ENGINE3_UBSAN_LIBRARY)
  IF (ENABLE_ASAN)
	  SET(ENGINE3_LIBRARIES ${ENGINE3_ASAN_LIBRARY})
  ELSEIF (ENABLE_TSAN)
	  SET(ENGINE3_LIBRARIES ${ENGINE3_TSAN_LIBRARY})
  ELSEIF (ENABLE_UBSAN)
	  SET(ENGINE3_LIBRARIES ${ENGINE3_UBSAN_LIBRARY})
  ELSE ()
  	  SET(ENGINE3_LIBRARIES ${ENGINE3_LIBRARY})
  ENDIF()
  SET(ENGINE3_FOUND TRUE)
  SET(IDL_DIRECTIVES -outdir autogen -cp ${ENGINE3_INCLUDE_DIR})

  ADD_LIBRARY(engine3 STATIC IMPORTED GLOBAL)

  SET_TARGET_PROPERTIES(engine3 PROPERTIES
	  IMPORTED_LOCATION_DEBUG ${ENGINE3_LIBRARIES}
	  IMPORTED_INCLUDE_DIRECTORIES ${ENGINE3_INCLUDE_DIR}
	  IMPORTED_LOCATION_RELEASE ${ENGINE3_LIBRARIES}
	  IMPORTED_LOCATION ${ENGINE3_LIBRARIES}
	  INTERFACE_INCLUDE_DIRECTORIES ${ENGINE3_INCLUDE_DIR}
	  )
ELSE ()
  SET(ENGINE3_FOUND FALSE)
  SET(ENGINE3_LIBRARIES)
  SET(IDL_DIRECTIVES)
ENDIF ()

SET(ENGINE3_DOWNLOAD FALSE)

IF (ENGINE3_FOUND)
  IF (NOT ENGINE3_FIND_QUIETLY_INCLUDE)
    MESSAGE(STATUS "Found engine3 includes: ${ENGINE3_INCLUDE_DIR}")
  ENDIF (NOT ENGINE3_FIND_QUIETLY_INCLUDE)

  IF (NOT ENGINE3_FIND_QUIETLY_LIB)
    MESSAGE(STATUS "Found engine3 library: ${ENGINE3_LIBRARIES}")
  ENDIF (NOT ENGINE3_FIND_QUIETLY_LIB)

  IF (NOT ENGINE3_FIND_QUIETLY_IDLC_BIN)
    MESSAGE(STATUS "Found idlc.jar in: ${IDLC_BIN_DIR}")
  ENDIF(NOT ENGINE3_FIND_QUIETLY_IDLC_BIN)

ELSE (ENGINE3_FOUND)
  IF (Engine3_FIND_REQUIRED)

    IF (NOT GIT_FOUND)
  	MESAGE(FATAL_ERROR "Could not find engine3 library")
    ENDIF()

    MESSAGE(STATUS "Using engine3 git submodule")

    IF (NOT EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine")
        MESSAGE(STATUS "Initializing git submodules")

        EXECUTE_PROCESS(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
                    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
		    RESULT_VARIABLE GIT_RESULT)
    ENDIF()

    IF (GIT_RESULT)
	    MESSAGE(FATAL_ERROR "Could NOT download engine3 git submodule")
    ENDIF()

    SET(OLD_CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR})
    SET(CMAKE_SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine)

    ADD_SUBDIRECTORY(${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine)

    SET(CMAKE_SOURCE_DIR ${OLD_CMAKE_SOURCE_DIR})

    SET(ENGINE3_UBSAN_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine/lib/unix/libengine3-ubsan.a)
    SET(ENGINE3_TSAN_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine/lib/unix/libengine3-tsan.a)
    SET(ENGINE3_ASAN_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine/lib/unix/libengine3-asan.a)
    SET(ENGINE3_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine/lib/unix/libengine3.a)
    SET(ENGINE3_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine/src)
    SET(IDLC_BIN_DIR ${CMAKE_CURRENT_SOURCE_DIR}/utils/engine3/MMOEngine/lib)

    IF (ENABLE_ASAN)
	    SET(ENGINE3_LIBRARIES ${ENGINE3_ASAN_LIBRARY})
    ELSEIF (ENABLE_TSAN)
	    SET(ENGINE3_LIBRARIES ${ENGINE3_TSAN_LIBRARY})
    ELSEIF (ENABLE_UBSAN)
	    SET(ENGINE3_LIBRARIES ${ENGINE3_UBSAN_LIBRARY})
    ELSE ()
	    SET(ENGINE3_LIBRARIES ${ENGINE3_LIBRARY})
    ENDIF()

    SET(IDL_DIRECTIVES -outdir autogen -cp ${ENGINE3_INCLUDE_DIR})

    SET(ENGINE3_DOWNLOAD TRUE)
    SET(ENGINE3_FOUND TRUE)

  ENDIF (Engine3_FIND_REQUIRED)
ENDIF (ENGINE3_FOUND)

SET(IDLC_JAVA_ARGS -XX:TieredStopAtLevel=1 -XX:+CMSClassUnloadingEnabled -client -Xmx128M -cp ${IDLC_BIN_DIR}/idlc.jar org.sr.idlc.compiler.Compiler)

MARK_AS_ADVANCED(
  IDLC_BIN_DIR
  ENGINE3_LIBRARY
  ENGINE3_INCLUDE_DIR
  ENGINE3_TSAN_LIBRARY
  ENGINE3_UBSAN_LIBRARY
  ENGINE3_ASAN_LIBRARY
)


