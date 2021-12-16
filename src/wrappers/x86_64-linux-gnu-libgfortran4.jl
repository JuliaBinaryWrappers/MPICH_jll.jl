# Autogenerated wrapper script for MPICH_jll for x86_64-linux-gnu-libgfortran4
export generate_compile_time_mpi_constants, libload_time_mpi_constants, libmpi, libmpicxx, libmpifort, mpiexec

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("MPICH")
JLLWrappers.@declare_library_product(libload_time_mpi_constants, "libload_time_mpi_constants.so")
JLLWrappers.@declare_library_product(libmpi, "libmpi.so.12")
JLLWrappers.@declare_library_product(libmpicxx, "libmpicxx.so.12")
JLLWrappers.@declare_library_product(libmpifort, "libmpifort.so.12")
JLLWrappers.@declare_executable_product(generate_compile_time_mpi_constants)
JLLWrappers.@declare_executable_product(mpiexec)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libload_time_mpi_constants,
        "lib/libload_time_mpi_constants.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmpi,
        "lib/libmpi.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmpicxx,
        "lib/libmpicxx.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmpifort,
        "lib/libmpifort.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        generate_compile_time_mpi_constants,
        "bin/generate_compile_time_mpi_constants",
    )

    JLLWrappers.@init_executable_product(
        mpiexec,
        "bin/mpiexec",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
