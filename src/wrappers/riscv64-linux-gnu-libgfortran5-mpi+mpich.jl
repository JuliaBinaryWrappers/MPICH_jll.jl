# Autogenerated wrapper script for MPICH_jll for riscv64-linux-gnu-libgfortran5-mpi+mpich
export libmpi, libmpicxx, libmpifort, mpiexec

using CompilerSupportLibraries_jll
using Hwloc_jll
JLLWrappers.@generate_wrapper_header("MPICH")
JLLWrappers.@declare_library_product(libmpi, "libmpi.so.12")
JLLWrappers.@declare_library_product(libmpicxx, "libmpicxx.so.12")
JLLWrappers.@declare_library_product(libmpifort, "libmpifort.so.12")
JLLWrappers.@declare_executable_product(mpiexec)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll, Hwloc_jll, MPIPreferences)
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
        mpiexec,
        "bin/mpiexec",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
