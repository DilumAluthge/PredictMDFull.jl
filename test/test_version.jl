##### Beginning of file

Test.@test( Base.VERSION >= VersionNumber("1.0") )

Test.@test( PredictMDFull.version() > VersionNumber(0) )

Test.@test(
    PredictMDFull.version() ==
        PredictMDFull.version(PredictMDFull)
    )

Test.@test(
    PredictMDFull.version() ==
        PredictMDFull.version(first(methods(PredictMDFull.eval)))
    )

Test.@test(
    PredictMDFull.version() ==
        PredictMDFull.version(PredictMDFull.eval)
    )

Test.@test(
    PredictMDFull.version() ==
        PredictMDFull.version(PredictMDFull.eval, (Any,))
    )

Test.@test( PredictMDFull.version(PredictMDFullTestModuleA) == VersionNumber("1.2.3") )

Test.@test( PredictMDFull.version(PredictMDFullTestModuleB) == VersionNumber("4.5.6") )

Test.@test_throws(
    ErrorException,
    PredictMDFull._TomlFile(joinpath(mktempdir(),"1","2","3","4")),
    )

##### End of file
