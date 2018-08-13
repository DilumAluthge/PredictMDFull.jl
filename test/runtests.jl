import PredictMDFull
import Test

Test.@testset "Unit tests           " begin
    Test.@test( Base.VERSION >= VersionNumber("1.0") )

    Test.@test( PredictMDFull.version() >= VersionNumber(0) )

    Test.@test( isdir(PredictMDFull.pkg_dir()) )
    Test.@test( isdir(PredictMDFull.pkg_dir("ci")) )
    Test.@test( isdir(PredictMDFull.pkg_dir("ci", "travis")) )
end

Test.@testset "Import PredictMDExtra" begin
    import PredictMDExtra
    Test.@test( isa(PredictMDExtra, Module) )
end

Test.@testset "Import PredictMD     " begin
    # import PredictMD
    # Test.@test( isa(PredictMD, Module) )
end
