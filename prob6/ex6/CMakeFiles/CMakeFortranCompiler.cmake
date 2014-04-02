SET(CMAKE_Fortran_COMPILER "/share/apps/modulessoftware/intel/compilers/11.1.059/bin/intel64/ifort")
SET(CMAKE_Fortran_COMPILER_ARG1 "")
SET(CMAKE_Fortran_COMPILER_ID "Intel")
SET(CMAKE_Fortran_PLATFORM_ID "Linux")

SET(CMAKE_AR "/usr/bin/ar")
SET(CMAKE_RANLIB "/usr/bin/ranlib")
SET(CMAKE_COMPILER_IS_GNUG77 )
SET(CMAKE_Fortran_COMPILER_LOADED 1)
SET(CMAKE_COMPILER_IS_MINGW )
SET(CMAKE_COMPILER_IS_CYGWIN )
IF(CMAKE_COMPILER_IS_CYGWIN)
  SET(CYGWIN 1)
  SET(UNIX 1)
ENDIF(CMAKE_COMPILER_IS_CYGWIN)

SET(CMAKE_Fortran_COMPILER_ENV_VAR "FC")

SET(CMAKE_Fortran_COMPILER_SUPPORTS_F90 1)

IF(CMAKE_COMPILER_IS_MINGW)
  SET(MINGW 1)
ENDIF(CMAKE_COMPILER_IS_MINGW)
SET(CMAKE_Fortran_COMPILER_ID_RUN 1)
SET(CMAKE_Fortran_SOURCE_FILE_EXTENSIONS f;F;f77;F77;f90;F90;for;For;FOR;f95;F95)
SET(CMAKE_Fortran_IGNORE_EXTENSIONS h;H;o;O;obj;OBJ;def;DEF;rc;RC)
SET(CMAKE_Fortran_LINKER_PREFERENCE 20)
IF(UNIX)
  SET(CMAKE_Fortran_OUTPUT_EXTENSION .o)
ELSE(UNIX)
  SET(CMAKE_Fortran_OUTPUT_EXTENSION .obj)
ENDIF(UNIX)

# Save compiler ABI information.
SET(CMAKE_Fortran_SIZEOF_DATA_PTR "")
SET(CMAKE_Fortran_COMPILER_ABI "ELF")
SET(CMAKE_Fortran_LIBRARY_ARCHITECTURE "")

IF(CMAKE_Fortran_SIZEOF_DATA_PTR AND NOT CMAKE_SIZEOF_VOID_P)
  SET(CMAKE_SIZEOF_VOID_P "${CMAKE_Fortran_SIZEOF_DATA_PTR}")
ENDIF()

IF(CMAKE_Fortran_COMPILER_ABI)
  SET(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_Fortran_COMPILER_ABI}")
ENDIF(CMAKE_Fortran_COMPILER_ABI)

IF(CMAKE_Fortran_LIBRARY_ARCHITECTURE)
  SET(CMAKE_LIBRARY_ARCHITECTURE "")
ENDIF()

SET(CMAKE_Fortran_IMPLICIT_LINK_LIBRARIES "ifport;ifcore;imf;svml;m;ipgo;intlc;pthread;c;irc_s;dl;c")
SET(CMAKE_Fortran_IMPLICIT_LINK_DIRECTORIES "/share/apps/modulessoftware/intel/compilers/11.1.059/lib/intel64;/share/apps/modulessoftware/intel/compilers/11.1.059/ipp/em64t/lib;/share/apps/modulessoftware/intel/compilers/11.1.059/mkl/lib/em64t;/share/apps/modulessoftware/intel/compilers/11.1.059/tbb/intel64/cc4.1.0_libc2.4_kernel2.6.16.21/lib;/usr/lib/gcc/x86_64-redhat-linux/4.1.2;/usr/lib64;/usr/lib;/lib64;/lib")
