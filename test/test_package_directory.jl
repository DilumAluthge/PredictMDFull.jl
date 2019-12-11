##### Beginning of file

Test.@test( isdir(PredictMDFull.package_directory()) )

Test.@test( isdir(PredictMDFull.package_directory("ci")) )

Test.@test( isdir(PredictMDFull.package_directory("ci", "travis")) )

Test.@test( isdir(PredictMDFull.package_directory(PredictMDFullTestModuleA)) )

Test.@test( isdir(PredictMDFull.package_directory(PredictMDFullTestModuleB)) )

Test.@test( isdir( PredictMDFull.package_directory(
            PredictMDFullTestModuleB, "directory2",
            ) ) )

Test.@test( isdir( PredictMDFull.package_directory(
            PredictMDFullTestModuleB, "directory2", "directory3",
            ) ) )

Test.@test_throws(
    ErrorException,
    PredictMDFull.package_directory(PredictMDFullTestModuleC),
    )

##### End of file
