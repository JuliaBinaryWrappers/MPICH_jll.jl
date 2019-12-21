# Autogenerated wrapper script for MPICH_jll for aarch64-linux-gnu
export libmpi

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libmpi`
const libmpi_splitpath = ["lib", "libmpi.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmpi_path = ""

# libmpi-specific global declaration
# This will be filled out by __init__()
libmpi_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmpi = "libmpi.so.12"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"MPICH")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global libmpi_path = normpath(joinpath(artifact_dir, libmpi_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmpi_handle = dlopen(libmpi_path)
    push!(LIBPATH_list, dirname(libmpi_path))

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

