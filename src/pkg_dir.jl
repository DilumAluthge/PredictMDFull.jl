##### Beginning of file

"""
"""
function pkg_dir end

function pkg_dir()::String
    pkg_dir_filename = @__FILE__ # PredictMDFull/src/pkg_dir.jl
    src_directory = dirname(pkg_dir_filename) # PredictMDFull/src
    predictmdfull_root_directory = dirname(src_directory) # PredictMDFull
    return predictmdfull_root_directory
end

function pkg_dir(parts...)::String
    predictmdfull_root_directory = pkg_dir()
    result = joinpath(predictmdfull_root_directory, parts...)
    return result
end

##### End of file
