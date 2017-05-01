" vim: set nowrap:
" Vim syntax file
" Language:     CMake
" Author:       Andy Cedilnik <andy.cedilnik@kitware.com>, Nicholas Hutchinson <nshutchinson@gmail.com>, Patrick Boettcher <patrick.boettcher@posteo.de>
" Maintainer:   Karthik Krishnan <karthik.krishnan@kitware.com>
" Last Change:  $Date$
" Version:      $Revision$
"
" Licence:      The CMake license applies to this file. See
"               https://cmake.org/licensing
"               This implies that distribution with Vim is allowed

if exists("b:current_syntax")
  finish
endif

syn region cmakeComment start="#" end="$" contains=cmakeTodo,@Spell
syn region cmakeLuaComment start="\[\z(=*\)\[" end="\]\z1\]" contains=cmakeTodo,@Spell

syn match cmakeEscaped /\(\\\\\|\\"\|\\n\|\\t\)/ contained
syn region cmakeRegistry start="\[" end="]" contained oneline contains=cmakeTodo,cmakeEscaped

syn region cmakeGeneratorExpression start="$<" end=">" contained oneline contains=cmakeVariableValue,cmakeProperty,cmakeGeneratorExpressions,cmakeTodo

syn region cmakeString start='"' end='"' contains=cmakeTodo,cmakeVariableValue

syn region cmakeVariableValue start="${" end="}" contained oneline contains=cmakeVariable,cmakeTodo

syn region cmakeEnvironment start="$ENV{" end="}" contained oneline contains=cmakeTodo

syn region cmakeArguments start="(" end=")" contains=ALLBUT,cmakeArguments,cmakeTodo

syn case match

syn keyword cmakeProperty contained
            \ ABSTRACT ADDITIONAL_MAKE_CLEAN_FILES ADVANCED ALIASED_TARGET ALLOW_DUPLICATE_CUSTOM_TARGETS ANDROID_ANT_ADDITIONAL_OPTIONS ANDROID_API ANDROID_API_MIN ANDROID_ARCH ANDROID_ASSETS_DIRECTORIES ANDROID_GUI ANDROID_JAR_DEPENDENCIES ANDROID_JAR_DIRECTORIES ANDROID_JAVA_SOURCE_DIR ANDROID_NATIVE_LIB_DEPENDENCIES ANDROID_NATIVE_LIB_DIRECTORIES ANDROID_PROCESS_MAX ANDROID_PROGUARD ANDROID_PROGUARD_CONFIG_PATH ANDROID_SECURE_PROPS_PATH ANDROID_SKIP_ANT_STEP ANDROID_STL_TYPE ARCHIVE_OUTPUT_DIRECTORY ARCHIVE_OUTPUT_DIRECTORY_DEBUG ARCHIVE_OUTPUT_DIRECTORY_RELEASE ARCHIVE_OUTPUT_NAME ARCHIVE_OUTPUT_NAME_DEBUG ARCHIVE_OUTPUT_NAME_RELEASE ATTACHED_FILES ATTACHED_FILES_ON_FAIL AUTOGEN_TARGETS_FOLDER AUTOGEN_TARGET_DEPENDS AUTOMOC AUTOMOC_MOC_OPTIONS AUTOMOC_TARGETS_FOLDER AUTORCC AUTORCC_OPTIONS AUTOUIC AUTOUIC_OPTIONS BINARY_DIR BUILD_WITH_INSTALL_RPATH BUNDLE BUNDLE_EXTENSION CACHE_VARIABLES CLEAN_NO_CUSTOM CMAKE_CONFIGURE_DEPENDS CMAKE_CXX_KNOWN_FEATURES CMAKE_C_KNOWN_FEATURES COMPATIBLE_INTERFACE_BOOL COMPATIBLE_INTERFACE_NUMBER_MAX COMPATIBLE_INTERFACE_NUMBER_MIN COMPATIBLE_INTERFACE_STRING COMPILE_DEFINITIONS COMPILE_DEFINITIONS_DEBUG COMPILE_DEFINITIONS_RELEASE COMPILE_FEATURES COMPILE_FLAGS COMPILE_OPTIONS COMPILE_PDB_NAME COMPILE_PDB_NAME_DEBUG COMPILE_PDB_NAME_RELEASE COMPILE_PDB_OUTPUT_DIRECTORY COMPILE_PDB_OUTPUT_DIRECTORY_DEBUG COMPILE_PDB_OUTPUT_DIRECTORY_RELEASE COST CPACK_DESKTOP_SHORTCUTS CPACK_NEVER_OVERWRITE CPACK_PERMANENT CPACK_STARTUP_SHORTCUTS CPACK_START_MENU_SHORTCUTS CPACK_WIX_ACL CROSSCOMPILING_EMULATOR CXX_EXTENSIONS CXX_STANDARD CXX_STANDARD_REQUIRED C_EXTENSIONS C_STANDARD C_STANDARD_REQUIRED DEBUG_CONFIGURATIONS DEBUG_POSTFIX DEFINE_SYMBOL DEFINITIONS DEPENDS DISABLED_FEATURES ECLIPSE_EXTRA_NATURES ENABLED_FEATURES ENABLED_LANGUAGES ENABLE_EXPORTS ENVIRONMENT EXCLUDE_FROM_ALL EXCLUDE_FROM_DEFAULT_BUILD EXCLUDE_FROM_DEFAULT_BUILD_DEBUG EXCLUDE_FROM_DEFAULT_BUILD_RELEASE EXPORT_NAME EXTERNAL_OBJECT EchoString FAIL_REGULAR_EXPRESSION FIND_LIBRARY_USE_LIB64_PATHS FIND_LIBRARY_USE_OPENBSD_VERSIONING FOLDER FRAMEWORK FRAMEWORK_VERSION Fortran_FORMAT Fortran_MODULE_DIRECTORY GENERATED GENERATOR_FILE_NAME GLOBAL_DEPENDS_DEBUG_MODE GLOBAL_DEPENDS_NO_CYCLES GNUtoMS HAS_CXX HEADER_FILE_ONLY HELPSTRING IMPLICIT_DEPENDS_INCLUDE_TRANSFORM IMPORTED IMPORTED_CONFIGURATIONS IMPORTED_IMPLIB IMPORTED_IMPLIB_DEBUG IMPORTED_IMPLIB_RELEASE IMPORTED_LINK_DEPENDENT_LIBRARIES IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE IMPORTED_LINK_INTERFACE_LANGUAGES IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE IMPORTED_LINK_INTERFACE_LIBRARIES IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE IMPORTED_LINK_INTERFACE_MULTIPLICITY IMPORTED_LINK_INTERFACE_MULTIPLICITY_DEBUG IMPORTED_LINK_INTERFACE_MULTIPLICITY_RELEASE IMPORTED_LOCATION IMPORTED_LOCATION_DEBUG IMPORTED_LOCATION_RELEASE IMPORTED_NO_SONAME IMPORTED_NO_SONAME_DEBUG IMPORTED_NO_SONAME_RELEASE IMPORTED_SONAME IMPORTED_SONAME_DEBUG IMPORTED_SONAME_RELEASE IMPORT_PREFIX IMPORT_SUFFIX INCLUDE_DIRECTORIES INCLUDE_REGULAR_EXPRESSION INSTALL_NAME_DIR INSTALL_RPATH INSTALL_RPATH_USE_LINK_PATH INTERFACE_AUTOUIC_OPTIONS INTERFACE_COMPILE_DEFINITIONS INTERFACE_COMPILE_FEATURES INTERFACE_COMPILE_OPTIONS INTERFACE_INCLUDE_DIRECTORIES INTERFACE_LINK_LIBRARIES INTERFACE_POSITION_INDEPENDENT_CODE INTERFACE_SOURCES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES INTERPROCEDURAL_OPTIMIZATION INTERPROCEDURAL_OPTIMIZATION_DEBUG INTERPROCEDURAL_OPTIMIZATION_RELEASE IN_TRY_COMPILE JOB_POOLS JOB_POOL_COMPILE JOB_POOL_LINK KEEP_EXTENSION LABELS LANGUAGE LIBRARY_OUTPUT_DIRECTORY LIBRARY_OUTPUT_DIRECTORY_DEBUG LIBRARY_OUTPUT_DIRECTORY_RELEASE LIBRARY_OUTPUT_NAME LIBRARY_OUTPUT_NAME_DEBUG LIBRARY_OUTPUT_NAME_RELEASE LINKER_LANGUAGE LINK_DEPENDS LINK_DEPENDS_NO_SHARED LINK_DIRECTORIES LINK_FLAGS LINK_FLAGS_DEBUG LINK_FLAGS_RELEASE LINK_INTERFACE_LIBRARIES LINK_INTERFACE_LIBRARIES_DEBUG LINK_INTERFACE_LIBRARIES_RELEASE LINK_INTERFACE_MULTIPLICITY LINK_INTERFACE_MULTIPLICITY_DEBUG LINK_INTERFACE_MULTIPLICITY_RELEASE LINK_LIBRARIES LINK_SEARCH_END_STATIC LINK_SEARCH_START_STATIC LISTFILE_STACK LOCATION LOCATION_DEBUG LOCATION_RELEASE MACOSX_BUNDLE MACOSX_BUNDLE_INFO_PLIST MACOSX_FRAMEWORK_INFO_PLIST MACOSX_PACKAGE_LOCATION MACOSX_RPATH MACROS MAP_IMPORTED_CONFIG_DEBUG MAP_IMPORTED_CONFIG_RELEASE MEASUREMENT MODIFIED NAME NO_SONAME NO_SYSTEM_FROM_IMPORTED OBJECT_DEPENDS OBJECT_OUTPUTS OSX_ARCHITECTURES OSX_ARCHITECTURES_DEBUG OSX_ARCHITECTURES_RELEASE OUTPUT_NAME OUTPUT_NAME_DEBUG OUTPUT_NAME_RELEASE PACKAGES_FOUND PACKAGES_NOT_FOUND PARENT_DIRECTORY PASS_REGULAR_EXPRESSION PDB_NAME PDB_NAME_DEBUG PDB_NAME_RELEASE PDB_OUTPUT_DIRECTORY PDB_OUTPUT_DIRECTORY_DEBUG PDB_OUTPUT_DIRECTORY_RELEASE POSITION_INDEPENDENT_CODE POST_INSTALL_SCRIPT PREDEFINED_TARGETS_FOLDER PREFIX PRE_INSTALL_SCRIPT PRIVATE_HEADER PROCESSORS PROJECT_LABEL PUBLIC_HEADER REPORT_UNDEFINED_PROPERTIES REQUIRED_FILES RESOURCE RESOURCE_LOCK RULE_LAUNCH_COMPILE RULE_LAUNCH_CUSTOM RULE_LAUNCH_LINK RULE_MESSAGES RUNTIME_OUTPUT_DIRECTORY RUNTIME_OUTPUT_DIRECTORY_DEBUG RUNTIME_OUTPUT_DIRECTORY_RELEASE RUNTIME_OUTPUT_NAME RUNTIME_OUTPUT_NAME_DEBUG RUNTIME_OUTPUT_NAME_RELEASE RUN_SERIAL SKIP_BUILD_RPATH SKIP_RETURN_CODE SOURCES SOURCE_DIR SOVERSION STATIC_LIBRARY_FLAGS STATIC_LIBRARY_FLAGS_DEBUG STATIC_LIBRARY_FLAGS_RELEASE STRINGS SUFFIX SYMBOLIC TARGET_ARCHIVES_MAY_BE_SHARED_LIBS TARGET_MESSAGES TARGET_SUPPORTS_SHARED_LIBS TEST_INCLUDE_FILE TIMEOUT TYPE USE_FOLDERS VALUE VARIABLES VERSION VISIBILITY_INLINES_HIDDEN VS_DEPLOYMENT_CONTENT VS_DEPLOYMENT_LOCATION VS_DESKTOP_EXTENSIONS_VERSION VS_DOTNET_REFERENCES VS_DOTNET_TARGET_FRAMEWORK_VERSION VS_GLOBAL_KEYWORD VS_GLOBAL_PROJECT_TYPES VS_GLOBAL_ROOTNAMESPACE VS_IOT_EXTENSIONS_VERSION VS_IOT_STARTUP_TASK VS_KEYWORD VS_MOBILE_EXTENSIONS_VERSION VS_SCC_AUXPATH VS_SCC_LOCALPATH VS_SCC_PROJECTNAME VS_SCC_PROVIDER VS_SHADER_ENTRYPOINT VS_SHADER_FLAGS VS_SHADER_MODEL VS_SHADER_TYPE VS_WINDOWS_TARGET_PLATFORM_MIN_VERSION VS_WINRT_COMPONENT VS_WINRT_EXTENSIONS VS_WINRT_REFERENCES VS_XAML_TYPE WILL_FAIL WIN32_EXECUTABLE WINDOWS_EXPORT_ALL_SYMBOLS WORKING_DIRECTORY WRAP_EXCLUDE XCODE_EXPLICIT_FILE_TYPE XCODE_LAST_KNOWN_FILE_TYPE XCTEST

syn keyword cmakeVariable contained
            \ CMAKE_TRY_COMPILE_TARGET_TYPE CTEST_MEMORYCHECK_TYPE CMAKE_SYSTEM_APPBUNDLE_PATH CTEST_CUSTOM_MEMCHECK_IGNORE CMAKE_STATIC_LINKER_FLAGS CPACK_INCLUDE_TOPLEVEL_DIRECTORY CMAKE_Fortran_MODULE_DIRECTORY CTEST_MEMORYCHECK_COMMAND CTEST_TEST_LOAD CMAKE_IMPORT_LIBRARY_SUFFIX CTEST_P4_OPTIONS CMAKE_VS_WINDOWS_TARGET_PLATFORM_VERSION CMAKE_NO_SYSTEM_FROM_IMPORTED CMAKE_MODULE_LINKER_FLAGS_INIT CMAKE_VS_PLATFORM_NAME CMAKE_STATIC_LINKER_FLAGS_INIT CTEST_DROP_SITE_PASSWORD CMAKE_ANDROID_GUI CMAKE_C_STANDARD CMAKE_HOST_SYSTEM_PROCESSOR CMAKE_COLOR_MAKEFILE CMAKE_FIND_FRAMEWORK CMAKE_FIND_LIBRARY_SUFFIXES CMAKE_APPBUNDLE_PATH CMAKE_OBJECT_PATH_MAX CMAKE_SYSTEM_VERSION CMAKE_CURRENT_LIST_DIR CTEST_CUSTOM_POST_MEMCHECK CMAKE_ROOT CMAKE_TRY_COMPILE_CONFIGURATION CMAKE_AUTOMOC XCODE CMAKE_CTEST_COMMAND CMAKE_INSTALL_PREFIX CMAKE_CXX_STANDARD_REQUIRED CMAKE_SYSTEM_PROCESSOR PROJECT_SOURCE_DIR CMAKE_INCLUDE_CURRENT_DIR_IN_INTERFACE CMAKE_ANDROID_SECURE_PROPS_PATH CMAKE_FIND_NO_INSTALL_PREFIX CMAKE_NO_BUILTIN_CHRPATH CPACK_INSTALL_SCRIPT CMAKE_TWEAK_VERSION MSVC70 CMAKE_LINK_LIBRARY_FLAG CMAKE_STATIC_LIBRARY_SUFFIX CMAKE_ANDROID_JAR_DIRECTORIES XCODE_VERSION CTEST_SCP_COMMAND CMAKE_Fortran_MODDIR_FLAG CMAKE_USE_RELATIVE_PATHS CMAKE_FIND_ROOT_PATH_MODE_PROGRAM CMAKE_FIND_PACKAGE_NAME CMAKE_INSTALL_DEFAULT_COMPONENT_NAME CTEST_GIT_COMMAND CMAKE_LIBRARY_PATH_FLAG MSVC60 CTEST_DROP_SITE_USER APPLE CMAKE_SHARED_LIBRARY_SUFFIX CMAKE_USER_MAKE_RULES_OVERRIDE CMAKE_EXE_LINKER_FLAGS CMAKE_EXPORT_NO_PACKAGE_REGISTRY CMAKE_FIND_APPBUNDLE CMAKE_JOB_POOL_COMPILE CMAKE_SIZEOF_VOID_P CTEST_TRIGGER_SITE CTEST_COVERAGE_EXTRA_FLAGS CMAKE_JOB_POOL_LINK CMAKE_SHARED_MODULE_PREFIX CMAKE_DEBUG_TARGET_PROPERTIES CMAKE_FIND_PACKAGE_WARN_NO_MODULE CMAKE_SHARED_MODULE_SUFFIX BORLAND CMAKE_PATCH_VERSION MSVC71 CMAKE_FIND_ROOT_PATH_MODE_LIBRARY CMAKE_ARCHIVE_OUTPUT_DIRECTORY PROJECT_NAME CMAKE_OSX_ARCHITECTURES CTEST_BZR_UPDATE_OPTIONS CMAKE_EXPORT_COMPILE_COMMANDS CMAKE_INSTALL_RPATH MSVC10 MSVC90 CMAKE_ANDROID_ANT_ADDITIONAL_OPTIONS CMAKE_COMPILE_PDB_OUTPUT_DIRECTORY CMAKE_SKIP_RPATH CMAKE_FIND_PACKAGE_NO_PACKAGE_REGISTRY CMAKE_RUNTIME_OUTPUT_DIRECTORY CTEST_MEMORYCHECK_SUPPRESSIONS_FILE CTEST_GIT_INIT_SUBMODULES CMAKE_SHARED_LIBRARY_PREFIX MSVC12 CTEST_CUSTOM_MAXIMUM_FAILED_TEST_OUTPUT_SIZE CMAKE_LIBRARY_PATH CMAKE_PDB_OUTPUT_DIRECTORY CMAKE_SYSTEM_PROGRAM_PATH CMAKE_CONFIGURATION_TYPES CTEST_CONFIGURATION_TYPE CMAKE_EDIT_COMMAND CMAKE_SYSTEM_PREFIX_PATH CTEST_MEMORYCHECK_COMMAND_OPTIONS UNIX CTEST_MEMORYCHECK_SANITIZER_OPTIONS CMAKE_BUILD_TYPE CMAKE_ERROR_DEPRECATED CMAKE_WIN32_EXECUTABLE CTEST_GIT_UPDATE_OPTIONS CMAKE_AUTOMOC_MOC_OPTIONS CMAKE_BUILD_WITH_INSTALL_RPATH CMAKE_LINK_INTERFACE_LIBRARIES CMAKE_Swift_LANGUAGE_VERSION CMAKE_VISIBILITY_INLINES_HIDDEN CTEST_EXTRA_COVERAGE_GLOB CMAKE_VERSION CMAKE_CACHE_MAJOR_VERSION CMAKE_VS_INCLUDE_INSTALL_TO_DEFAULT_BUILD CMAKE_ANDROID_SKIP_ANT_STEP CMAKE_ANDROID_ASSETS_DIRECTORIES CTEST_P4_COMMAND CMAKE_LINK_DEPENDS_NO_SHARED CMAKE_DEPENDS_IN_PROJECT_ONLY CMAKE_ANDROID_PROCESS_MAX CTEST_BUILD_COMMAND CMAKE_MACOSX_BUNDLE CMAKE_NINJA_OUTPUT_PATH_PREFIX CTEST_CUSTOM_PRE_TEST CTEST_UPDATE_VERSION_ONLY PROJECT_VERSION MSVC14 CMAKE_C_STANDARD_REQUIRED CTEST_SVN_OPTIONS CTEST_DROP_METHOD CTEST_HG_UPDATE_OPTIONS CMAKE_INSTALL_MESSAGE CMAKE_SHARED_LINKER_FLAGS_INIT CMAKE_VS_MSBUILD_COMMAND CMAKE_LINK_SEARCH_END_STATIC CMAKE_ENABLE_EXPORTS CTEST_UPDATE_OPTIONS CMAKE_TOOLCHAIN_FILE CMAKE_COMPILER_2005 CMAKE_GENERATOR WIN32 CMAKE_AUTOUIC CMAKE_ARGC CMAKE_SYSTEM_INCLUDE_PATH CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS CMAKE_CACHEFILE_DIR CTEST_CHECKOUT_COMMAND CMAKE_FIND_ROOT_PATH_MODE_PACKAGE CTEST_SVN_UPDATE_OPTIONS CMAKE_HOME_DIRECTORY CMAKE_ABSOLUTE_DESTINATION_FILES CMAKE_ANDROID_PROGUARD CMAKE_SKIP_BUILD_RPATH CMAKE_SYSTEM_IGNORE_PATH CMAKE_TRY_COMPILE_PLATFORM_VARIABLES CMAKE_ANDROID_STANDALONE_TOOLCHAIN CTEST_CVS_UPDATE_OPTIONS CMAKE_MODULE_PATH CTEST_BINARY_DIRECTORY CTEST_BZR_COMMAND CMAKE_HOST_APPLE MSVC11 CMAKE_VS_INTEL_Fortran_PROJECT_VERSION CMAKE_VERBOSE_MAKEFILE CMAKE_SYSTEM_NAME CMAKE_INSTALL_RPATH_USE_LINK_PATH CMAKE_LINK_WHAT_YOU_USE CTEST_CUSTOM_PRE_MEMCHECK CMAKE_C_COMPILE_FEATURES CMAKE_FRAMEWORK_PATH CTEST_CUSTOM_TEST_IGNORE CMAKE_BACKWARDS_COMPATIBILITY CTEST_DROP_SITE CMAKE_C_EXTENSIONS CTEST_TEST_TIMEOUT LIBRARY_OUTPUT_PATH CTEST_CVS_COMMAND CMAKE_DEBUG_POSTFIX CMAKE_LINK_DEF_FILE_FLAG CMAKE_BINARY_DIR MSVC_VERSION CMAKE_Fortran_FORMAT CMAKE_HOST_SOLARIS CMAKE_HOST_SYSTEM_VERSION MSVC80 CTEST_UPDATE_COMMAND CMAKE_ANDROID_NDK_TOOLCHAIN_VERSION CMAKE_NOT_USING_CONFIG_FLAGS CMAKE_CACHE_MINOR_VERSION CMAKE_POSITION_INDEPENDENT_CODE CTEST_CUSTOM_COVERAGE_EXCLUDE CTEST_CUSTOM_ERROR_POST_CONTEXT CMAKE_LIBRARY_OUTPUT_DIRECTORY CTEST_NIGHTLY_START_TIME MSVC CPACK_PACKAGING_INSTALL_PREFIX CMAKE_SHARED_LINKER_FLAGS WINDOWS_PHONE CMAKE_SOURCE_DIR CMAKE_FIND_ROOT_PATH_MODE_INCLUDE CMAKE_EXTRA_SHARED_LIBRARY_SUFFIXES CMAKE_GNUtoMS CYGWIN CMAKE_COMPILER_IS_GNUCC CMAKE_STATIC_LIBRARY_PREFIX PROJECT_VERSION_MAJOR CMAKE_BUILD_TOOL CMAKE_PROJECT_NAME CMAKE_VS_DEVENV_COMMAND CPACK_WARN_ON_ABSOLUTE_INSTALL_DESTINATION CTEST_DROP_LOCATION CMAKE_CROSSCOMPILING CTEST_CUSTOM_MAXIMUM_PASSED_TEST_OUTPUT_SIZE CMAKE_ECLIPSE_MAKE_ARGUMENTS CMAKE_EXE_LINKER_FLAGS_INIT CMAKE_ANDROID_ARCH CMAKE_CXX_EXTENSIONS CMAKE_SCRIPT_MODE_FILE EXECUTABLE_OUTPUT_PATH CMAKE_ANDROID_JAVA_SOURCE_DIR CMAKE_LINK_SEARCH_START_STATIC CTEST_P4_UPDATE_OPTIONS CMAKE_MINOR_VERSION CMAKE_SKIP_INSTALL_RULES CMAKE_AUTORCC CMAKE_INCLUDE_PATH CMAKE_CURRENT_LIST_LINE CMAKE_FIND_PACKAGE_NO_SYSTEM_PACKAGE_REGISTRY CMAKE_MINIMUM_REQUIRED_VERSION CMAKE_COMPILER_IS_GNUG77 CMAKE_INCLUDE_DIRECTORIES_BEFORE CMAKE_PREFIX_PATH CMAKE_ANDROID_NATIVE_LIB_DEPENDENCIES CMAKE_FIND_PACKAGE_SORT_ORDER CMAKE_MATCH_COUNT CMAKE_RANLIB CTEST_USE_LAUNCHERS CMAKE_SYSTEM_FRAMEWORK_PATH CMAKE_ANDROID_PROGUARD_CONFIG_PATH CMAKE_INTERNAL_PLATFORM_ABI CMAKE_ANDROID_NDK CMAKE_ECLIPSE_GENERATE_SOURCE_PROJECT CMAKE_CXX_COMPILE_FEATURES CTEST_COVERAGE_COMMAND CMAKE_COMMAND CMAKE_HOST_SYSTEM CMAKE_ANDROID_STL_TYPE CTEST_CUSTOM_MAXIMUM_NUMBER_OF_WARNINGS CMAKE_ANDROID_ARCH_ABI CMAKE_IGNORE_PATH CTEST_CURL_OPTIONS CMAKE_ANDROID_NATIVE_LIB_DIRECTORIES CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT CTEST_CUSTOM_POST_TEST CMAKE_ARGV0 CMAKE_STAGING_PREFIX CMAKE_XCODE_PLATFORM_TOOLSET CMAKE_AR CMAKE_ECLIPSE_VERSION CMAKE_FIND_PACKAGE_SORT_DIRECTION CMAKE_VS_PLATFORM_TOOLSET CMAKE_INCLUDE_CURRENT_DIR CMAKE_SYSROOT CMAKE_ANDROID_NDK_TOOLCHAIN_HOST_TAG CPACK_SET_DESTDIR MINGW CMAKE_ANDROID_API CMAKE_FIND_LIBRARY_PREFIXES CMAKE_ANDROID_ARM_NEON ANDROID CMAKE_EXECUTABLE_SUFFIX CMAKE_CURRENT_BINARY_DIR CMAKE_SYSTEM CTEST_CUSTOM_ERROR_MATCH CMAKE_CODELITE_USE_TARGETS CMAKE_LINK_LIBRARY_FILE_FLAG CMAKE_MACOSX_RPATH PROJECT_VERSION_TWEAK CMAKE_OSX_SYSROOT CMAKE_CXX_STANDARD CMAKE_MODULE_LINKER_FLAGS CTEST_SVN_COMMAND CMAKE_INSTALL_NAME_DIR MSVC_IDE CMAKE_HOST_UNIX CMAKE_MAKE_PROGRAM PROJECT_VERSION_MINOR CMAKE_ANDROID_API_MIN CTEST_SITE CMAKE_FIND_ROOT_PATH CMAKE_SKIP_INSTALL_ALL_DEPENDENCY CMAKE_COMPILER_IS_GNUCXX WINDOWS_STORE CTEST_HG_COMMAND CMAKE_SYSTEM_LIBRARY_PATH CPACK_ABSOLUTE_DESTINATION_FILES CTEST_CVS_CHECKOUT CMAKE_Fortran_MODOUT_FLAG CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION CMAKE_CROSSCOMPILING_EMULATOR CMAKE_SKIP_INSTALL_RPATH CTEST_SOURCE_DIRECTORY CMAKE_CACHE_PATCH_VERSION CMAKE_WARN_DEPRECATED CMAKE_AUTORCC_OPTIONS CMAKE_GENERATOR_PLATFORM CTEST_CHANGE_ID CMAKE_HOST_WIN32 CMAKE_MAJOR_VERSION CMAKE_PROGRAM_PATH CMAKE_LIBRARY_ARCHITECTURE CMAKE_ECLIPSE_GENERATE_LINKED_RESOURCES CTEST_P4_CLIENT CMAKE_Fortran_MODDIR_DEFAULT CMAKE_CFG_INTDIR CMAKE_LIBRARY_ARCHITECTURE_REGEX CTEST_GIT_UPDATE_CUSTOM CMAKE_GENERATOR_TOOLSET ENV PROJECT_BINARY_DIR CTEST_CUSTOM_MAXIMUM_NUMBER_OF_ERRORS CMAKE_ANDROID_JAR_DEPENDENCIES CPACK_COMPONENT_INCLUDE_TOPLEVEL_DIRECTORY CMAKE_EXTRA_GENERATOR CMAKE_IOS_INSTALL_COMBINED CMAKE_DL_LIBS CMAKE_AUTOMOC_RELAXED_MODE WINCE BUILD_SHARED_LIBS GHS-MULTI CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE CMAKE_VS_NsightTegra_VERSION CMAKE_IMPORT_LIBRARY_PREFIX CMAKE_MFC_FLAG CTEST_BUILD_NAME CMAKE_PARENT_LIST_FILE CMAKE_LINK_LIBRARY_SUFFIX CTEST_CUSTOM_WARNING_EXCEPTION CTEST_CUSTOM_WARNING_MATCH CMAKE_ANDROID_ARM_MODE CMAKE_CURRENT_LIST_FILE CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION CTEST_DROP_SITE_CDASH CPACK_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION CTEST_CUSTOM_ERROR_EXCEPTION CMAKE_CL_64 PROJECT_VERSION_PATCH CTEST_CONFIGURE_COMMAND CMAKE_AUTOUIC_OPTIONS CMAKE_CURRENT_SOURCE_DIR CMAKE_OSX_DEPLOYMENT_TARGET CMAKE_HOST_SYSTEM_NAME CTEST_CUSTOM_ERROR_PRE_CONTEXT

syn keyword cmakeModule contained
            \ ExternalProject

syn keyword cmakeKWExternalProject
            \ ALGO BINARY_DIR BUILD_ALWAYS BUILD_BYPRODUCTS BUILD_COMMAND BUILD_IN_SOURCE CMAKE_ARGS CMAKE_CACHE_ARGS CMAKE_CACHE_DEFAULT_ARGS COMMENT CONFIGURE_COMMAND CVSROOT CVS_MODULE CVS_REPOSITORY CVS_TAG DEPENDEES DEPENDERS DEPENDS DOWNLOADED_FILE DOWNLOAD_COMMAND DOWNLOAD_DIR DOWNLOAD_NAME DOWNLOAD_NO_EXTRACT DOWNLOAD_NO_PROGRESS EP_BASE EP_INDEPENDENT_STEP_TARGETS EP_PREFIX EP_STEP_TARGETS EP_UPDATE_DISCONNECTED EXCLUDE_FROM_ALL FORCE GIT_REMOTE_NAME GIT_REPOSITORY GIT_SHALLOW GIT_SUBMODULES GIT_TAG HG_REPOSITORY HG_TAG HTTP_HEADER HTTP_PASSWORD HTTP_USERNAME INDEPENDENT_STEP_TARGETS INSTALL_COMMAND INSTALL_DIR JOB_POOLS LIST_SEPARATOR LOG_BUILD LOG_CONFIGURE LOG_DOWNLOAD LOG_INSTALL LOG_TEST LOG_UPDATE NO_DEPENDS PATCH_COMMAND PREFIX PROPERTY SOURCE_DIR SOURCE_SUBDIR STAMP_DIR STEP_TARGETS SVN_PASSWORD SVN_REPOSITORY SVN_REVISION SVN_TRUST_CERT SVN_USERNAME TEST_AFTER_INSTALL TEST_BEFORE_INSTALL TEST_COMMAND TEST_EXCLUDE_FROM_MAIN TIMEOUT TLS_CAINFO TLS_VERIFY TMP_DIR UPDATE_COMMAND UPDATE_DISCONNECTED URL URL_HASH USES_TERMINAL_BUILD USES_TERMINAL_CONFIGURE USES_TERMINAL_DOWNLOAD USES_TERMINAL_INSTALL USES_TERMINAL_TEST USES_TERMINAL_UPDATE WORKING_DIRECTORY

syn keyword cmakeKWadd_compile_options
            \ COMPILE_OPTIONS

syn keyword cmakeKWadd_custom_command
            \ APPEND ARGS BYPRODUCTS COMMAND COMMENT CROSSCOMPILING_EMULATOR DEPENDS DEPFILE GENERATED IMPLICIT_DEPENDS MAIN_DEPENDENCY NOT OUTPUT POST_BUILD PRE_BUILD PRE_LINK SYMBOLIC TARGET_FILE USES_TERMINAL VERBATIM WORKING_DIRECTORY

syn keyword cmakeKWadd_custom_target
            \ ALL BYPRODUCTS COMMAND COMMENT CROSSCOMPILING_EMULATOR DEPENDS GENERATED SOURCES USES_TERMINAL VERBATIM WORKING_DIRECTORY

syn keyword cmakeKWadd_definitions
            \ COMPILE_DEFINITIONS

syn keyword cmakeKWadd_dependencies
            \ DEPENDS OBJECT_DEPENDS

syn keyword cmakeKWadd_executable
            \ ALIAS CONFIG EXCLUDE_FROM_ALL GLOBAL IMPORTED IMPORTED_ IMPORTED_LOCATION IMPORTED_LOCATION_ MACOSX_BUNDLE OUTPUT_NAME RUNTIME_OUTPUT_DIRECTORY TARGET

syn keyword cmakeKWadd_library
            \ ALIAS ARCHIVE_OUTPUT_DIRECTORY CLI CONFIG DLL EXCLUDE_FROM_ALL FRAMEWORK GLOBAL IMPORTED IMPORTED_ IMPORTED_LOCATION IMPORTED_LOCATION_ INTERFACE_ LIBRARY_OUTPUT_DIRECTORY MODULE OBJECT ON OUTPUT_NAME POSITION_INDEPENDENT_CODE POST_BUILD PRE_BUILD PRE_LINK RUNTIME_OUTPUT_DIRECTORY SHARED STATIC TARGET_OBJECTS UNKNOWN

syn keyword cmakeKWadd_subdirectory
            \ EXCLUDE_FROM_ALL

syn keyword cmakeKWadd_test
            \ BUILD_TESTING COMMAND CONFIGURATIONS FAIL_REGULAR_EXPRESSION NAME PASS_REGULAR_EXPRESSION TARGET_FILE WILL_FAIL WORKING_DIRECTORY

syn keyword cmakeKWbuild_command
            \ CONFIGURATION TARGET

syn keyword cmakeKWbuild_name
            \ CMAKE_CXX_COMPILER

syn keyword cmakeKWcmake_host_system_information
            \ AVAILABLE_PHYSICAL_MEMORY AVAILABLE_VIRTUAL_MEMORY FQDN HOSTNAME NUMBER_OF_LOGICAL_CORES NUMBER_OF_PHYSICAL_CORES QUERY RESULT TOTAL_PHYSICAL_MEMORY TOTAL_VIRTUAL_MEMORY

syn keyword cmakeKWcmake_minimum_required
            \ FATAL_ERROR VERSION

syn keyword cmakeKWcmake_parse_arguments
            \ ARGN CONFIGURATIONS DESTINATION FALSE FAST FILES MY_INSTALL MY_INSTALL_CONFIGURATIONS MY_INSTALL_DESTINATION MY_INSTALL_FAST MY_INSTALL_OPTIONAL MY_INSTALL_RENAME MY_INSTALL_TARGETS MY_INSTALL_UNPARSED_ARGUMENTS OPTIONAL PARSE_ARGV RENAME TARGETS TRUE _UNPARSED_ARGUMENTS

syn keyword cmakeKWcmake_policy
            \ CMAKE_POLICY_DEFAULT_CMP CMP GET NNNN NO_POLICY_SCOPE OLD POP PUSH SET VERSION

syn keyword cmakeKWconfigure_file
            \ COPYONLY CRLF DOS ESCAPE_QUOTES FOO_ENABLE FOO_STRING LF NEWLINE_STYLE VAR

syn keyword cmakeKWcreate_test_sourcelist
            \ CMAKE_TESTDRIVER_AFTER_TESTMAIN CMAKE_TESTDRIVER_BEFORE_TESTMAIN EXTRA_INCLUDE FUNCTION

syn keyword cmakeKWctest_build
            \ ALL_BUILD APPEND BUILD CAPTURE_CMAKE_ERROR CONFIGURATION CTEST_BUILD_CONFIGURATION CTEST_BUILD_FLAGS CTEST_BUILD_TARGET CTEST_PROJECT_NAME FLAGS NUMBER_ERRORS NUMBER_WARNINGS QUIET RETURN_VALUE TARGET

syn keyword cmakeKWctest_configure
            \ APPEND BUILD CAPTURE_CMAKE_ERROR OPTIONS QUIET RETURN_VALUE SOURCE

syn keyword cmakeKWctest_coverage
            \ APPEND BUILD CAPTURE_CMAKE_ERROR LABELS QUIET RETURN_VALUE

syn keyword cmakeKWctest_memcheck
            \ APPEND BUILD EXCLUDE EXCLUDE_LABEL INCLUDE INCLUDE_LABEL OFF ON PARALLEL_LEVEL QUIET RETURN_VALUE SCHEDULE_RANDOM START STOP_TIME STRIDE TEST_LOAD

syn keyword cmakeKWctest_run_script
            \ NEW_PROCESS RETURN_VALUE

syn keyword cmakeKWctest_start
            \ APPEND QUIET TAG TRACK

syn keyword cmakeKWctest_submit
            \ API CDASH_UPLOAD CDASH_UPLOAD_TYPE CTEST_EXTRA_SUBMIT_FILES CTEST_NOTES_FILES FILES PARTS QUIET RETRY_COUNT RETRY_DELAY RETURN_VALUE

syn keyword cmakeKWctest_test
            \ APPEND BUILD CAPTURE_CMAKE_ERROR CPU EXCLUDE EXCLUDE_LABEL INCLUDE INCLUDE_LABEL OFF ON PARALLEL_LEVEL QUIET RETURN_VALUE SCHEDULE_RANDOM START STOP_TIME STRIDE TEST_LOAD

syn keyword cmakeKWctest_update
            \ QUIET RETURN_VALUE SOURCE

syn keyword cmakeKWctest_upload
            \ CAPTURE_CMAKE_ERROR FILES QUIET

syn keyword cmakeKWdefine_property
            \ BRIEF_DOCS CACHED_VARIABLE DIRECTORY FULL_DOCS GLOBAL INHERITED PROPERTY SOURCE TARGET TEST VARIABLE

syn keyword cmakeKWenable_language
            \ OPTIONAL

syn keyword cmakeKWexec_program
            \ ARGS OUTPUT_VARIABLE RETURN_VALUE

syn keyword cmakeKWexecute_process
            \ COMMAND ERROR_FILE ERROR_QUIET ERROR_STRIP_TRAILING_WHITESPACE ERROR_VARIABLE INPUT_FILE OUTPUT_FILE OUTPUT_QUIET OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE RESULT_VARIABLE TIMEOUT VERBATIM WORKING_DIRECTORY

syn keyword cmakeKWexport
            \ ANDROID_MK APPEND CONFIG EXPORT EXPORT_LINK_INTERFACE_LIBRARIES FILE IMPORTED IMPORTED_ NAMESPACE NDK OLD PACKAGE TARGETS

syn keyword cmakeKWexport_library_dependencies
            \ APPEND EXPORT INCLUDE LINK_INTERFACE_LIBRARIES SET

syn keyword cmakeKWfile
            \ ALGO APPEND ASCII CMAKE_TLS_CAINFO CMAKE_TLS_VERIFY CONDITION CONFIG CONTENT COPY CR DESTINATION DIRECTORY_PERMISSIONS DOWNLOAD ENCODING EXCLUDE EXPECTED_HASH FILES_MATCHING FILE_PERMISSIONS FOLLOW_SYMLINKS FUNCTION GENERATE GLOB GLOB_RECURSE GUARD HEX HTTPHEADER INACTIVITY_TIMEOUT INSTALL LENGTH_MAXIMUM LENGTH_MINIMUM LF LIMIT LIMIT_COUNT LIMIT_INPUT LIMIT_OUTPUT LIST_DIRECTORIES LOCK LOG MAKE_DIRECTORY NEWLINE_CONSUME NO_HEX_CONVERSION NO_SOURCE_PERMISSIONS OFFSET OLD PATTERN PROCESS READ REGEX RELATIVE RELATIVE_PATH RELEASE REMOVE REMOVE_RECURSE RENAME RESULT_VARIABLE SHOW_PROGRESS SORT SSL STATUS STRINGS TIMESTAMP TLS_CAINFO TLS_VERIFY TO_CMAKE_PATH TO_NATIVE_PATH UPLOAD USERPWD USE_SOURCE_PERMISSIONS UTC UTF WRITE

syn keyword cmakeKWfind_file
            \ CMAKE_FIND_ROOT_PATH_BOTH DOC DVAR HINTS INCLUDE NAMES NO_CMAKE_ENVIRONMENT_PATH NO_CMAKE_FIND_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_SYSTEM_PATH NO_DEFAULT_PATH NO_SYSTEM_ENVIRONMENT_PATH ONLY_CMAKE_FIND_ROOT_PATH OS PATHS PATH_SUFFIXES VAR

syn keyword cmakeKWfind_library
            \ CMAKE_FIND_ROOT_PATH_BOTH DOC DVAR HINTS LIB NAMES NAMES_PER_DIR NO_CMAKE_ENVIRONMENT_PATH NO_CMAKE_FIND_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_SYSTEM_PATH NO_DEFAULT_PATH NO_SYSTEM_ENVIRONMENT_PATH ONLY_CMAKE_FIND_ROOT_PATH OS PATHS PATH_SUFFIXES VAR

syn keyword cmakeKWfind_package
            \ CMAKE_DISABLE_FIND_PACKAGE_ CMAKE_FIND_ROOT_PATH_BOTH COMPONENTS CONFIG CONFIGS DEC DVAR EXACT HINTS MODULE NAMES NATURAL NO_CMAKE_BUILDS_PATH NO_CMAKE_ENVIRONMENT_PATH NO_CMAKE_FIND_ROOT_PATH NO_CMAKE_PACKAGE_REGISTRY NO_CMAKE_PATH NO_CMAKE_SYSTEM_PACKAGE_REGISTRY NO_CMAKE_SYSTEM_PATH NO_DEFAULT_PATH NO_MODULE NO_POLICY_SCOPE NO_SYSTEM_ENVIRONMENT_PATH ONLY_CMAKE_FIND_ROOT_PATH OPTIONAL_COMPONENTS OS PACKAGE_FIND_NAME PACKAGE_FIND_VERSION PACKAGE_FIND_VERSION_COUNT PACKAGE_FIND_VERSION_MAJOR PACKAGE_FIND_VERSION_MINOR PACKAGE_FIND_VERSION_PATCH PACKAGE_FIND_VERSION_TWEAK PACKAGE_VERSION PACKAGE_VERSION_COMPATIBLE PACKAGE_VERSION_EXACT PACKAGE_VERSION_UNSUITABLE PATHS PATH_SUFFIXES QUIET REQUIRED SET TRUE _CONFIG _CONSIDERED_CONFIGS _CONSIDERED_VERSIONS _DIR _FIND_COMPONENTS _FIND_QUIETLY _FIND_REQUIRED _FIND_REQUIRED_ _FIND_VERSION_EXACT _FOUND

syn keyword cmakeKWfind_path
            \ CMAKE_FIND_ROOT_PATH_BOTH DOC DVAR HINTS INCLUDE NAMES NO_CMAKE_ENVIRONMENT_PATH NO_CMAKE_FIND_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_SYSTEM_PATH NO_DEFAULT_PATH NO_SYSTEM_ENVIRONMENT_PATH ONLY_CMAKE_FIND_ROOT_PATH OS PATHS PATH_SUFFIXES VAR

syn keyword cmakeKWfind_program
            \ CMAKE_FIND_ROOT_PATH_BOTH DOC DVAR HINTS NAMES NAMES_PER_DIR NO_CMAKE_ENVIRONMENT_PATH NO_CMAKE_FIND_ROOT_PATH NO_CMAKE_PATH NO_CMAKE_SYSTEM_PATH NO_DEFAULT_PATH NO_SYSTEM_ENVIRONMENT_PATH ONLY_CMAKE_FIND_ROOT_PATH OS PATHS PATH_SUFFIXES VAR

syn keyword cmakeKWfltk_wrap_ui
            \ FLTK

syn keyword cmakeKWforeach
            \ ARGS IN ITEMS LISTS RANGE

syn keyword cmakeKWfunction
            \ ARGC ARGN ARGS ARGV PARENT_SCOPE

syn keyword cmakeKWget_cmake_property
            \ COMPONENTS GLOBAL MACROS VAR VARIABLES

syn keyword cmakeKWget_directory_property
            \ DEFINITION DIRECTORY

syn keyword cmakeKWget_filename_component
            \ ABSOLUTE ARG_VAR BASE_DIR CACHE COMP DIRECTORY EXT NAME NAME_WE PATH PROGRAM PROGRAM_ARGS REALPATH VAR

syn keyword cmakeKWget_property
            \ BRIEF_DOCS CACHE DEFINED DIRECTORY FULL_DOCS GLOBAL INSTALL PROPERTY SET SOURCE TARGET TEST VARIABLE

syn keyword cmakeKWget_source_file_property
            \ LOCATION VAR

syn keyword cmakeKWget_target_property
            \ VAR

syn keyword cmakeKWget_test_property
            \ VAR

syn keyword cmakeKWif
            \ ARGS CMP COMMAND DEFINED EQUAL EXISTS FALSE GREATER GREATER_EQUAL IGNORE IN_LIST IS_ABSOLUTE IS_DIRECTORY IS_NEWER_THAN IS_SYMLINK LESS LESS_EQUAL MATCHES NNNN NOT OFF OR POLICY STREQUAL STRGREATER STRGREATER_EQUAL STRLESS STRLESS_EQUAL TARGET TEST THEN TRUE VERSION_EQUAL VERSION_GREATER VERSION_GREATER_EQUAL VERSION_LESS VERSION_LESS_EQUAL YES

syn keyword cmakeKWinclude
            \ NO_POLICY_SCOPE OPTIONAL RESULT_VARIABLE

syn keyword cmakeKWinclude_directories
            \ AFTER BEFORE INCLUDE_DIRECTORIES ON SYSTEM

syn keyword cmakeKWinclude_external_msproject
            \ GUID PLATFORM TYPE WIX

syn keyword cmakeKWinstall
            \ ARCHIVE BUNDLE CODE COMPONENT CONFIGURATIONS CVS DESTDIR DESTINATION DIRECTORY DIRECTORY_PERMISSIONS DLL EXCLUDE_FROM_ALL EXPORT EXPORT_ANDROID_MK EXPORT_LINK_INTERFACE_LIBRARIES FILES FILES_MATCHING FILE_PERMISSIONS FRAMEWORK GROUP_EXECUTE GROUP_READ GROUP_WRITE IMPORTED_ INCLUDES INSTALL_PREFIX INTERFACE_INCLUDE_DIRECTORIES LIBRARY MACOSX_BUNDLE MESSAGE_NEVER NAMELINK_ONLY NAMELINK_SKIP NAMESPACE NDK OPTIONAL OWNER_EXECUTE OWNER_READ OWNER_WRITE PATTERN PERMISSIONS POST_INSTALL_SCRIPT PRE_INSTALL_SCRIPT PRIVATE_HEADER PROGRAMS PUBLIC_HEADER REGEX RENAME RESOURCE RUNTIME SCRIPT SETGID SETUID SOVERSION TARGETS TRUE USE_SOURCE_PERMISSIONS VERSION WORLD_EXECUTE WORLD_READ WORLD_WRITE

syn keyword cmakeKWinstall_files
            \ FILES GLOB

syn keyword cmakeKWinstall_programs
            \ FILES GLOB PROGRAMS TARGETS

syn keyword cmakeKWinstall_targets
            \ DLL RUNTIME_DIRECTORY TARGETS

syn keyword cmakeKWlist
            \ APPEND CACHE EXCLUDE FILTER FIND GET INCLUDE INSERT INTERNAL LENGTH LIST NOTES PARENT_SCOPE REGEX REMOVE_AT REMOVE_DUPLICATES REMOVE_ITEM REVERSE SORT

syn keyword cmakeKWload_cache
            \ EXCLUDE INCLUDE_INTERNALS READ_WITH_PREFIX

syn keyword cmakeKWload_command
            \ CMAKE_LOADED_COMMAND_ COMMAND_NAME

syn keyword cmakeKWmacro
            \ ARGC ARGN ARGS ARGV DEFINED GREATER LISTS NOT _BAR _FOO

syn keyword cmakeKWmake_directory
            \ MAKE_DIRECTORY

syn keyword cmakeKWmark_as_advanced
            \ CLEAR FORCE VAR

syn keyword cmakeKWmath
            \ EXPR

syn keyword cmakeKWmessage
            \ AUTHOR_WARNING DEPRECATION FATAL_ERROR GUI SEND_ERROR STATUS WARNING

syn keyword cmakeKWoption
            \ OFF ON

syn keyword cmakeKWproject
            \ CMAKE_PROJECT_ LANGUAGES NAME NONE PROJECT VERSION _BINARY_DIR _INCLUDE _SOURCE_DIR _VERSION _VERSION_MAJOR _VERSION_MINOR _VERSION_PATCH _VERSION_TWEAK

syn keyword cmakeKWremove
            \ REMOVE_ITEM VALUE VAR

syn keyword cmakeKWseparate_arguments
            \ MSDN UNIX_COMMAND WINDOWS WINDOWS_COMMAND _COMMAND

syn keyword cmakeKWset
            \ BOOL CACHE FILEPATH FORCE INTERNAL OFF ON PARENT_SCOPE STRING STRINGS

syn keyword cmakeKWset_directory_properties
            \ PROPERTIES

syn keyword cmakeKWset_property
            \ APPEND APPEND_STRING CACHE DIRECTORY GLOBAL INSTALL PROPERTY SOURCE TARGET TEST WIX

syn keyword cmakeKWset_source_files_properties
            \ PROPERTIES

syn keyword cmakeKWset_target_properties
            \ PROPERTIES

syn keyword cmakeKWset_tests_properties
            \ PROPERTIES

syn keyword cmakeKWsource_group
            \ FILES REGULAR_EXPRESSION

syn keyword cmakeKWstring
            \ ALPHABET APPEND ASCII CMAKE_MATCH_ COMPARE CONCAT CONFIGURE EQUAL ESCAPE_QUOTES FIND GENEX_STRIP GREATER GREATER_EQUAL GUID LENGTH LESS LESS_EQUAL MAKE_C_IDENTIFIER MATCH MATCHALL MATCHES NAMESPACE NOTEQUAL ONLY RANDOM RANDOM_SEED REGEX REPLACE REVERSE STRIP SUBSTRING SZ TIMESTAMP TOLOWER TOUPPER TYPE UTC UUID

syn keyword cmakeKWsubdirs
            \ EXCLUDE_FROM_ALL PREORDER

syn keyword cmakeKWtarget_compile_definitions
            \ COMPILE_DEFINITIONS INTERFACE INTERFACE_COMPILE_DEFINITIONS PRIVATE PUBLIC

syn keyword cmakeKWtarget_compile_features
            \ COMPILE_FEATURES IMPORTED INTERFACE INTERFACE_COMPILE_FEATURES PRIVATE PUBLIC

syn keyword cmakeKWtarget_compile_options
            \ BEFORE COMPILE_OPTIONS IMPORTED INTERFACE INTERFACE_COMPILE_OPTIONS PRIVATE PUBLIC

syn keyword cmakeKWtarget_include_directories
            \ BEFORE BUILD_INTERFACE IMPORTED INCLUDE_DIRECTORIES INSTALL_INTERFACE INTERFACE INTERFACE_INCLUDE_DIRECTORIES INTERFACE_LINK_LIBRARIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES PRIVATE PUBLIC SYSTEM

syn keyword cmakeKWtarget_link_libraries
            \ ALIAS DAG DEBUG_CONFIGURATIONS IMPORTED IMPORTED_NO_SONAME INTERFACE INTERFACE_LINK_LIBRARIES LINK_FLAGS LINK_INTERFACE_LIBRARIES LINK_INTERFACE_LIBRARIES_DEBUG LINK_INTERFACE_MULTIPLICITY LINK_PRIVATE LINK_PUBLIC OLD OSX PRIVATE PUBLIC STATIC

syn keyword cmakeKWtarget_sources
            \ IMPORTED INTERFACE INTERFACE_SOURCES PRIVATE PUBLIC SOURCES

syn keyword cmakeKWtry_compile
            \ ALL_BUILD CMAKE_FLAGS COMPILE_DEFINITIONS COPY_FILE COPY_FILE_ERROR DEFINED DLINK_LIBRARIES DVAR FALSE INCLUDE_DIRECTORIES LINK_DIRECTORIES LINK_LIBRARIES NOT OUTPUT_VARIABLE RESULT_VAR SOURCES TRUE TYPE VALUE

syn keyword cmakeKWtry_run
            \ ARGS CMAKE_FLAGS COMPILE_DEFINITIONS COMPILE_OUTPUT_VARIABLE COMPILE_RESULT_VAR DLINK_LIBRARIES DVAR FAILED_TO_RUN FALSE INCLUDE_DIRECTORIES LINK_DIRECTORIES LINK_LIBRARIES RUN_OUTPUT_VARIABLE RUN_RESULT_VAR TRUE TYPE VALUE __TRYRUN_OUTPUT

syn keyword cmakeKWunset
            \ CACHE LD_LIBRARY_PATH PARENT_SCOPE

syn keyword cmakeKWuse_mangled_mesa
            \ GL OUTPUT_DIRECTORY PATH_TO_MESA

syn keyword cmakeKWvariable_requires
            \ RESULT_VARIABLE TEST_VARIABLE

syn keyword cmakeKWvariable_watch
            \ COMMAND

syn keyword cmakeKWwhile
            \ ARGS

syn keyword cmakeKWwrite_file
            \ APPEND CONFIGURE_FILE NOTE WRITE


syn keyword cmakeGeneratorExpressions contained
            \ LINK_LIBRARIES INCLUDE_DIRECTORIES COMPILE_DEFINITIONS CONFIG DEBUG_MODE BOOL AND NOT STREQUAL MAP_IMPORTED_CONFIG_ PLATFORM_ID C_COMPILER_ID CXX_COMPILER_ID VERSION_LESS VERSION_GREATER VERSION_EQUAL VERSION_LESS_EQUAL VERSION_GREATER_EQUAL C_COMPILER_VERSION CXX_COMPILER_VERSION TARGET_POLICY COMPILE_FEATURES C_STANDARD CXX_STANDARD COMPILE_LANGUAGE PRIVATE PUBLIC COMPILING_CXX GNU OLD_COMPILER CMAKE_CXX_COMPILER_VERSION CONFIGURATION TARGET_FILE TARGET_FILE_NAME TARGET_FILE_DIR TARGET_LINKER_FILE TARGET_LINKER_FILE_NAME TARGET_LINKER_FILE_DIR TARGET_SONAME_FILE TARGET_SONAME_FILE_NAME TARGET_SONAME_FILE_DIR TARGET_PDB_FILE PDB_NAME PDB_OUTPUT_DIRECTORY PDB_NAME_ PDB_OUTPUT_DIRECTORY_ TARGET_PDB_FILE_NAME TARGET_PDB_FILE_DIR TARGET_PROPERTY INSTALL_PREFIX EXPORT JOIN ANGLE COMMA SEMICOLON TARGET_NAME LINK_ONLY INTERFACE_LINK_LIBRARIES INSTALL_INTERFACE BUILD_INTERFACE LOWER_CASE UPPER_CASE MAKE_C_IDENTIFIER TARGET_OBJECTS OBJECT_LIBRARY SHELL_PATH MSYS

syn case ignore

syn keyword cmakeCommand
            \ add_compile_options add_custom_command add_custom_target add_definitions add_dependencies add_executable add_library add_subdirectory add_test aux_source_directory break build_command cmake_host_system_information cmake_minimum_required cmake_parse_arguments cmake_policy configure_file continue create_test_sourcelist ctest_build ctest_configure ctest_coverage ctest_empty_binary_directory ctest_memcheck ctest_read_custom_files ctest_run_script ctest_sleep ctest_start ctest_submit ctest_test ctest_update ctest_upload define_property enable_language enable_testing endfunction endmacro execute_process export file find_file find_library find_package find_path find_program fltk_wrap_ui function get_cmake_property get_directory_property get_filename_component get_property get_source_file_property get_target_property get_test_property include include_directories include_external_msproject include_regular_expression install link_directories list load_cache load_command macro mark_as_advanced math message option project qt_wrap_cpp qt_wrap_ui remove_definitions return separate_arguments set set_directory_properties set_property set_source_files_properties set_target_properties set_tests_properties site_name source_group string target_compile_definitions target_compile_features target_compile_options target_include_directories target_link_libraries target_sources try_compile try_run unset variable_watch
            \ nextgroup=cmakeArguments

syn keyword cmakeCommandConditional
            \ else elseif endif if
            \ nextgroup=cmakeArguments

syn keyword cmakeCommandRepeat
            \ endforeach endwhile foreach while
            \ nextgroup=cmakeArguments

syn keyword cmakeCommandDeprecated
            \ build_name exec_program export_library_dependencies install_files install_programs install_targets link_libraries make_directory output_required_files remove subdir_depends subdirs use_mangled_mesa utility_source variable_requires write_file
            \ nextgroup=cmakeArguments

syn case match

syn keyword cmakeTodo
            \ TODO FIXME XXX
            \ contained

hi def link cmakeCommand Function
hi def link cmakeCommandConditional Conditional
hi def link cmakeCommandDeprecated WarningMsg
hi def link cmakeCommandRepeat Repeat
hi def link cmakeComment Comment
hi def link cmakeEnvironment Special
hi def link cmakeEscaped Special
hi def link cmakeGeneratorExpression WarningMsg
hi def link cmakeGeneratorExpressions Constant
hi def link cmakeLuaComment Comment
hi def link cmakeModule Include
hi def link cmakeProperty Constant
hi def link cmakeRegistry Underlined
hi def link cmakeString String
hi def link cmakeTodo TODO
hi def link cmakeVariableValue Type
hi def link cmakeVariable Identifier

hi def link cmakeKWExternalProject ModeMsg
hi def link cmakeKWadd_compile_options ModeMsg
hi def link cmakeKWadd_custom_command ModeMsg
hi def link cmakeKWadd_custom_target ModeMsg
hi def link cmakeKWadd_definitions ModeMsg
hi def link cmakeKWadd_dependencies ModeMsg
hi def link cmakeKWadd_executable ModeMsg
hi def link cmakeKWadd_library ModeMsg
hi def link cmakeKWadd_subdirectory ModeMsg
hi def link cmakeKWadd_test ModeMsg
hi def link cmakeKWbuild_command ModeMsg
hi def link cmakeKWbuild_name ModeMsg
hi def link cmakeKWcmake_host_system_information ModeMsg
hi def link cmakeKWcmake_minimum_required ModeMsg
hi def link cmakeKWcmake_parse_arguments ModeMsg
hi def link cmakeKWcmake_policy ModeMsg
hi def link cmakeKWconfigure_file ModeMsg
hi def link cmakeKWcreate_test_sourcelist ModeMsg
hi def link cmakeKWctest_build ModeMsg
hi def link cmakeKWctest_configure ModeMsg
hi def link cmakeKWctest_coverage ModeMsg
hi def link cmakeKWctest_memcheck ModeMsg
hi def link cmakeKWctest_run_script ModeMsg
hi def link cmakeKWctest_start ModeMsg
hi def link cmakeKWctest_submit ModeMsg
hi def link cmakeKWctest_test ModeMsg
hi def link cmakeKWctest_update ModeMsg
hi def link cmakeKWctest_upload ModeMsg
hi def link cmakeKWdefine_property ModeMsg
hi def link cmakeKWenable_language ModeMsg
hi def link cmakeKWexec_program ModeMsg
hi def link cmakeKWexecute_process ModeMsg
hi def link cmakeKWexport ModeMsg
hi def link cmakeKWexport_library_dependencies ModeMsg
hi def link cmakeKWfile ModeMsg
hi def link cmakeKWfind_file ModeMsg
hi def link cmakeKWfind_library ModeMsg
hi def link cmakeKWfind_package ModeMsg
hi def link cmakeKWfind_path ModeMsg
hi def link cmakeKWfind_program ModeMsg
hi def link cmakeKWfltk_wrap_ui ModeMsg
hi def link cmakeKWforeach ModeMsg
hi def link cmakeKWfunction ModeMsg
hi def link cmakeKWget_cmake_property ModeMsg
hi def link cmakeKWget_directory_property ModeMsg
hi def link cmakeKWget_filename_component ModeMsg
hi def link cmakeKWget_property ModeMsg
hi def link cmakeKWget_source_file_property ModeMsg
hi def link cmakeKWget_target_property ModeMsg
hi def link cmakeKWget_test_property ModeMsg
hi def link cmakeKWif ModeMsg
hi def link cmakeKWinclude ModeMsg
hi def link cmakeKWinclude_directories ModeMsg
hi def link cmakeKWinclude_external_msproject ModeMsg
hi def link cmakeKWinstall ModeMsg
hi def link cmakeKWinstall_files ModeMsg
hi def link cmakeKWinstall_programs ModeMsg
hi def link cmakeKWinstall_targets ModeMsg
hi def link cmakeKWlist ModeMsg
hi def link cmakeKWload_cache ModeMsg
hi def link cmakeKWload_command ModeMsg
hi def link cmakeKWmacro ModeMsg
hi def link cmakeKWmake_directory ModeMsg
hi def link cmakeKWmark_as_advanced ModeMsg
hi def link cmakeKWmath ModeMsg
hi def link cmakeKWmessage ModeMsg
hi def link cmakeKWoption ModeMsg
hi def link cmakeKWproject ModeMsg
hi def link cmakeKWremove ModeMsg
hi def link cmakeKWseparate_arguments ModeMsg
hi def link cmakeKWset ModeMsg
hi def link cmakeKWset_directory_properties ModeMsg
hi def link cmakeKWset_property ModeMsg
hi def link cmakeKWset_source_files_properties ModeMsg
hi def link cmakeKWset_target_properties ModeMsg
hi def link cmakeKWset_tests_properties ModeMsg
hi def link cmakeKWsource_group ModeMsg
hi def link cmakeKWstring ModeMsg
hi def link cmakeKWsubdirs ModeMsg
hi def link cmakeKWtarget_compile_definitions ModeMsg
hi def link cmakeKWtarget_compile_features ModeMsg
hi def link cmakeKWtarget_compile_options ModeMsg
hi def link cmakeKWtarget_include_directories ModeMsg
hi def link cmakeKWtarget_link_libraries ModeMsg
hi def link cmakeKWtarget_sources ModeMsg
hi def link cmakeKWtry_compile ModeMsg
hi def link cmakeKWtry_run ModeMsg
hi def link cmakeKWunset ModeMsg
hi def link cmakeKWuse_mangled_mesa ModeMsg
hi def link cmakeKWvariable_requires ModeMsg
hi def link cmakeKWvariable_watch ModeMsg
hi def link cmakeKWwhile ModeMsg
hi def link cmakeKWwrite_file ModeMsg

let b:current_syntax = "cmake"
