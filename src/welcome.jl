##### Beginning of file

function print_welcome_message()::Nothing
    predictmdfull_version::VersionNumber = version()
    predictmdfull_pkgdir::String = pkg_dir()
    @info(string("This is PredictMDFull, version ",predictmdfull_version,))
    @info(string("For help, please visit https://www.predictmd.net",))
    @debug(string("PredictMDFull package directory: ",predictmdfull_pkgdir,))
    return nothing
end

##### End of file
