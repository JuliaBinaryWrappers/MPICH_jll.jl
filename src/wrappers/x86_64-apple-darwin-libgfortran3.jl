# Autogenerated wrapper script for MPICH_jll for x86_64-apple-darwin-libgfortran3
export libmpi, libmpicxx, libmpifort, mpiexec

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("MPICH")
JLLWrappers.@declare_library_product(libmpi, "@rpath/libmpi.12.dylib")
JLLWrappers.@declare_library_product(libmpicxx, "@rpath/libmpicxx.12.dylib")
JLLWrappers.@declare_library_product(libmpifort, "@rpath/libmpifort.12.dylib")
JLLWrappers.@declare_executable_product(mpiexec)
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libmpi,
        "lib/libmpi.12.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmpicxx,
        "lib/libmpicxx.12.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libmpifort,
        "lib/libmpifort.12.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        mpiexec,
        "bin/mpiexec",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
