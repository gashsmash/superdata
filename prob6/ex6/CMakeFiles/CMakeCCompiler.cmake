SET(CMAKE_C_COMPILER "/share/apps/modulessoftware/intel/compilers/11.1.059/bin/intel64/icc")
SET(CMAKE_C_COMPILER_ARG1 "")
SET(CMAKE_C_COMPILER_ID "Intel")
SET(CMAKE_C_PLATFORM_ID "Linux")

SET(CMAKE_AR "/usr/bin/ar")
SET(CMAKE_RANLIB "/usr/bin/ranlib")
SET(CMAKE_LINKER "/usr/bin/ld")
SET(CMAKE_COMPILER_IS_GNUCC )
SET(CMAKE_C_COMPILER_LOADED 1)
SET(CMAKE_COMPILER_IS_MINGW )
SET(CMAKE_COMPILER_IS_CYGWIN )
IF(CMAKE_COMPILER_IS_CYGWIN)
  SET(CYGWIN 1)
  SET(UNIX 1)
ENDIF(CMAKE_COMPILER_IS_CYGWIN)

SET(CMAKE_C_COMPILER_ENV_VAR "CC")

IF(CMAKE_COMPILER_IS_MINGW)
  SET(MINGW 1)
ENDIF(CMAKE_COMPILER_IS_MINGW)
SET(CMAKE_C_COMPILER_ID_RUN 1)
SET(CMAKE_C_SOURCE_FILE_EXTENSIONS c)
SET(CMAKE_C_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
SET(CMAKE_C_LINKER_PREFERENCE 10)

# Save compiler ABI information.
SET(CMAKE_C_SIZEOF_DATA_PTR "8")
SET(CMAKE_C_COMPILER_ABI "ELF")
SET(CMAKE_C_LIBRARY_ARCHITECTURE "")

IF(CMAKE_C_SIZEOF_DATA_PTR)
  SET(CMAKE_SIZEOF_VOID_P "${CMAKE_C_SIZEOF_DATA_PTR}")
ENDIF(CMAKE_C_SIZEOF_DATA_PTR)

IF(CMAKE_C_COMPILER_ABI)
  SET(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_C_COMPILER_ABI}")
ENDIF(CMAKE_C_COMPILER_ABI)

IF(CMAKE_C_LIBRARY_ARCHITECTURE)
  SET(CMAKE_LIBRARY_ARCHITECTURE "")
ENDIF()

SET(CMAKE_C_HAS_ISYSROOT "")


SET(CMAKE_C_IMPLICIT_LINK_LIBRARIES "imf;svml;m;ipgo;decimal;irc;c;irc_s;dl;c")
SET(CMAKE_C_IMPLICIT_LINK_DIRECTORIES "/share/apps/modulessoftware/intel/compilers/11.1.059/lib/intel64;/share/apps/modulessoftware/intel/compilers/11.1.059/ipp/em64t/lib;/share/apps/modulessoftware/intel/compilers/11.1.059/mkl/lib/em64t;/share/apps/modulessoftware/intel/compilers/11.1.059/tbb/intel64/cc4.1.0_libc2.4_kernel2.6.16.21/lib;/usr/lib/gcc/x86_64-redhat-linux/4.1.2;/usr/lib64;/usr/lib;/lib64;/lib")
