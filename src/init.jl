##### Beginning of file

function __init__()::Nothing
    @info(string("This is PredictMDFull, version ", version()))
    @debug(string("PredictMDFull debugging messages are enabled"))
    @info(string("For help, please visit https://www.predictmd.net"))
    @info(string("PredictMDFull package directory: \"", pkg_dir(), "\""))
    return nothing
end

##### End of file
