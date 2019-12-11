import Test

Test.@testset "PredictMDFull.jl" begin
    import InteractiveUtils # stdlib
    import Pkg # stdlib
    import Test # stdlib

    @debug(string("Julia depot paths: "), Base.DEPOT_PATH)
    @debug(string("Julia load paths: "), Base.LOAD_PATH)
    
    InteractiveUtils.versioninfo(verbose=true)

    @debug(string("Attempting to import PredictMDFull...",))
    import PredictMDFull
    @debug(string("Successfully imported PredictMDFull.",))
    @debug(string("PredictMDFull version: "),PredictMDFull.version(),)
    @debug(string("PredictMDFull package directory: "),PredictMDFull.package_directory(),)

    PredictMDFull.import_all()

    @debug(string("Julia depot paths: "), Base.DEPOT_PATH)
    @debug(string("Julia load paths: "), Base.LOAD_PATH)

    Test.@testset "Unit tests           " begin
        testmodulea_filename::String = joinpath("PredictMDFullTestModuleA", "PredictMDFullTestModuleA.jl")
        testmoduleb_filename::String  = joinpath(
            "PredictMDFullTestModuleB", "directory1", "directory2", "directory3",
            "directory4", "directory5", "PredictMDFullTestModuleB.jl",
            )
        testmodulec_filename::String  = joinpath(mktempdir(), "PredictMDFullTestModuleC.jl")
        rm(testmodulec_filename; force = true, recursive = true)
        open(testmodulec_filename, "w") do io
            write(io, "module PredictMDFullTestModuleC end")
        end
        include(testmodulea_filename)
        include(testmoduleb_filename)
        include(testmodulec_filename)
        include(joinpath("test_package_directory.jl"))
        include(joinpath("test_package_list.jl"))
        include(joinpath("test_registry_url_list.jl"))
        include(joinpath("test_version.jl"))
    end

    Test.@testset "Import PredictMDExtra" begin
        import PredictMDExtra
    end

    Test.@testset "Import PredictMD     " begin
        import PredictMD
    end

    Test.@testset "Test import_all()" begin
        include(joinpath("test_import_all.jl"))
    end
end
