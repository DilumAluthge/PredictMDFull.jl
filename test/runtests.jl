import PredictMDFull
import Test


Test.@testset "Unit tests           " begin
    testmodulea_filename::String = joinpath("TestModuleA", "TestModuleA.jl")
    testmoduleb_filename::String  = joinpath(
        "TestModuleB", "directory1", "directory2", "directory3",
        "directory4", "directory5", "TestModuleB.jl",
        )
    testmodulec_filename::String  = joinpath(mktempdir(), "TestModuleC.jl")
    rm(testmodulec_filename; force = true, recursive = true)
    open(testmodulec_filename, "w") do io
        write(io, "module TestModuleC end")
    end
    include(testmodulea_filename)
    include(testmoduleb_filename)
    include(testmodulec_filename)
    include(joinpath("test_package_directory.jl"))
    include(joinpath("test_version.jl"))
end

Test.@testset "Import PredictMDExtra" begin
    include(joinpath("test_import_predictmdextra.jl"))
end

Test.@testset "Import PredictMD     " begin
    include(joinpath("test_import_predictmd.jl"))
end
