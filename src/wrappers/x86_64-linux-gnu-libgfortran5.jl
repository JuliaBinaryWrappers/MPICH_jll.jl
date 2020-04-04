# Autogenerated wrapper script for MPICH_jll for x86_64-linux-gnu-libgfortran5
export libmpicxx, libmpifort, libmpi, mpiexec

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libmpicxx`
const libmpicxx_splitpath = ["lib", "libmpicxx.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmpicxx_path = ""

# libmpicxx-specific global declaration
# This will be filled out by __init__()
libmpicxx_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmpicxx = "libmpicxx.so.12"


# Relative path to `libmpifort`
const libmpifort_splitpath = ["lib", "libmpifort.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmpifort_path = ""

# libmpifort-specific global declaration
# This will be filled out by __init__()
libmpifort_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmpifort = "libmpifort.so.12"


# Relative path to `libmpi`
const libmpi_splitpath = ["lib", "libmpi.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmpi_path = ""

# libmpi-specific global declaration
# This will be filled out by __init__()
libmpi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmpi = "libmpi.so.12"


# Relative path to `mpiexec`
const mpiexec_splitpath = ["bin", "mpiexec"]

# This will be filled out by __init__() for all products, as it must be done at runtime
mpiexec_path = ""

# mpiexec-specific global declaration
function mpiexec(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(mpiexec_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"MPICH")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libmpicxx_path = normpath(joinpath(artifact_dir, libmpicxx_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmpicxx_handle = dlopen(libmpicxx_path)
    push!(LIBPATH_list, dirname(libmpicxx_path))

    global libmpifort_path = normpath(joinpath(artifact_dir, libmpifort_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmpifort_handle = dlopen(libmpifort_path)
    push!(LIBPATH_list, dirname(libmpifort_path))

    global libmpi_path = normpath(joinpath(artifact_dir, libmpi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmpi_handle = dlopen(libmpi_path)
    push!(LIBPATH_list, dirname(libmpi_path))

    global mpiexec_path = normpath(joinpath(artifact_dir, mpiexec_splitpath...))

    push!(PATH_list, dirname(mpiexec_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

